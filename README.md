<p align="center">
  <img src="https://raw.githubusercontent.com/n8n-io/n8n/master/assets/n8n-logo.png" alt="n8n Logo" width="300" />
</p>

<h1 align="center">⚡ n8n Ultimate AI & Enterprise Automation Hub</h1>

<p align="center">
  <b>285+ Production-Ready Otomasyon • 11 Modüler Kategori • Sıfır Kodlama Sürtünmesi</b><br>
  <i>İşletmenizi, SaaS operasyonlarınızı ve yapay zeka ajanlarınızı kendi sunucunuzda dakikalar içinde otonom hale getirin.</i>
</p>

<p align="center">
  <a href="#-hızlı-kurulum-rehberi-60-saniye"><img src="https://img.shields.io/badge/Workflows-287%20Verified-EA4B71?style=for-the-badge&logo=n8n&logoColor=white" alt="Workflows" /></a>
  <a href="#-mimari-standartlar-keystone-framework"><img src="https://img.shields.io/badge/Architecture-Keystone%20v2-success?style=for-the-badge" alt="Architecture" /></a>
  <a href="#-docker-ile-tek-komutla-ayağa-kaldırma"><img src="https://img.shields.io/badge/Docker-Postgres%20%2B%20Redis-2496ED?style=for-the-badge&logo=docker&logoColor=white" alt="Docker" /></a>
  <img src="https://img.shields.io/badge/AI%20Stack-OpenAI%20%7C%20DeepSeek%20%7C%20Gemini%20%7C%20Claude-FF6F61?style=for-the-badge" alt="AI Stack" />
  <img src="https://img.shields.io/badge/License-MIT-3DA639?style=for-the-badge" alt="License" />
</p>

<p align="center">
  <img src="https://raw.githubusercontent.com/n8n-io/n8n/master/assets/n8n-screenshot.png" alt="n8n Workflow Canvas Editor" width="100%" style="border-radius: 12px; box-shadow: 0 8px 30px rgba(0,0,0,0.25);" />
</p>

---

## 🎯 Vizyonumuz: Neden Bu Repoya İhtiyacınız Var?

Günümüz dijital dünyasında rekabet avantajı sağlamanın tek yolu operasyonel yükü insan üzerinden alıp akıllı, birbirine bağlı sistemlere devretmektir. Ancak internette veya topluluk forumlarında paylaşılan n8n şablonlarının büyük bir kısmı:

* ❌ **Bozuk bağlantılar ve eksik şemalar** nedeniyle n8n'e aktarılamaz,
* ❌ **Kapatılmış eski API versiyonlarını** (`text-davinci`, Twitter v1.1 vb.) çağırır ve çöker,
* ❌ **Açıkta bırakılmış API anahtarları** ile siber güvenlik açığı yaratır,
* ❌ **Hata yönetimi ve telemetrisi olmadığı için** patladığında sessizce durur (silent failure).

Bu kütüphane; **Keystone Engineering Framework** prensipleriyle baştan aşağı refactor edilmiş, şeması doğrulanmış, production testlerinden geçmiş ve tek komutla içe aktarılabilen **287 adet çalışır otomasyonu** hazır bir altyapıyla sunar.

> 💰 **Yatırım Getirisi (ROI):** Bir yazılım ekibine veya ajansa yüz binlerce lira ve aylar harcatacak entegrasyon altyapısını, tek bir Docker komutuyla **dakikalar içinde** şirketinizin kullanımına açar.

---

## 🏗️ Keystone Enterprise Automation Stack

Tüm otomasyonlar, kurumsal veri gizliliğini korumak ve kesintisiz çalışmayı garanti altına almak için katmanlı bir mimari üzerinde koşar:

```text
┌────────────────────────────────────────────────────────────────────────────────────────┐
│                               KEYSTONE ENTERPRISE ARCHITECTURE                         │
├────────────────────────────────────────────────────────────────────────────────────────┤
│                                                                                        │
│   📥 TETİKLEYİCİLER (TRIGGERS)                                                         │
│   Webhook Gateway (HMAC-SHA256) • Telegram • WhatsApp • Gmail • Form • Cron Schedule   │
│                                           │                                            │
│                                           ▼                                            │
│   🛡️ GÜVENLİK VE KVKK/GDPR DUVARI (AI FIREWALL)                                        │
│   Deterministic PII Masking (TCKN, IBAN, Kart, Tel) • Anti-Prompt Injection Filter     │
│                                           │                                            │
│                                           ▼                                            │
│   🧠 AKILLI ORKESTRASYON & AJAN MOTORU (AGENT CORE)                                    │
│   Multi-Agent Supervisor Router • Qdrant/Pinecone RAG • Structured Output Parser       │
│   [ OpenAI o3/GPT-4o ] ── [ DeepSeek R1/V3 ] ── [ Gemini 2.0 ] ── [ Claude 3.5 ]       │
│                                           │                                            │
│                     ┌─────────────────────┴─────────────────────┐                      │
│                     ▼                                           ▼                      │
│   ⚡ EYLEMLER & ÇIKTILAR (ACTIONS)             🚨 İZLEME & HATA YÖNETİMİ (RELIABILITY)  │
│   PostgreSQL / MongoDB / Supabase              Global Error Handler & DLQ Queue        │
│   Slack / Telegram / E-Posta Raporları         LLM FinOps Maliyet / Gecikme Takibi     │
│   WordPress / Sosyal Medya Yayını              Otomatik GitOps Repository Yedekleme    │
│                                                                                        │
└────────────────────────────────────────────────────────────────────────────────────────┘
```

