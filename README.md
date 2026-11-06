# 🏆 Panduan Lengkap GitHub Achievements & Badges

> Kumpulan dokumentasi terperinci, panduan langkah demi langkah, skrip otomatisasi, dan tips untuk mendapatkan seluruh achievement (pencapaian) yang tersedia di profil GitHub.

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](CONTRIBUTING.md)
[![GitHub stars](https://img.shields.io/github/stars/mkzstyle/github-achievements-guide?style=flat)](https://github.com/mkzstyle/github-achievements-guide/stargazers)
[![GitHub forks](https://img.shields.io/github/forks/mkzstyle/github-achievements-guide?style=flat)](https://github.com/mkzstyle/github-achievements-guide/network/members)

---

## 📌 Daftar Isi
- [Tentang Repositori](#-tentang-repositori)
- [Ringkasan Seluruh Achievement](#-ringkasan-seluruh-achievement)
- [Panduan Detail Tiap Achievement](#-panduan-detail-tiap-achievement)
  - [🦈 Pull Shark](#-pull-shark)
  - [⚡ Quickdraw](#-quickdraw)
  - [🧠 Galaxy Brain](#-galaxy-brain)
  - [🪂 YOLO](#-yolo)
  - [⭐ Starstruck](#-starstruck)
  - [👥 Pair Extraordinaire](#-pair-extraordinaire)
  - [💖 Public Sponsor](#-public-sponsor)
  - [🧊 Arctic Code Vault Contributor (Legacy)](#-arctic-code-vault-contributor-legacy)
  - [🚁 Mars 2020 Helicopter Contributor (Legacy)](#-mars-2020-helicopter-contributor-legacy)
- [Badge Khusus Profil GitHub](#-badge-khusus-profil-github)
- [Skrip Otomatisasi](#-skrip-otomatisasi)
- [FAQ & Troubleshooting](#-faq--troubleshooting)
- [🤝 Cara Berkontribusi (Pull Request)](#-cara-berkontribusi-pull-request)
- [Lisensi](#-lisensi)

---

## 🎯 Tentang Repositori

GitHub Achievements diperkenalkan oleh GitHub untuk merayakan kolaborasi open source, kebiasaan pemrograman yang baik, dan keterlibatan komunitas pengembang. 

Repositori ini dibuat khusus untuk membantu developer dari berbagai kalangan memahami:
1. **Kriteria Resmi & Tidak Resmi**: Apa saja aksi yang memicu sistem GitHub memberikan badge.
2. **Tingkatan (Tiers)**: Berapa banyak aksi yang dibutuhkan untuk meningkatkan badge dari Bronze (x1) ke Silver (x2), Gold (x3), dan Platinum/Diamond (x4).
3. **Langkah Terperinci**: Panduan praktis dengan contoh nyata yang bisa langsung diterapkan.
4. **Skrip & Otomasi**: Workflow GitHub Actions dan skrip shell untuk mempermudah pengujian.
5. **Keterbukaan untuk Kontribusi**: Siapa pun dapat berkontribusi melalui Pull Request untuk menambahkan panduan baru, tips, atau terjemahan.

---

## 📊 Ringkasan Seluruh Achievement

| Badge | Nama Achievement | Kriteria Singkat | Tingkatan (Tiers) | Status | Panduan Detail |
| :---: | :--- | :--- | :---: | :---: | :---: |
| 🦈 | **Pull Shark** | Melakukan merge Pull Request | 2 / 16 / 128 / 1024 PR | Aktif ✅ | [`docs/pull-shark.md`](docs/pull-shark.md) |
| ⚡ | **Quickdraw** | Menutup Issue / PR dalam 5 menit setelah dibuat | 1x | Aktif ✅ | [`docs/quickdraw.md`](docs/quickdraw.md) |
| 🧠 | **Galaxy Brain** | Jawaban diterima di GitHub Discussions | 2 / 8 / 16 / 32 Jawaban | Aktif ✅ | [`docs/galaxy-brain.md`](docs/galaxy-brain.md) |
| 🪂 | **YOLO** | Melakukan merge PR tanpa code review | 1x | Aktif ✅ | [`docs/yolo.md`](docs/yolo.md) |
| ⭐ | **Starstruck** | Memiliki repositori dengan 16+ stars | 16 / 128 / 512 / 4096 Star | Aktif ✅ | [`docs/starstruck.md`](docs/starstruck.md) |
| 👥 | **Pair Extraordinaire** | Melakukan co-author pada commit yang dimerge di PR | 1 / 10 / 24 / 48 Commit | Aktif ✅ | [`docs/pair-extraordinaire.md`](docs/pair-extraordinaire.md) |
| 💖 | **Public Sponsor** | Memberikan sponsor ke developer via GitHub Sponsors | 1x | Aktif ✅ | [`docs/public-sponsor.md`](docs/public-sponsor.md) |
| 🧊 | **Arctic Code Vault** | Kontribusi pada repositori dalam snapshot arsip 2020 | 1x | Legacy ❄️ | [`docs/legacy-badges.md`](docs/legacy-badges.md) |
| 🚁 | **Mars 2020 Helicopter** | Kontribusi pada library misi Mars Ingenuity NASA | 1x | Legacy 🚀 | [`docs/legacy-badges.md`](docs/legacy-badges.md) |

---

## 📖 Panduan Detail Tiap Achievement

### 🦈 Pull Shark
*Deskripsi*: Diperoleh dengan melakukan merge pull request ke repositori publik.
- **Tier 1 (Bronze)**: 2 merged PRs
- **Tier 2 (Silver / x2)**: 16 merged PRs
- **Tier 3 (Gold / x3)**: 128 merged PRs
- **Tier 4 (Gold Deluxe / x4)**: 1024 merged PRs
- **Cara Cepat**:
  1. Buat repositori publik di akun Anda.
  2. Buat branch baru: `git checkout -b feature/update`.
  3. Lakukan commit perubahan dan push.
  4. Buka Pull Request ke `main` dan klik **Merge Pull Request**.
  5. Ulangi hingga mencapai target tier. (Lihat skrip otomatisasi di `scripts/pull-shark-automation.sh`).
👉 [Baca panduan lengkap Pull Shark](docs/pull-shark.md)

---

### ⚡ Quickdraw
*Deskripsi*: Menutup issue atau pull request dalam waktu maksimal 5 menit setelah dibuat.
- **Tingkatan**: 1x (Single Tier)
- **Cara Mendapatkan dalam 1 Menit**:
  1. Masuk ke repositori publik milik Anda.
  2. Buka tab **Issues** -> **New Issue**.
  3. Beri judul sembarang (misal: "Test Quickdraw") lalu klik **Submit new issue**.
  4. Segera scroll ke bawah dan klik tombol **Close issue** (dalam waktu kurang dari 5 menit).
  5. Achievement akan masuk antrean sinkronisasi GitHub dan muncul di profil Anda dalam beberapa menit/jam.
👉 [Baca panduan lengkap Quickdraw](docs/quickdraw.md)

---

### 🧠 Galaxy Brain
*Deskripsi*: Memiliki jawaban yang diterima (**Accepted Answer**) pada kategori Q&A di GitHub Discussions.
- **Tier 1 (Bronze)**: 2 jawaban diterima
- **Tier 2 (Silver / x2)**: 8 jawaban diterima
- **Tier 3 (Gold / x3)**: 16 jawaban diterima
- **Tier 4 (Diamond / x4)**: 32 jawaban diterima
- **Cara Mendapatkan**:
  1. Aktifkan fitur **Discussions** di repositori publik Anda (**Settings** -> centang **Discussions**).
  2. Buat diskusi baru pada kategori **Q&A**.
  3. Gunakan akun rekan/kolaborator untuk menulis pertanyaan atau ajukan pertanyaan teknis.
  4. Berikan jawaban yang membantu, lalu klik tanda centang **Mark as answer**.
👉 [Baca panduan lengkap Galaxy Brain](docs/galaxy-brain.md)

---

### 🪂 YOLO
*Deskripsi*: Melakukan merge pull request tanpa melalui tahapan review kode.
- **Tingkatan**: 1x (Single Tier)
- **Cara Mendapatkan**:
  1. Buat repositori publik (pastikan branch protection rule tidak mewajibkan pull request review).
  2. Buat branch baru, commit sebuah perubahan, dan buat Pull Request ke branch utama.
  3. Langsung klik tombol hijau **Merge pull request** tanpa menekan tombol "Request review" ke akun lain.
👉 [Baca panduan lengkap YOLO](docs/yolo.md)

---

### ⭐ Starstruck
*Deskripsi*: Membuat repositori yang berhasil memperoleh bintang (star) dari komunitas.
- **Tier 1 (Bronze)**: 16 stars
- **Tier 2 (Silver / x2)**: 128 stars
- **Tier 3 (Gold / x3)**: 512 stars
- **Tier 4 (Diamond / x4)**: 4096 stars
- **Tips Mendapatkan Stars**:
  1. Buat proyek open-source yang bermanfaat (template, CLI tool, panduan, dataset, atau website interaktif).
  2. Tulis README yang rapi dengan badge, tangkapan layar, dan dokumentasi yang jelas.
  3. Bagikan ke komunitas programmer (Reddit r/github, Twitter/X, LinkedIn, Discord, Telegram pengembang).
👉 [Baca panduan lengkap Starstruck](docs/starstruck.md)

---

### 👥 Pair Extraordinaire
*Deskripsi*: Menjadi co-author pada commit yang dimasukkan ke repositori melalui merged pull request.
- **Tier 1 (Bronze)**: 1 merged commit
- **Tier 2 (Silver / x2)**: 10 merged commits
- **Tier 3 (Gold / x3)**: 24 / 48 merged commits
- **Format Commit Co-Author**:
  Tambahkan baris trailer berikut di bagian paling bawah pesan commit git Anda:
  ```bash
  git commit -m "Refactor authentication flow

  Co-authored-by: Nama Rekan <email-rekan@users.noreply.github.com>"
  ```
👉 [Baca panduan lengkap Pair Extraordinaire](docs/pair-extraordinaire.md)

---

### 💖 Public Sponsor
*Deskripsi*: Memberikan sponsor kepada kreator atau organisasi open source melalui GitHub Sponsors.
- **Tingkatan**: 1x (Single Tier)
- **Cara Mendapatkan**:
  1. Kunjungi halaman profil developer atau organisasi yang mengaktifkan GitHub Sponsors (misalnya creator library favorit Anda).
  2. Klik tombol **Sponsor**.
  3. Pilih nominal (bisa $1 satu kali / one-time sponsorship) dan selesaikan pembayaran.
  4. Pastikan opsi privasi sponsor disetel ke **Public** agar badge tampil di profil Anda.
👉 [Baca panduan lengkap Public Sponsor](docs/public-sponsor.md)

---

## 🎖️ Badge Khusus Profil GitHub

Selain achievement di atas, GitHub juga memiliki badge resmi lainnya untuk profil:
- **PRO**: Berlangganan GitHub Pro atau pengguna aktif GitHub Student Developer Pack.
- **Sponsor / Sponsored**: Menjadi sponsor atau menerima sponsorship via GitHub Sponsors.
- **Developer Program Member**: Terdaftar di program pengembang API GitHub.
- **GitHub Campus Expert**: Pemimpin komunitas mahasiswa terverifikasi oleh GitHub Education.
- **Security Bug Bounty Hunter**: Peneliti keamanan yang menemukan dan melaporkan kerentanan di platform GitHub.
- **GitHub Star**: Penghargaan tahunan untuk figur terkemuka di ekosistem open-source.

👉 [Pelajari selengkapnya di docs/profile-badges.md](docs/profile-badges.md)

---

## ⚙️ Skrip Otomatisasi

Di dalam folder [`scripts/`](scripts/) terdapat skrip siap pakai untuk menguji dan mempercepat perolehan badge:
- [`scripts/pull-shark-automation.sh`](scripts/pull-shark-automation.sh): Membuat branch, commit, PR, dan auto-merge secara otomatis menggunakan GitHub CLI (`gh`).
- [`scripts/quickdraw-instant.sh`](scripts/quickdraw-instant.sh): Membuka dan menutup issue dalam hitungan detik.
- [`scripts/co-authored-commit.sh`](scripts/co-authored-commit.sh): Membuat template commit dengan co-author git yang valid.
- [`.github/workflows/pull-shark-auto.yml`](.github/workflows/pull-shark-auto.yml): Workflow GitHub Actions untuk trigger merge PR on-demand.

---

## ❓ FAQ & Troubleshooting

### Q: Saya sudah melakukan langkah-langkahnya, kenapa badge belum muncul?
> **Jawaban**: Sistem sinkronisasi badge GitHub tidak langsung instan. Biasanya membutuhkan waktu antara **5 menit hingga 24 jam**. Pastikan juga email pada commit Anda cocok dengan email akun GitHub Anda, dan repositori berstatus **Public**.

### Q: Apakah repositori private bisa mendapatkan badge?
> **Jawaban**: Sebagian besar achievement (seperti Pull Shark, Quickdraw, Starstruck) menghitung kontribusi pada **repositori publik**. Jika Anda menggunakan repositori private, pastikan mengaktifkan opsi *"Include private contributions on my profile"* di pengaturan profil Anda.

### Q: Bagaimana cara menyembunyikan atau menampilkan achievement di profil?
> **Jawaban**: Buka **Settings** -> **Profile** -> Gulir ke bagian **Achievements** -> Centang atau hapus centang opsi *"Show Achievements on my profile"*.

👉 [Lihat daftar FAQ lengkap](docs/faq.md)

---

## 🤝 Cara Berkontribusi (Pull Request)

Repositori ini adalah proyek komunitas open source! Kami sangat menyambut kontribusi dari pengguna GitHub lainnya untuk:
1. Menambahkan panduan pencapaian baru jika GitHub meluncurkan badge baru.
2. Memperbaiki atau memperjelas langkah-langkah yang ada.
3. Menambahkan skrip otomasi yang lebih canggih (Python, Node.js, Shell, GitHub Actions).
4. Menambahkan terjemahan bahasa.

### Langkah Singkat Mengirimkan Pull Request:
1. **Fork** repositori ini ke akun Anda:
   ```bash
   # Klik tombol Fork di pojok kanan atas halaman GitHub
   ```
2. **Clone** hasil fork ke komputer lokal Anda:
   ```bash
   git clone https://github.com/<username-anda>/github-achievements-guide.git
   cd github-achievements-guide
   ```
3. **Buat branch baru** untuk fitur atau revisi Anda:
   ```bash
   git checkout -b feat/tambah-panduan-baru
   ```
4. **Lakukan perubahan** pada file markdown atau skrip, lalu commit:
   ```bash
   git add .
   git commit -m "feat: tambahkan panduan detail untuk badge XYZ"
   ```
5. **Push** branch ke repositori fork Anda:
   ```bash
   git push origin feat/tambah-panduan-baru
   ```
6. **Buka Pull Request** ke branch `main` repositori utama `mkzstyle/github-achievements-guide`!
7. Tim maintainer akan meninjau dan melakukan merge pada Pull Request Anda. (Sekaligus membantu Anda mendapatkan kontribusi open source!).

Panduan kontribusi lebih lengkap dapat dibaca di [CONTRIBUTING.md](CONTRIBUTING.md).

---

## 📄 Lisensi

Repositori ini dirilis di bawah lisensi [MIT License](LICENSE). Bebas digunakan, dibagikan, dan dikembangkan oleh siapa saja.
