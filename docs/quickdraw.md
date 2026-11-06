# ⚡ Panduan Mendapatkan Achievement: Quickdraw

Achievement **Quickdraw** diberikan kepada pengguna yang menutup sebuah Issue atau Pull Request dalam kurun waktu kurang dari 5 menit setelah dibuat.

---

## 🎯 Kriteria
- **Tingkatan**: Single Tier (1x)
- **Syarat**: Menutup (Close) sebuah Issue atau PR dalam kurun waktu **$le$ 5 menit** sejak timestamp dibuat.
- **Tipe Repositori**: Repositori Publik.

---

## 🛠️ Langkah-Langkah Cepat (1 Menit)

1. Masuk ke salah satu repositori publik milik Anda di GitHub (atau buat repo publik baru jika belum ada).
2. Klik tab **Issues** di bagian atas menu repositori.
3. Klik tombol hijau **New issue**.
4. Beri judul sembarang, misalnya: `Test Quickdraw Badge`.
5. Klik tombol hijau **Submit new issue**.
6. Langsung gulir ke bagian paling bawah kolom komentar issue tersebut.
7. Klik tombol abu-abu **Close issue** (atau **Close as completed**).
8. Pastikan waktu antara issue dibuat dan ditutup kurang dari 5 menit (dalam hitungan detik lebih disarankan).
9. Tunggu hingga sistem sinkronisasi profil GitHub memperbarui daftar badge Anda (biasanya dalam 10-60 menit).

---

## 💻 Menggunakan Skrip Terminal (cURL / GitHub API)

Anda juga bisa melakukannya via satu baris perintah terminal dengan token GitHub Anda:

```bash
export GITHUB_TOKEN="token_anda"
export REPO_OWNER="username_anda"
export REPO_NAME="repo_anda"

# 1. Buat issue baru
ISSUE_NUM=$(curl -s -X POST \
  -H "Authorization: token $GITHUB_TOKEN" \
  -H "Accept: application/vnd.github.v3+json" \
  "https://api.github.com/repos/$REPO_OWNER/$REPO_NAME/issues" \
  -d '{"title":"Trigger Quickdraw Achievement","body":"Auto close test"}' | grep '"number":' | head -n 1 | awk '{print $2}' | tr -d ',')

echo "Issue #$ISSUE_NUM berhasil dibuat. Menutup issue..."

# 2. Tutup issue secara instan
curl -s -X PATCH \
  -H "Authorization: token $GITHUB_TOKEN" \
  -H "Accept: application/vnd.github.v3+json" \
  "https://api.github.com/repos/$REPO_OWNER/$REPO_NAME/issues/$ISSUE_NUM" \
  -d '{"state":"closed","state_reason":"completed"}'

echo "Issue #$ISSUE_NUM berhasil ditutup! Syarat Quickdraw terpenuhi."
```
