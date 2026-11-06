# 🪂 Panduan Mendapatkan Achievement: YOLO

Achievement **YOLO** (You Only Live Once) diberikan kepada pengembang yang melakukan merge sebuah pull request secara langsung tanpa meminta atau menunggu tahapan code review.

---

## 🎯 Kriteria
- **Tingkatan**: Single Tier (1x)
- **Kondisi**: Merge PR dilakukan tanpa ada approval review dari reviewer mana pun.
- **Syarat Repositori**: Repositori publik dengan aturan branch yang tidak mewajibkan code review.

---

## 🛠️ Cara Mendapatkan dengan Mudah

1. Buka repositori publik Anda.
2. Pastikan tidak ada aturan Branch Protection yang memblokir merge tanpa review:
   - Cek di **Settings** -> **Branches**. Pastikan opsi *"Require a pull request before merging"* tidak mencentang *"Require approvals"*, atau tidak ada aturan branch sama sekali pada default branch.
3. Buat branch baru:
   ```bash
   git checkout -b chore/yolo-test
   echo "YOLO merge test" >> notes.txt
   git add notes.txt
   git commit -m "chore: test yolo"
   git push origin chore/yolo-test
   ```
4. Buka halaman GitHub dan buat Pull Request dari `chore/yolo-test` ke `main`.
5. **JANGAN** meminta review kepada siapapun (biarkan kolom Reviewers kosong).
6. Langsung tekan tombol hijau **Merge pull request** -> **Confirm merge**.
7. Selesai! Badge YOLO akan tercatat pada akun Anda.
