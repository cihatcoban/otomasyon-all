#!/bin/sh
set -e

echo "=================================================================="
echo "🚀 Keystone n8n Toplu Otomasyon İçe Aktarma (Import) Başlatılıyor"
echo "=================================================================="

WORKFLOW_ROOT="/workflows"
if [ ! -d "$WORKFLOW_ROOT" ]; then
  echo "❌ Hata: $WORKFLOW_ROOT dizini bulunamadı!"
  exit 1
fi

TOTAL_CATS=0
for cat_dir in "$WORKFLOW_ROOT"/*/; do
  if [ -d "$cat_dir" ]; then
    cat_name=$(basename "$cat_dir")
    count=$(ls -1 "$cat_dir"*.json 2>/dev/null | wc -l)
    if [ "$count" -gt 0 ]; then
      echo "📂 Kategori aktarılıyor: $cat_name ($count otomasyon)..."
      n8n import:workflow --separate --input="$cat_dir"
      TOTAL_CATS=$((TOTAL_CATS + 1))
    fi
  fi
done

echo "=================================================================="
echo "✅ Toplam $TOTAL_CATS kategori altındaki tüm otomasyonlar başarıyla n8n'e aktarıldı!"
echo "🌐 Tarayıcınızdan http://localhost:5678 adresine giderek otomasyonları deneyebilirsiniz."
echo "=================================================================="
