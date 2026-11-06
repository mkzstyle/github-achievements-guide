#!/usr/bin/env bash
# ==============================================================================
# Pair Extraordinaire Commit Helper
# Membuat commit dengan metadata Co-Authored-By yang valid
# ==============================================================================

if [ -z "$1" ] || [ -z "$2" ]; then
    echo "Penggunaan: ./co-authored-commit.sh "Nama Rekan" "email-rekan@example.com" [pesan commit]"
    echo "Contoh: ./co-authored-commit.sh "John Doe" "john@example.com" "feat: refactor API""
    exit 1
fi

PARTNER_NAME="$1"
PARTNER_EMAIL="$2"
COMMIT_MSG="${3:-feat: collaborative pair programming update}"

git commit -m "$COMMIT_MSG

Co-authored-by: $PARTNER_NAME <$PARTNER_EMAIL>"

echo "✅ Commit berhasil dibuat dengan Co-Author: $PARTNER_NAME <$PARTNER_EMAIL>"
echo "Dorong branch ini dan lakukan Pull Request untuk mengaktifkan Pair Extraordinaire."
