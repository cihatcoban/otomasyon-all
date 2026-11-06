# Keystone Mimari Kısıtlamaları ve Kalite Standartları (`CONSTRAINTS.md`)

Bu doküman, **Keystone Engineering Framework** (`/constraints`, `/spec`, `/secure`, `/verify`) ilkeleri doğrultusunda bu n8n otomasyon deposundaki tüm iş akışlarının uyması gereken zorunlu mühendislik kurallarını tanımlar. Tüm kurallar `scripts/validate-workflows.py` aracılığıyla otomatik olarak denetlenir.

## 1. Dosya ve Şema Bütünlüğü Kısıtlamaları (Schema & Format Invariants)

* **Standart Uzantı ve İsimlendirme**: Tüm n8n iş akışları `.txt` yerine standart UTF-8 `.json` uzantısıyla ve `kebab-case` (örn. `ai-agent-to-chat-with-supabase-postgresql-db.json`) dosya adlarıyla saklanmalıdır.
* **Zorunlu Kök Alanlar**: Her JSON dosyası n8n CLI (`n8n import:workflow`) ve REST API ile tam uyumlu olması için `id`, `name`, `active`, `nodes`, `connections`, `settings` ve `versionId` kök alanlarını içermelidir.
* **Execution Order v1**: Deterministik veri akışı için tüm iş akışlarında `settings.executionOrder: "v1"` zorunludur.
* **Düğüm (Node) Kimlikleri**: Eski n8n 0.x sürümlerinden kalan `id` alanı eksik düğümlere izin verilmez; her düğüm deterministik bir UUID v4 `id` değerine sahip olmalıdır.
* **Credential Şema Doğruluğu**: Düğümlerdeki `credentials` alanı altında düz metin (`"httpHeaderAuth": ""`) bulunamaz; her kimlik bilgisi `{"id": "...", "name": "..."}` nesne şemasına uymalıdır.

## 2. Yasaklı / Kullanımdan Kalkmış Bileşenler (Forbidden Legacy Patterns)

* **Kaldırılmış Düğümler (Deprecated Nodes)**:
  * `n8n-nodes-base.function` ve `n8n-nodes-base.functionItem` düğümleri yasaktır; tamamı modern `n8n-nodes-base.code` (`typeVersion: 2`) düğümüne taşınmıştır.
  * `n8n-nodes-base.start` düğümü yasaktır; yerine `n8n-nodes-base.manualTrigger` kullanılmalıdır.
* **Kapatılmış (Emekliye Ayrılmış) AI Modelleri ve Uç Noktalar**:
  * OpenAI tarafından kapatılan `/v1/engines/text-davinci-001/completions`, `/v1/completions` (`text-davinci-003`) ve `/v1/edits` uç noktaları yasaktır.
  * `gpt-3.5-turbo-0301`, `gpt-3.5-turbo`, `gpt-4-0613`, `gpt-4-1106-preview` ve `gpt-4-vision-preview` model kimlikleri modern `gpt-4o` ve `gpt-4o-mini` modellerine yükseltilmiştir.

## 3. Güvenlik ve Sır Hijyeni (Keystone `/secure` Guardrails)

* **Sıfır Hardcoded API Anahtarı**: Hiçbir düğüm parametresinde gerçek API anahtarı (`sk-...`, `pina_...`, `Bearer <literal>`) bulunamaz; tüm hassas değerler n8n `Credentials` deposu veya `{{ $env.VARIABLE_NAME }}` ortam değişkenleri üzerinden okunmalıdır.
* **Kabuk Komutu Enjeksiyonu (Command Injection) Koruması**: `n8n-nodes-base.executeCommand` kullanan iş akışlarında kullanıcı veya LLM kaynaklı dosya/klasör adları doğrudan `sh`/`bash` dizgisine birleştirilemez (`os.path.basename` ve `os.path.realpath` izolasyonu zorunludur).
* **SQL Enjeksiyonu ve Salt-Okunur Erişim**: AI SQL ajanlarının dahili veritabanlarını sorguladığı senaryolarda `mode=ro` (Read-Only URI) ve yalnızca `SELECT` ifadelerine izin veren güvenlik katmanı zorunludur.
* **Geri Alınamaz İşlem Güvenliği (Irreversible Action Safety)**: Silme, toplu gönderim veya prodüksiyon değişikliği içeren ajan akışları `00-keystone-core-ops/keystone-multi-agent-supervisor-router.json` şablonundaki gibi **Human-in-the-Loop (İnsan Onayı)** kapısından geçmelidir.
