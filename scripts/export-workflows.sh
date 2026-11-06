#!/bin/sh
set -e
EXPORT_DIR="/home/node/.n8n/exported_workflows_$(date +%Y%m%d_%H%M%S)"
mkdir -p "$EXPORT_DIR"
echo "📦 Mevcut n8n iş akışları dışa aktarılıyor: $EXPORT_DIR"
n8n export:workflow --backup --output="$EXPORT_DIR/"
echo "✅ Dışa aktarma tamamlandı!"
