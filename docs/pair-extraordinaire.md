# 👥 Panduan Mendapatkan Achievement: Pair Extraordinaire

Achievement **Pair Extraordinaire** diberikan kepada pengguna yang mempraktikkan pair programming (pemrograman berpasangan) dengan menyertakan kredit **Co-Author** pada pesan commit git yang dimerge melalui Pull Request.

---

## 🎯 Tingkatan (Tiers)

| Tingkat | Jumlah Commit Co-Author Dimerge |
| :---: | :---: |
| **Tier 1 (Bronze)** | **1** commit co-authored |
| **Tier 2 (Silver / x2)** | **10** commits co-authored |
| **Tier 3 (Gold / x3)** | **24** atau **48** commits co-authored |

---

## 🛠️ Format Sintaks Co-Authored-By

Git mendukung trailer standar `Co-authored-by:` pada badan pesan commit. 

Format resmi:
```text
Judul commit yang jelas

Deskripsi perubahan jika ada.

Co-authored-by: Nama Lengkap Rekan <email-rekan@users.noreply.github.com>
```

> ⚠️ **Aturan Penulisan Penting**:
> - Harus ada **satu baris kosong** antara badan pesan commit dan baris `Co-authored-by:`.
> - Huruf besar dan kecil harus persis: `Co-authored-by:` diikuti satu spasi.
> - Alamat email harus merupakan email yang terverifikasi di akun GitHub rekan Anda (atau email privasi no-reply GitHub: `<username>@users.noreply.github.com`).

---

## 💻 Contoh Perintah Terminal

```bash
git checkout -b feature/pair-test
echo "Pair programming test" >> pair.txt
git add pair.txt

git commit -m "feat: implement feature with pair programming

Co-authored-by: Rekan Dev <rekan-dev@users.noreply.github.com>"

git push origin feature/pair-test
```

Setelah di-push, buka Pull Request dan lakukan Merge ke branch utama. GitHub akan mendeteksi kedua akun sebagai kontributor dan memberikan badge **Pair Extraordinaire**!
