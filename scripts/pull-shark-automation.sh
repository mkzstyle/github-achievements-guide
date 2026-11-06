#!/usr/bin/env bash
# ==============================================================================
# Pull Shark Automation Helper (GitHub CLI)
# Otomasi penggabungan Pull Request untuk meraih tingkatan Pull Shark
# ==============================================================================

set -e

COUNT=${1:-2}

echo "=== Memulai Otomasi Pull Shark ($COUNT Pull Requests) ==="

if ! command -v gh &> /dev/null; then
    echo "Error: GitHub CLI ('gh') belum terinstall."
    echo "Silakan install via: https://cli.github.com"
    exit 1
fi

CURRENT_BRANCH=$(git branch --show-current)
if [ -z "$CURRENT_BRANCH" ]; then
    CURRENT_BRANCH="main"
fi

for ((i=1; i<=COUNT; i++)); do
    TIMESTAMP=$(date +%s%N)
    BRANCH="pull-shark-run-$i-$TIMESTAMP"
    
    echo "[$i/$COUNT] Membuat branch $BRANCH..."
    git checkout -b "$BRANCH"
    
    echo "Automated commit step $i at $(date)" >> .shark_history.txt
    git add .shark_history.txt
    git commit -m "feat(shark): step $i of $COUNT auto PR"
    
    echo "[$i/$COUNT] Mendorong branch ke remote..."
    git push -u origin "$BRANCH"
    
    echo "[$i/$COUNT] Membuat Pull Request..."
    gh pr create --title "Pull Shark Automation #$i" --body "Automated PR merge for Pull Shark progression" --base "$CURRENT_BRANCH" --head "$BRANCH"
    
    echo "[$i/$COUNT] Melakukan Merge Pull Request..."
    gh pr merge "$BRANCH" --merge --delete-branch
    
    echo "[$i/$COUNT] Kembali ke branch $CURRENT_BRANCH..."
    git checkout "$CURRENT_BRANCH"
    git pull origin "$CURRENT_BRANCH"
    
    echo "[$i/$COUNT] Selesai!"
    sleep 2
done

echo "🎉 Sukses menyelesaikan $COUNT pull requests!"
