# 🚀 n8n Enterprise & AI Otomasyon Kütüphanesi (Keystone Architecture v2)

Bu depo, **Keystone Engineering Framework** (`/spec`, `/design`, `/build`, `/secure`, `/verify`) standartları temel alınarak baştan sona yenilenmiş, hataları giderilmiş, kategorize edilmiş ve doğrudan **Docker Compose** ile ayağa kaldırılarak tek komutla içeri aktarılabilir hale getirilmiş **287 adet çalışır n8n otomasyonu** içerir.

## 🎯 Neler Yenilendi ve Onarıldı? (Keystone Modernizasyon Özeti)

Orijinal depodaki 295 dosya üzerinde yapılan statik analiz, şema denetimi ve güvenlik taraması sonucunda aşağıdaki mühendislik iyileştirmeleri uygulanmıştır:

1. **Dosya Formatı ve Kategorik Mimari**:
   * Tek bir dizinde `.txt` uzantısıyla, boşluklu ve özel karakterli isimlerle duran tüm otomasyonlar **11 fonksiyonel kategori klasörü** altında standart `kebab-case.json` formatına taşındı.
   * İçeriği tamamen boş olan `ALL_unique_nodes.txt` (0 byte) ve `what do you want ? take it` yazılı ilkel `README.md` temizlendi.
2. **Bozuk JSON Dosyalarının Onarımı (9 Adet)**:
   * Dosya sonuna yanlışlıkla başlık metni yapıştırıldığı veya aynı JSON içeriği 2-4 kez üst üste eklendiği için n8n'e import edilemeyen 9 otomasyon (`AI Agent to chat with Airtable and analyze data`, `AI-Driven Lead Management with ERPNext`, `Automate Competitor Research with Exa.ai`, `Detect toxic language in Telegram messages`, `Host Your Own AI Deep Research Agent with OpenAI o3`, `Parse PDF with LlamaParse`, `Recipe Recommendations with Qdrant`, `lemlist GPT-3 sales workflows`, `Perplexity Research to HTML`) ayrıştırılarak geçerli JSON şemasına kavuşturuldu.
3. **Yanlışlıkla Ezilmiş Otomasyonun Sıfırdan İnşası (1 Adet)**:
   * Orijinal repoda `Automated Hugging Face Paper Summary Fetching & Categorization Workflow.txt` dosyasının içine yanlışlıkla `[3/3] Anomaly detection tool (crops dataset)` JSON'ı kaydedilmişti. Bu otomasyon, Hugging Face `daily_papers` API'sini okuyup `gpt-4o-mini` ve `Structured Output Parser` ile makaleleri özetleyip kategorize eden gerçek bir iş akışı olarak (`workflows/08-databases-sql-and-workspace/automated-hugging-face-paper-summary-categorization.json`) baştan yazıldı.
4. **Kopya ve İlkel/Ölü Otomasyonların Ayıklanması (12 Adet)**:
   * Sonunda `(1).txt` bulunan veya dosya adı iki kez yazılmış olan **11 adet birebir kopya (duplicate)** dosya temizlendi.
   * **Emekliye Ayrılan Otomasyon (`Update Twitter banner using HTTP request.txt`)**: Hem n8n 1.x'te kaldırılmış olan `n8n-nodes-base.start` düğümünü kullanması, hem kapatılmış Twitter v1.1 API'sini çağırması, hem de repodaki `Create dynamic Twitter profile banner` akışının ilkel bir tekrarı olması nedeniyle kaldırıldı.
5. **Çalışma Zamanı (Runtime) Kırık Düğüm Referanslarının Onarımı (3 Adet)**:
   * Düğüm isimleri değiştirildiği halde ifadelerde (expressions) eski düğüm adları kaldığı için çalışma anında çöken 3 otomasyondaki referanslar düzeltildi:
     * `Handling Appointment Leads and Follow-up With Twilio, Cal.com and AI`: `$('Appointment Scheduling Agent')` $ightarrow$ `$('Appointment Scheduling Agent1')`
     * `AI Agent for realtime insights on meetings`: `$('Webhook2')` $ightarrow$ `$('Scenario 2 Start - Webhook')` ve `$('Webhook')` $ightarrow$ `$('Scenario 1 Start - Edit Fields')`
     * `Receive Daily Market News from FT.com to your Microsoft outlook inbox`: `$('HTML')` $ightarrow$ `$('Extract specific content')`
