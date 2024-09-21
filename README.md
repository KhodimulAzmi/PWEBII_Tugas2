# Proyek Tugas 2 PWEB2

## Deskripsi
Proyek ini adalah aplikasi web yang menampilkan data surat tugas dan permohonan izin dosen. Aplikasi ini memungkinkan pengguna untuk melihat data berdasarkan tujuan dan kelas tertentu.

## Fitur
- **Tampilan Semua Data**: Menampilkan seluruh data surat tugas dan permohonan izin.
- **Filter Data**: 
  - Menampilkan surat tugas yang hanya menuju **Banyumas**.
  - Menampilkan permohonan izin untuk **kelas 2-A**.

## Struktur Database
Database yang digunakan adalah `tugas2_pweb2`, dengan dua tabel utama:
- **permohonan_izin**: Menyimpan data permohonan izin dosen.
- **surat_tugas**: Menyimpan data surat tugas.

## Cara Menggunakan
1. **Import Database**: Gunakan file `tugas2_pweb2.sql` untuk mengimpor struktur dan data ke dalam database.
2. **Menjalankan Aplikasi**: Aplikasi dapat dijalankan di server lokal seperti XAMPP atau WAMP.
3. **Akses Halaman**:
   - Halaman utama: `index.php`
   - Data surat tugas: `tampil_surat_tugas.php`
   - Data permohonan izin: `tampil_permohonan_izin.php`
   - Filter tujuan Banyumas: `tugas_banyumas.php`
   - Filter kelas 2-A: `2-A.php`

## Koneksi Database
File `connection.php` digunakan untuk menghubungkan aplikasi dengan database.

## Teknologi yang Digunakan
- PHP
- MySQL
- Bootstrap

## Penutup
Proyek ini bertujuan untuk mempermudah pengelolaan dan pencarian data surat tugas dan permohonan izin dosen. Jika ada pertanyaan atau saran, silakan hubungi pengembang.
￼Enter