---

## 🗂️ 11 Fonksiyonel Kategori & Çözüm Ekosistemi (287 Otomasyon)

İhtiyacınız olan iş akışını saniyeler içinde bulabilmeniz için tüm otomasyonlar modüler klasör yapısında kategorize edilmiştir:

### 1. `00-keystone-core-ops` — Çekirdek Güvenlik, Hata & Yönetişim (6 Akış)
* 🛡️ **Merkezi Hata Yönetimi & DLQ:** Çöken iş akışlarını otomatik yakalar, `gpt-4o-mini` ile anlık kök neden analizi (RCA) çıkarıp Slack'e incident açar.
* 📦 **GitOps Otomatik Yedekleme:** Her gece tüm iş akışlarını API'den çekip gizli anahtarları maskeleyerek GitHub'a commit atar.
* 🛑 **KVKK/GDPR PII & Prompt Firewall:** TCKN, IBAN, Kredi Kartı ve telefonları yapay zekaya gitmeden önce otomatik sansürler.
* 🔐 **HMAC-SHA256 Webhook Gateway:** Dış servislerden gelen webhook isteklerini kriptografik olarak doğrular ve replay attack'ları engeller.
* 📊 **FinOps Telemetri İzleyici:** Harcanan token maliyetini (USD) ve yanıt sürelerini canlı takip edip bütçe aşımında uyarı üretir.
* 🚦 **Supervisor Router & Human-in-the-Loop:** Yıkıcı (silme, ödeme, toplu mail) eylemleri insan onayına (`PENDING_APPROVAL`) bekletir.

### 2. `01-ai-rag-and-knowledge-bases` — Kurumsal Bilgi & RAG Asistanları (43 Akış)
* 📚 Qdrant, Pinecone ve Supabase PGVector ile şirket içi PDF, sözleşme ve kılavuzlardan semantik arama yapan RAG botları.
* 💼 Vergi mevzuatı, finansal tablolar ve yatırım raporları üzerinde kaynak göstererek yanıt veren uzman danışmanlar.
* 📂 Google Drive ve Notion belgelerini otomatik indeksleyip vektör veritabanına aktaran chunking boru hatları.

### 3. `02-chatbots-messaging-and-voice` — Çok Kanallı Mesajlaşma & Ses (53 Akış)
* 💬 **WhatsApp & Telegram:** Müşteri sorularını yanıtlayan, görsel analiz eden ve sesli mesajları yazıya döküp cevaplayan AI botları.
* 🎙️ **Sesli Asistanlar:** ElevenLabs, OpenAI Whisper ve Apple Shortcuts (Siri) entegrasyonlu interaktif sesli arayüzler.
* 👥 **Slack, Discord & Mattermost:** Şirket içi destek taleplerini çözen ve departmanlara yönlendiren akıllı ekip botları.

### 4. `03-email-calendar-and-productivity` — E-Posta, Takvim & Toplantı (30 Akış)
* ✉️ Gmail ve Outlook gelen kutusunu sınıflandıran, önceliklendiren ve taslak yanıt hazırlayan AI e-posta sekreterleri.
* 📅 Google Calendar entegrasyonuyla serbest zamanları analiz edip otomatik randevu oluşturan takvim ajanları.
* 📝 Zoom ve Fireflies toplantı kayıtlarından otomatik özet, aksiyon maddesi ve ClickUp/Jira görevi üreten akışlar.

### 5. `04-content-social-media-and-seo` — İçerik Üretimi, Sosyal Medya & SEO (47 Akış)
* ✍️ **Blog & WordPress:** Belirlenen anahtar kelimelerden SEO uyumlu, görseli hazır ve formatlanmış makale yazıp yayınlayan motorlar.
* 📱 **Sosyal Medya:** YouTube, Instagram, X (Twitter), LinkedIn ve Pinterest için otomatik metin ve görsel içeriği oluşturan jeneratörler.
* 🎨 **Görsel & Video:** FLUX.1 ve DALL-E 3 ile otomatik pazarlama görselleri ve banner hazırlama boru hatları.