6. **Eski Düğümlerin ve Kapatılmış OpenAI API/Modellerinin Yükseltilmesi**:
   * Kullanımdan kalkmış `n8n-nodes-base.function` ve `n8n-nodes-base.functionItem` düğümleri modern **`n8n-nodes-base.code` (`typeVersion: 2`)** düğümüne dönüştürüldü.
   * OpenAI tarafından Ocak 2024'te kapatılan `/v1/engines/text-davinci-001/completions`, `/v1/completions` (`text-davinci-003`) ve `/v1/edits` uç noktalarını çağıran eski `n8n-nodes-base.openAi` (v1) düğümleri **`resource: "chat"` (`gpt-4o-mini`)** yapısına taşındı.
   * `gpt-3.5-turbo`, `gpt-4-0613`, `gpt-4-1106-preview` ve `gpt-4-vision-preview` model referansları **`gpt-4o`** ve **`gpt-4o-mini`** modellerine güncellendi.
   * n8n 1.78 öncesi geçici çözüm olan `Use OpenRouter in n8n versions _1.78.txt`, yerleşik `@n8n/n8n-nodes-langchain.lmChatOpenRouter` düğümünü kullanan `openrouter-multi-llm-dynamic-model-router.json` şablonuna yükseltildi.
7. **n8n CLI & Docker Import Şema Standardizasyonu**:
   * Üst düzey `name` alanı eksik olan **134 iş akışına** temiz başlıklar eklendi (`n8n import:workflow` sırasında `"Unnamed workflow"` oluşması engellendi).
   * Düğüm `id` alanı eksik olan **13 iş akışındaki 100 düğüme** deterministik UUID atandı.
   * Bozuk `credentials` formatına sahip **7 iş akışındaki 24 düğüm** standart n8n nesne şemasına (`{"id": "...", "name": "..."}`) dönüştürüldü.
8. **Güvenlik Zafiyetlerinin Giderilmesi (Keystone `/secure`)**:
   * `Automate Pinterest Analysis` içinde unutulmuş olan gerçek Pinterest Bearer token temizlenerek `{{ $env.PINTEREST_ACCESS_TOKEN }}` değişkenine bağlandı.
   * `Organise Your Local File Directories With AI` içerisindeki `executeCommand` düğümünde dosya isimlerinden kaynaklanan **Command Injection (RCE)** zafiyeti Python `os.path.basename` / `shutil` izolasyonu ile kapatıldı.
   * `Query n8n Credentials with AI SQL Agent` içerisindeki SQLite bağlantısı **Read-Only URI (`mode=ro`)** ve yalnızca `SELECT` sorgularına izin veren güvenlik filtresiyle koruma altına alındı.

## 🌟 Yeni Eklenen Keystone Core Otomasyonları (`workflows/00-keystone-core-ops/`)

"Bu otomasyon repoda yok, olsa çok daha iyi olur" kapsamındaki inceleme sonucunda, kurumsal bir n8n altyapısında mutlaka bulunması gereken **6 yeni üretim (production) otomasyonu** sıfırdan tasarlanarak repoya dahil edilmiştir:

