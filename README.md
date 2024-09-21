# Proyek Tugas 2 PWEB2

## Selamat Datang!
Hai! Ini adalah proyek web yang dibuat untuk menampilkan data surat tugas dan permohonan izin dosen. Di sini, kamu bisa dengan mudah menemukan informasi yang kamu butuhkan berdasarkan tujuan atau kelas.

## Fitur Menarik
- **Tampilkan Semua Data**: Lihat semua data surat tugas dan permohonan izin.
- **Filter Data**:
  - Lihat semua surat tugas yang ditujukan ke **Banyumas**.
  - Temukan permohonan izin khusus untuk **kelas 2-A**.

## Struktur Database
Kami menggunakan database `tugas2_pweb2`, yang terdiri dari dua tabel utama:
- **permohonan_izin**: Untuk menyimpan data permohonan izin dosen.
- **surat_tugas**: Untuk menyimpan data surat tugas.

## Cara Memulai
1. **Import Database**: Gunakan file `tugas2_pweb2.sql` untuk mengimpor semua struktur dan data ke database kamu.
2. **Jalankan Aplikasi**: Pakai server lokal seperti XAMPP atau WAMP untuk menjalankan aplikasi ini.
3. **Akses Halaman**:
   - **Homepage**: `index.php`
   - **Data Surat Tugas**: `tampil_surat_tugas.php`
   - **Data Permohonan Izin**: `tampil_permohonan_izin.php`
   - **Filter Tujuan Banyumas**: `tugas_banyumas.php`
   - **Filter Kelas 2-A**: `2-A.php`

## Koneksi Database
Semua pengaturan koneksi database ada di file `connection.php`. Pastikan kamu mengatur dengan benar agar aplikasi dapat berjalan lancar.

## Teknologi yang Digunakan
- **PHP**: Untuk backend-nya.
- **MySQL**: Untuk database.
- **Bootstrap**: Agar tampilan semakin kece.

## Akhir Kata
Semoga proyek ini bermanfaat dan memudahkan kamu dalam mengelola data surat tugas dan permohonan izin dosen. Jika ada pertanyaan atau saran, jangan ragu untuk menghubungi saya!

Selamat mencoba!
