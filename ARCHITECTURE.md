# Keystone n8n Otomasyon Mimarisi (`ARCHITECTURE.md`)

Bu doküman, deponun **Keystone Engineering Framework** prensipleriyle nasıl yeniden yapılandırıldığını, mimari karar kayıtlarını (ADR) ve çalışma zamanı topolojisini açıklar.

## 1. Mimari Dönüşüm Özeti (Önce vs. Sonra)

| Boyut | Eski Durum (`otomasyon-all-main`) | Yeni Durum (Keystone Modern v2) |
| :--- | :--- | :--- |
| **Dosya Formatı & İsimlendirme** | Tek klasörde 293 adet `.txt` uzantılı, boşluklu ve emojili dosya adı | 11 kategorik klasör altında 287 adet temiz `kebab-case.json` iş akışı |
| **JSON & Şema Sağlığı** | 9 bozuk JSON (sonuna metin yapışmış / 2x-4x tekrarlanmış), 134 isimsiz (`name` eksik) iş akışı | %100 doğrulanmış JSON, tam `id`, `name`, `settings.executionOrder: "v1"` ve geçerli `credentials` şeması |
| **Çalışma Zamanı Hataları** | 3 iş akışında kırık düğüm referansı (`$('Webhook2')`, `$('HTML')`, `$('Appointment Scheduling Agent')`) | Tüm düğüm referansları ve bağlantı grafikleri (`connections`) onarıldı |
| **Eski Düğümler & Ölü API'ler** | `text-davinci-001`, `/v1/completions`, `function`, `functionItem`, `start` düğümleri | Tamamı `n8n-nodes-base.code` (v2), `gpt-4o` / `gpt-4o-mini` ve Chat Completions mimarisine yükseltildi |
| **Güvenlik (Security)** | Sızmış Pinterest Bearer token, `executeCommand` RCE zafiyeti, korumasız SQL Agent | Tokenlar `$env` değişkenlerine taşındı, RCE ve SQLi zafiyetleri izole edildi, AI Guardrail güvenlik duvarı eklendi |
| **Operasyonel Dayanıklılık** | Hata yakalama, yedekleme veya telemetri yok | `00-keystone-core-ops` altında merkezi DLQ hata yakalayıcı, GitOps yedekleme, FinOps maliyet izleyici ve HMAC Gateway |
| **Konteyner & Kurulum** | Docker desteği yok | PostgreSQL 16 + Redis 7 + n8n + tek komutla 287 akışı içeri aktaran `docker-compose.yml` ve `Makefile` |

## 2. Katmanlı Kategori Topolojisi