| Dosya Adı | Otomasyonun Amacı ve Keystone Prensibi |
| :--- | :--- |
| `keystone-global-error-handler-dlq.json` | **Merkezi Hata Yakalayıcı, AI Kök Neden Analizi (RCA) & Dead-Letter Queue**: Tüm iş akışlarındaki hataları `errorTrigger` ile yakalar, `gpt-4o-mini` ile hatanın kök nedenini ve çözümünü analiz eder, Slack/Webhook bildirimi atar ve DLQ kaydı oluşturur. |
| `keystone-automated-workflow-git-backup.json` | **Otomatik GitOps Workflow Yedekleme & Sır Temizleyici**: Her gece 02:00'de n8n API'si üzerinden tüm iş akışlarını çeker, olası unutulmuş API anahtarlarını maskeler, SHA-256 fark kontrolü yapar ve GitHub'a yedekler. |
| `keystone-ai-guardrail-pii-prompt-firewall.json` | **AI Güvenlik Duvarı (Prompt Injection & KVKK/GDPR PII Maskeleme)**: Kullanıcı mesajlarını LLM'e gitmeden önce tarar; T.C. Kimlik No, IBAN, Kredi Kartı, Telefon ve E-posta verilerini maskeler ve Prompt Injection/Jailbreak girişimlerini HTTP 403 ile engeller. |
| `keystone-webhook-hmac-rate-limit-gateway.json` | **Kurumsal Webhook Gateway (HMAC-SHA256 & Idempotency)**: Dış servislerden gelen webhook isteklerinde `X-Signature-256` kriptografik imza doğrulaması yapar; geçersiz istekleri RFC 7807 standart hata formatında (`401 Unauthorized`) reddeder. |
| `keystone-llm-cost-latency-telemetry-monitor.json` | **LLM FinOps Maliyet, Token Bütçesi ve Gecikme (SLA) İzleyici**: OpenAI, Anthropic, Gemini ve DeepSeek çağrılarının token maliyetini (USD) ve yanıt süresini (ms) hesaplar; bütçe veya gecikme SLA'i (>8000ms) aşıldığında uyarı gönderir. |
| `keystone-multi-agent-supervisor-router.json` | **Multi-Agent Supervisor & İnsan Onayı (Human-in-the-Loop) Kapısı**: Kullanıcı taleplerini uzman alt ajanlara yönlendirir; silme, ödeme veya toplu bildirim gibi geri alınamaz (irreversible) aksiyonları otomatik çalıştırmak yerine insan onayına bekletir. |

## 📂 Klasör ve Kategori Yapısı (287 Otomasyon)

| Kategori Klasörü | Otomasyon Sayısı | Kapsam ve Entegrasyonlar |
| :--- | :---: | :--- |
| `workflows/00-keystone-core-ops` | **6** | Global Error Handler & DLQ, GitOps Backup, AI PII/Prompt Firewall, HMAC Gateway, FinOps Telemetry, Supervisor Router |
| `workflows/01-ai-rag-and-knowledge-bases` | **43** | Qdrant, Pinecone, Supabase PGVector, PDF/Google Drive/Notion/Confluence RAG Asistanları |
| `workflows/02-chatbots-messaging-and-voice` | **53** | Telegram, WhatsApp, Slack, Discord, Line, Mattermost, ElevenLabs ve OpenAI Sesli Botlar |
| `workflows/03-email-calendar-and-productivity` | **30** | Gmail, Outlook, IMAP, Fastmail, Google Calendar, Zoom/Fireflies Toplantı Özetleme ve Görev Yönetimi |
| `workflows/04-content-social-media-and-seo` | **47** | WordPress, YouTube, Instagram, X (Twitter), LinkedIn, Pinterest, TikTok, FLUX/DALL-E Görsel ve SEO |
| `workflows/05-crm-sales-and-customer-support` | **21** | Pipedrive, HubSpot, ERPNext, Lemlist, WooCommerce, Linear, Zendesk Müşteri Desteği ve Lead Puanlama |
| `workflows/06-hr-recruitment-and-operations` | **11** | CV/Özgeçmiş PDF Analizi, Aday Eleme, Mülakat Formları, BambooHR ve İş Yeri Analitiği |
| `workflows/07-data-extraction-scraping-and-documents` | **27** | Jina AI, Apify, ScrapingBee, LlamaParse, Gotenberg PDF/Fatura/Banka Ekstresi Okuma ve ETL |
| `workflows/08-databases-sql-and-workspace` | **14** | PostgreSQL, SQLite, MongoDB, Supabase, Airtable, Baserow, NocoDB, Notion ve Google Sheets Ajanları |
| `workflows/09-devops-security-and-it-ops` | **8** | SIEM MITRE ATT&CK, Qualys, Venafi, Proxmox AI Agent, GitLab MR Kod İnceleme, Görsel Regresyon Testi |
| `workflows/10-ai-agents-research-and-llm-core` | **27** | OpenAI o3/GPT-4o Deep Research, DeepSeek R1/V3, Gemini 2.0, Claude 3.5, OpenRouter ve Yerel Ollama |
| **TOPLAM** | **287** | **%100 Şema Doğrulanmış, n8n 1.x ve Docker Uyumlu JSON İş Akışı** |

