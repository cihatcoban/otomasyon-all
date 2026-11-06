.PHONY: up down restart logs import import-category validate export ps

# n8n + PostgreSQL + Redis servislerini ayağa kaldırır
up:
	@test -f .env || cp .env.example .env
	@mkdir -p shared_drive
	docker compose up -d postgres redis n8n
	@echo "✅ n8n http://localhost:5678 adresinde hazır!"

# Tüm 287 otomasyonu n8n veritabanına otomatik olarak import eder
import:
	@test -f .env || cp .env.example .env
	docker compose exec -T n8n /bin/sh /scripts/import-workflows.sh

# Yalnızca belirli bir kategoriyi import eder (Örn: make import-category CAT=00-keystone-core-ops)
import-category:
	docker compose exec -T n8n n8n import:workflow --separate --input="/workflows/$(CAT)"

# Keystone doğrulama ve şema denetim scriptini çalıştırır
validate:
	python3 scripts/validate-workflows.py

# Çalışan n8n içindeki iş akışlarını dışa aktarır
export:
	docker compose exec -T n8n /bin/sh /scripts/export-workflows.sh

logs:
	docker compose logs -f n8n

down:
	docker compose down