```text
n8n-otomasyon-keystone/
├── docker-compose.yml                  # PostgreSQL 16 + Redis 7 + n8n + otomatik importer
├── .env.example                        # Ortam değişkenleri şablonu
├── Makefile                            # Tek komutla kurulum, import ve doğrulama hedefleri
├── README.md                           # Ana kullanım ve kurulum kılavuzu
├── ARCHITECTURE.md                     # Mimari tasarım ve ADR dokümanı
├── CONSTRAINTS.md                      # Keystone kısıtlamaları ve kalite kuralları
├── CATALOG.md                          # 287 otomasyonun tam indeksi
├── scripts/
│   ├── import-workflows.sh             # Tüm kategorileri n8n'e aktaran CLI scripti
│   ├── export-workflows.sh             # Mevcut iş akışlarını yedekleyen CLI scripti
│   └── validate-workflows.py           # Keystone /verify statik analiz ve şema doğrulayıcı
└── workflows/
    ├── 00-keystone-core-ops/                   # (6 Akış) Merkezi Hata/DLQ, GitOps Backup, AI Firewall, HMAC Gateway, FinOps, Supervisor
    ├── 01-ai-rag-and-knowledge-bases/          # (43 Akış) Qdrant, Pinecone, PGVector, PDF/Drive/Notion RAG
    ├── 02-chatbots-messaging-and-voice/        # (53 Akış) Telegram, WhatsApp, Slack, Discord, ElevenLabs/Sesli Botlar
    ├── 03-email-calendar-and-productivity/     # (30 Akış) Gmail, Outlook, IMAP, Google Calendar, Toplantı Asistanları
    ├── 04-content-social-media-and-seo/        # (47 Akış) WordPress, YouTube, Instagram, X, SEO, FLUX/DALL-E
    ├── 05-crm-sales-and-customer-support/      # (21 Akış) Pipedrive, HubSpot, ERPNext, WooCommerce, Linear, Zendesk
    ├── 06-hr-recruitment-and-operations/       # (11 Akış) CV Analizi, Aday Değerlendirme, Mülakat, BambooHR
    ├── 07-data-extraction-scraping-and-documents/ # (27 Akış) Web Kazıma (Jina/Apify), Fatura/Ekstre OCR, PII Maskeleme
    ├── 08-databases-sql-and-workspace/         # (13 Akış) Text-to-SQL, Postgres, Supabase, Airtable, Baserow, Notion
    ├── 09-devops-security-and-it-ops/          # (8 Akış) SIEM/MITRE ATT&CK, Qualys, Proxmox, GitLab MR İnceleme
    └── 10-ai-agents-research-and-llm-core/     # (28 Akış) Deep Research, OpenAI o3/GPT-4o, DeepSeek R1, Gemini 2.0, Ollama
```

## 3. Keystone Core Operasyon Katmanı (`00-keystone-core-ops`)

Üretim ortamında (production) çalışan her n8n kurulumunun sessiz hataları (silent failures) önlemek, güvenliği sağlamak ve maliyetleri kontrol etmek için ihtiyaç duyduğu 6 temel altyapı otomasyonu sıfırdan tasarlanmıştır:

1. **`keystone-global-error-handler-dlq.json`**: Tüm iş akışlarının `settings.errorWorkflow` alanında referans verilen merkezi hata yakalayıcıdır. Bir akış çöktüğünde hatayı yakalar, `gpt-4o-mini` ile kök neden analizi (RCA) yapar, Slack/Webhook üzerinden uyarı gönderir ve kaydı Dead-Letter Queue (DLQ) formatında saklar.
2. **`keystone-automated-workflow-git-backup.json`**: Her gece 02:00'de n8n REST API üzerinden tüm iş akışlarını çeker, olası sızmış anahtarları maskeler ve SHA-256 özetiyle GitHub deposuna commit eder.
3. **`keystone-ai-guardrail-pii-prompt-firewall.json`**: Kullanıcı girdilerini LLM'e göndermeden önce T.C. Kimlik No, IBAN, Kredi Kartı, Telefon ve E-posta verilerini KVKK/GDPR uyumlu olarak maskeler (`[MASKED_TCKN]`, `[MASKED_IBAN]`) ve Prompt Injection saldırılarını HTTP 403 ile engeller.
4. **`keystone-webhook-hmac-rate-limit-gateway.json`**: Dış sistemlerden gelen webhook çağrılarında `crypto.timingSafeEqual` ile `X-Signature-256` HMAC-SHA256 doğrulaması ve Idempotency anahtarı üretimi sağlar.
5. **`keystone-llm-cost-latency-telemetry-monitor.json`**: Model bazlı (GPT-4o, DeepSeek, Claude, Gemini) token maliyetini ve yanıt süresini (ms) hesaplayarak SLA veya bütçe aşımında FinOps uyarısı üretir.
6. **`keystone-multi-agent-supervisor-router.json`**: Gelen talepleri uzman ajanlara yönlendirirken yıkıcı/geri alınamaz (silme, ödeme, toplu gönderim) işlemleri otomatik çalıştırmak yerine insan onayına (`PENDING_HUMAN_APPROVAL`) bekletir.