### 6. `05-crm-sales-and-customer-support` — CRM, Satış & Müşteri Masası (21 Akış)
* 🎯 Pipedrive, HubSpot ve ERPNext üzerinde gelen lead'leri analiz edip puanlayan ve doğru satış temsilcisine atayan yapılar.
* 🛒 WooCommerce ve e-ticaret siteleri için sipariş durumu sorgulayan ve iade taleplerini yöneten AI destek temsilcisi.
* 🎫 Linear ve Zendesk biletlerini duygu analizine göre etiketleyip acil durum alarmları üreten destek akışları.

### 7. `06-hr-recruitment-and-operations` — İnsan Kaynakları & İşe Alım (11 Akış)
* 📄 PDF formatındaki özgeçmişleri (CV) tarayıp pozisyon kriterlerine göre puanlayan ve özet rapor çıkaran İK botu.
* 🤝 Adaylarla n8n Forms üzerinden interaktif ön mülakat gerçekleştiren ve sonuçları Google Sheets'e kaydeden akış.
* 🏢 BambooHR şirket politikalarını ve çalışan haklarını yanıtlayan dahili İK danışmanı.

### 8. `07-data-extraction-scraping-and-documents` — Veri Kazıma & Belge OCR (27 Akış)
* 🌐 Jina AI, Apify ve ScrapingBee ile korumalı sitelerden yapılandırılmış JSON veri çıkaran akıllı web kazıyıcılar.
* 🧾 LlamaParse ve Multimodal Vision ile karmaşık fatura, fiş ve banka ekstrelerinden satır bazlı tablo çıkaran OCR akışları.
* 📰 RSS kaynağı olmayan haber ve finans sitelerini periyodik tarayıp özet bülten oluşturan veri toplayıcılar.

### 9. `08-databases-sql-and-workspace` — Doğal Dil SQL & Tablo Ajanları (14 Akış)
* 🔍 **Text-to-SQL:** PostgreSQL, SQLite ve MongoDB üzerinde insan diliyle soru sorup grafik ve tablo yanıtı alan SQL ajanları.
* 🔄 Airtable, Baserow, NocoDB, Notion ve Google Sheets arasında çift yönlü otomatik veri senkronizasyonu.
* 📑 Hugging Face günlük yapay zeka makalelerini tarayıp kategorize eden otomatik araştırma kütüphaneleri.

### 10. `09-devops-security-and-it-ops` — DevOps & Siber Güvenlik (8 Akış)
* 🛡️ MITRE ATT&CK ve Qdrant ile SIEM alarmlarını zenginleştiren kurumsal siber güvenlik olay müdahale akışı.
* 🔒 Venafi ve Qualys entegrasyonuyla SSL/TLS sertifika sürelerini ve sistem zafiyetlerini takip eden IT botları.
* 💻 GitLab MR (Merge Request) kodlarını yapay zeka ile satır satır denetleyen otomatik Code Review asistanı.

### 11. `10-ai-agents-research-and-llm-core` — Otonom Ajanlar & Deep Research (27 Akış)
* 🔎 İnternette derinlemesine literatür taraması yapıp kaynakçalı HTML raporlar hazırlayan otonom **Deep Research** motoru.
* 🧠 OpenAI o3/GPT-4o, DeepSeek R1/V3, Claude 3.5 Sonnet ve Google Gemini 2.0 modellerini dinamik yöneten ajan şablonları.
* 🦙 Ollama ile tamamen yerel bilgisayarınızda internete ihtiyaç duymadan çalışan gizlilik odaklı LLM iş akışları.

---

## ⚡ Hızlı Kurulum Rehberi (60 Saniye)

Bu depoyu çalıştırmak için bilgisayarınızda veya sunucunuzda sadece **Docker** ve **Docker Compose** kurulu olması yeterlidir.

### 1. Depoyu Klonlayın
```bash
git clone [https://github.com/kullanici-adi/n8n-otomasyon-keystone.git](https://github.com/kullanici-adi/n8n-otomasyon-keystone.git)
cd n8n-otomasyon-keystone
```

### 2. Ortam Değişkenlerini Tanımlayın
```bash
cp .env.example .env
# .env dosyasını açıp dilediğiniz şifre ve API anahtarlarını girebilirsiniz
```

### 3. Servisleri Başlatın
PostgreSQL 16, Redis 7 ve n8n konteynerlerini arka planda ayağa kaldırın:
```bash
docker compose up -d postgres redis n8n
```

