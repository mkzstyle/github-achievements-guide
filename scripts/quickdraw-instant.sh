#!/usr/bin/env bash
# ==============================================================================
# Quickdraw Instant Trigger (cURL API)
# Membuka dan menutup issue dalam hitungan detik untuk mendapatkan Quickdraw
# ==============================================================================

if [ -z "$1" ] || [ -z "$2" ] || [ -z "$3" ]; then
    echo "Penggunaan: ./quickdraw-instant.sh <GITHUB_TOKEN> <OWNER> <REPO>"
    echo "Contoh: ./quickdraw-instant.sh ghp_xxx mkzstyle test-repo"
    exit 1
fi

TOKEN="$1"
OWNER="$2"
REPO="$3"

echo "1. Membuka issue baru di $OWNER/$REPO..."
CREATE_RES=$(curl -s -X POST \
  -H "Authorization: token $TOKEN" \
  -H "Accept: application/vnd.github.v3+json" \
  "https://api.github.com/repos/$OWNER/$REPO/issues" \
  -d '{"title":"Trigger Quickdraw Achievement","body":"Automated fast closure for Quickdraw badge"}')

ISSUE_NUM=$(echo "$CREATE_RES" | grep '"number":' | head -n 1 | awk '{print $2}' | tr -d ',')

if [ -z "$ISSUE_NUM" ]; then
    echo "Gagal membuat issue. Respons server:"
    echo "$CREATE_RES"
    exit 1
fi

echo "Issue #$ISSUE_NUM berhasil dibuat."
echo "2. Menutup issue #$ISSUE_NUM secara instan..."

curl -s -X PATCH \
  -H "Authorization: token $TOKEN" \
  -H "Accept: application/vnd.github.v3+json" \
  "https://api.github.com/repos/$OWNER/$REPO/issues/$ISSUE_NUM" \
  -d '{"state":"closed","state_reason":"completed"}' > /dev/null

echo "✅ Sukses! Issue #$ISSUE_NUM ditutup dalam hitungan detik."
echo "Badge Quickdraw akan segera diproses oleh sistem GitHub."
