# 🤝 Panduan Kontribusi (Contributing Guidelines)

Terima kasih telah tertarik untuk berkontribusi pada **github-achievements-guide**! 🎉

Proyek ini bertujuan menjadi sumber referensi paling lengkap, akurat, dan mudah dipahami bagi siapa saja yang ingin memaksimalkan profil GitHub mereka dan meraih seluruh achievement yang ada.

---

## 🌟 Cara Anda Dapat Berkontribusi

1. **Menambahkan Panduan Baru**: Jika GitHub merilis achievement atau badge baru, tambahkan dokumentasi langkah-langkahnya di folder `docs/`.
2. **Memperbarui Informasi**: Perubahan kriteria atau tips baru yang mempermudah proses perolehan badge.
3. **Menyediakan Skrip Otomasi**: Menulis skrip shell, Node.js, Python, atau GitHub Actions workflow untuk mengotomatiskan langkah yang berulang.
4. **Perbaikan Penulisan & Format**: Memperbaiki typo, kejelasan bahasa, tautan rusak, atau mempercantik tampilan markdown.
5. **Terjemahan**: Menyediakan panduan versi bahasa Inggris atau bahasa lainnya.

---

## 🚀 Alur Kerja Pull Request (Step by Step)

### 1. Fork Repositori
Klik tombol **Fork** di pojok kanan atas halaman repositori utama [`mkzstyle/github-achievements-guide`](https://github.com/mkzstyle/github-achievements-guide).

### 2. Clone Repositori Fork
```bash
git clone https://github.com/<username-anda>/github-achievements-guide.git
cd github-achievements-guide
```

### 3. Buat Branch Baru
Gunakan nama branch yang deskriptif sesuai kontribusi Anda:
```bash
# Contoh untuk fitur/panduan baru:
git checkout -b feat/panduan-badge-baru

# Contoh untuk perbaikan dokumentasi:
git checkout -b fix/perbaikan-kriteria-quickdraw
```

### 4. Lakukan Perubahan & Uji Coba
- Pastikan format Markdown rapi dan sesuai dengan pedoman yang ada.
- Jangan gunakan watermark promosi berlebihan.
- Pastikan kode atau skrip yang Anda sertakan telah diuji dan aman digunakan (bebas dari instruksi berbahaya).

### 5. Commit Perubahan
Gunakan pesan commit yang ringkas dan jelas (mengikuti konvensi conventional commits disarankan):
```bash
git add .
git commit -m "docs: tambahkan penjelasan tier 4 pull shark"
```

### 6. Push ke Branch Fork Anda
```bash
git push -u origin feat/panduan-badge-baru
```

### 7. Ajukan Pull Request
1. Masuk ke halaman repositori fork Anda di GitHub.
2. Anda akan melihat banner **Compare & pull request**, klik tombol tersebut.
3. Isi deskripsi Pull Request menggunakan template yang telah disediakan.
4. Klik **Create pull request**.

Maintainer akan meninjau PR Anda secepatnya. Jika ada saran revisi, lakukan commit tambahan pada branch yang sama dan PR akan otomatis terupdate!

---

## 📋 Pedoman Penulisan Dokumentasi di `docs/`

Setiap file panduan achievement di folder `docs/` sebaiknya memiliki struktur sebagai berikut:
1. **Nama Achievement & Icon**
2. **Kriteria Resmi & Syarat Mendapatkan**
3. **Tingkatan (Tiers & Batasan Angka)**
4. **Langkah-langkah Praktis (Step-by-step)**
5. **Skrip Otomasi / Perintah Terminal (jika relevan)**
6. **Troubleshooting & Catatan Penting**

---

## 📜 Kode Etik

- Bersikap sopan, ramah, dan saling menghargai sesama kontributor.
- Utamakan akurasi data teknis.
- Hindari spam, instruksi penipuan, atau skrip berbahaya.

Terima kasih atas kontribusi Anda dalam membangun komunitas developer yang saling mendukung!