> 📌 **Tüm 287 otomasyonun tek tek dosya yollarını, düğüm sayılarını ve yapılan onarımları görmek için [`CATALOG.md`](./CATALOG.md) dosyasına göz atabilirsiniz.**

## 🐳 Docker ile Hızlı Kurulum ve Otomasyonları İçeri Aktarma (Import)

Depo içerisinde **PostgreSQL 16**, **Redis 7**, **n8n (latest)** ve tüm klasörlerdeki iş akışlarını tek komutla içeri aktaran hazır `docker-compose.yml` ve yardımcı scriptler yer almaktadır.

### 1. Ortam Değişkenlerini Hazırlayın

```bash
cp .env.example .env
# İhtiyacınıza göre .env dosyasındaki şifreleme ve API anahtarlarını düzenleyin
```

### 2. Docker Servislerini Ayağa Kaldırın

```bash
docker compose up -d postgres redis n8n
# Veya Makefile ile:
make up
```

Tarayıcınızdan **`http://localhost:5678`** adresine giderek n8n yönetici hesabınızı oluşturun.

### 3. Otomasyonları n8n İçerisine Aktarın (3 Farklı Yöntem)

* **Yöntem A — Tek Komutla Tüm 287 Otomasyonu İçeri Aktarma (CLI):**
  ```bash
  docker compose exec -T n8n /bin/sh /scripts/import-workflows.sh
  # Veya Makefile ile:
  make import
  ```
* **Yöntem B — Yalnızca Seçtiğiniz Bir Kategoriyi İçeri Aktarma:**
  ```bash
  # Örn: Yalnızca Keystone Core veya RAG otomasyonlarını içeri aktarmak için:
  docker compose exec -T n8n n8n import:workflow --separate --input=/workflows/00-keystone-core-ops
  docker compose exec -T n8n n8n import:workflow --separate --input=/workflows/01-ai-rag-and-knowledge-bases
  ```
* **Yöntem C — n8n Arayüzünden (UI) Tekil Import:**
  n8n arayüzünde sağ üstteki **`...` $ightarrow$ `Import from File...`** menüsünden `workflows/<kategori>/<otomasyon>.json` dosyasını seçerek istediğiniz otomasyonu tek tek yükleyebilirsiniz.

### 4. Şema ve Güvenlik Doğrulama Testini Çalıştırma (`Keystone /verify`)

Yeni bir otomasyon eklediğinizde veya değişiklik yaptığınızda tüm deponun n8n şema kurallarına, bağlantı bütünlüğüne ve güvenlik kısıtlamalarına (`CONSTRAINTS.md`) uyup uymadığını test etmek için:

```bash
python3 scripts/validate-workflows.py
# Veya:
make validate
```

## 📚 Ek Dokümantasyon

* **[`ARCHITECTURE.md`](./ARCHITECTURE.md)**: Keystone mimari kararları, katman topolojisi ve `00-keystone-core-ops` detayları.
* **[`CONSTRAINTS.md`](./CONSTRAINTS.md)**: Projede uygulanan zorunlu şema, düğüm ve güvenlik kuralları.
* **[`CATALOG.md`](./CATALOG.md)**: 11 kategori altındaki 287 otomasyonun tam listesi.