### 4. 287 Otomasyonu Tek Komutla n8n'e Aktarın
n8n tabloları oluştuktan sonra aşağıdaki komut tüm klasörleri tarar ve tüm iş akışlarını otomatik olarak veritabanına kaydeder:
```bash
docker compose exec -T n8n /bin/sh /scripts/import-workflows.sh
```

Tarayıcınızdan **`http://localhost:5678`** adresine gidin. Bütün otomasyonlarınız kategorileriyle birlikte sol menüde hazır! 🎉

---

## 💡 Merak Edilenler & Sıkça Sorulan Sorular (FAQ)

<details>
<summary><b>1. Bu iş akışlarını çalıştırmak için yazılımcı olmam gerekiyor mu?</b></summary>
<br>
<b>Kesinlikle hayır!</b> n8n tamamen görsel ve sürükle-bırak bir araçtır. Otomasyonu açıp sadece kendi API anahtarınızı (OpenAI, Telegram Bot Token vb.) ilgili kutucuğa yapıştırmanız ve sağ üstteki <i>"Active"</i> anahtarını açmanız yeterlidir.
</details>

<details>
<summary><b>2. Kendi sunucumda veya yerel bilgisayarımda çalıştırabilir miyim?</b></summary>
<br>
<b>Evet.</b> Docker Compose mimarisi macOS (Apple Silicon M1/M2/M3 & Intel), Linux (Ubuntu, Debian, CentOS) ve Windows (Docker Desktop / WSL2) ile %100 uyumludur. Dilediğiniz 5-10 dolarlık bir VPS (Hetzner, DigitalOcean, AWS) üzerinde ömür boyu kesintisiz çalıştırabilirsiniz.
</details>

<details>
<summary><b>3. Make.com veya Zapier varken neden n8n kullanmalıyım?</b></summary>
<br>
Make ve Zapier operasyon başına (task-based) ücret alır. Ayda 100.000 işlem yapan bir yapay zeka operasyonu SaaS araçlarında yüzlerce dolar tutarken, n8n'de <b>kendi sunucunuzda sınır olmadan ve 0 TL ek işlem ücretiyle</b> çalışırsınız. Ayrıca verileriniz üçüncü taraf sunuculara gitmez.
</details>

<details>
<summary><b>4. Yapay zeka token maliyetleri şirketimi zorlar mı?</b></summary>
<br>
Depodaki tüm iş akışları <b>FinOps</b> mantığıyla tasarlanmıştır. Yüksek maliyetli GPT-4o yerine birçok ara işlemde performansı aynı ama maliyeti 15 kat ucuz olan <b>GPT-4o-mini, DeepSeek V3 ve Gemini 2.0 Flash</b> kullanılır. Ayrıca repodaki telemetri akışı bütçenizi canlı olarak izler.
</details>

<details>
<summary><b>5. Şirketime ait müşteri veya finans verileri dışarı sızabilir mi?</b></summary>
<br>
Tüm veritabanı (PostgreSQL) kendi makinenizde barınır. Dış servislerle entegrasyonlarda ise repoda sunduğumuz <code>00-keystone-core-ops</code> altındaki <b>KVKK/GDPR Maskeleme Duvarı</b> sayesinde isim, TCKN, kredi kartı ve telefon gibi hassas veriler asla LLM sağlayıcılarına açık metin olarak iletilmez.
</details>

---

## 🛠️ Gelişmiş Komutlar & Yönetim (Makefile)

Geliştiriciler ve sistem yöneticileri için pratik kısayollar eklenmiştir:

| Komut | Açıklama |
| :--- | :--- |
| `make up` | Tüm konteynerleri (n8n, Postgres, Redis) başlatır |
| `make import` | 287 otomasyonu n8n içine aktarır |
| `make import-category CAT=01-ai-rag-and-knowledge-bases` | Yalnızca belirtilen kategoriyi içeri aktarır |
| `make validate` | Keystone sözleşme ve şema doğrulama testini çalıştırır |
| `make export` | n8n üzerinde yaptığınız değişiklikleri yerel dosyaya yedekler |
| `make down` | Konteynerleri güvenli şekilde durdurur |

---

## 🤝 Katkıda Bulunma & Topluluk

Bu depo topluluk katkılarıyla yaşayan açık kaynaklı bir ekosistemdir. Yeni bir otomasyon şablonu önermek, hata bildirmek veya iyileştirme yapmak için **Issue** açabilir veya bir **Pull Request** gönderebilirsiniz.

⭐ **Bu proje işinize yaradıysa, daha fazla geliştiriciye ulaşması için depoya yıldız (star) vermeyi unutmayın!**
