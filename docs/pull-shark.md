# 🦈 Panduan Mendapatkan Achievement: Pull Shark

Achievement **Pull Shark** adalah salah satu pencapaian paling populer di GitHub, diberikan kepada pengguna yang berhasil melakukan merge Pull Request (PR) pada repositori publik.

---

## 🎯 Kriteria & Tingkatan (Tiers)

Badge ini memiliki 4 tingkatan (level) yang ditandai dengan perubahan tampilan badge dan label penggali (multiplier):

| Tingkat | Nama Badge | Jumlah PR Dimerge | Tampilan Visual |
| :---: | :--- | :---: | :--- |
| **Tier 1** | Bronze Pull Shark | **2** PR | Hiu perunggu standar |
| **Tier 2** | Silver Pull Shark (x2) | **16** PR | Hiu perak dengan badge x2 |
| **Tier 3** | Gold Pull Shark (x3) | **128** PR | Hiu emas berkilau dengan badge x3 |
| **Tier 4** | Deluxe / Diamond (x4) | **1024** PR | Hiu diamond kosmik dengan badge x4 |

---

## 🛠️ Langkah-Langkah Manual Mendapatkannya

Anda dapat memenuhi syarat ini menggunakan repositori publik milik Anda sendiri atau berkontribusi pada repositori orang lain.

### Cara Menggunakan Repositori Sendiri:
1. Buka [GitHub](https://github.com) dan buat repositori publik baru (misalnya: `test-achievements`). Pastikan mencentang **Add a README file**.
2. Masuk ke halaman repositori tersebut.
3. Klik pada dropdown branch (`main`), ketik nama branch baru, misal `feature/update-1`, lalu tekan **Create branch**.
4. Klik file `README.md`, klik ikon pensil (Edit), tambahkan satu baris teks sederhana (misal: "Catatan commit 1").
5. Di bagian bawah, pilih opsi **Commit directly to the `feature/update-1` branch** dan klik **Commit changes**.
6. Klik tab **Pull requests**, lalu klik tombol hijau **New pull request**.
7. Pastikan `base: main` dan `compare: feature/update-1`, lalu klik **Create pull request**.
8. Setelah PR terbuka, klik tombol hijau **Merge pull request** lalu **Confirm merge**.
9. Ulangi proses di atas dengan branch `feature/update-2` untuk menyelesaikan PR ke-2 Anda.
10. Selesai! Tier 1 (Bronze Pull Shark) akan segera terbuka di profil Anda.

---

## ⚡ Skrip Otomasi Cepat via GitHub CLI (`gh`)

Jika Anda memiliki [GitHub CLI](https://cli.github.com) terinstall di terminal:

```bash
# Login terlebih dahulu
gh auth login

# Jalankan loop untuk membuat branch, commit, PR, dan merge secara instan:
for i in {1..2}; do
  BRANCH_NAME="pr-shark-$i"
  git checkout -b "$BRANCH_NAME"
  echo "Pull shark update $i: $(date)" >> shark_log.txt
  git add shark_log.txt
  git commit -m "feat: pull shark step $i"
  git push -u origin "$BRANCH_NAME"
  gh pr create --title "Pull Shark PR #$i" --body "Automated PR merge" --base main --head "$BRANCH_NAME"
  gh pr merge "$BRANCH_NAME" --merge --delete-branch
  git checkout main
  git pull origin main
done
```

---

## 📌 Catatan Penting
- PR yang di-merge harus berada di **repositori publik** agar langsung terhitung ke skor profil.
- Jangan melakukan spam PR yang tidak bermakna ke repositori orang lain (open source publik). Gunakan repositori pribadi Anda jika hanya bertujuan untuk menguji sistem badge.
