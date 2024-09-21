<?php 
include('connection.php'); // Menyertakan koneksi ke database

class Tampil1A extends Tampilizin { // Membuat kelas Tampil1A yang mewarisi dari Tampilizin

    public function tampilData() { // Fungsi untuk menampilkan data
        $data = mysqli_query($this->conn, "select * from permohonan_izin where(pangkat_jabatan = '1-A')"); // Mengambil permohonan izin dengan pangkat 1-A
        $hasil = []; // Menyimpan hasil query ke dalam array $hasil

        if($data) {
            while ($row = mysqli_fetch_array($data)) { // Mengambil data satu per satu
                $hasil[] = $row; // Menambahkan data ke dalam array hasil
            }
        }
        return $hasil; // Mengembalikan array hasil
    }
}

$K1A = new Tampil1A(); // Membuat objek dari kelas Tampil1A
$data = $K1A->tampilData(); // Mengambil data permohonan izin
include 'navbar.php'; // Menyertakan navbar

?>

<!DOCTYPE html>
<html>
<head>
   <title></title>
   <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"> // Menyertakan stylesheet Bootstrap
   <link rel="stylesheet" href="//cdn.datatables.net/1.10.20/css/jquery.dataTables.min.css"> // Menyertakan stylesheet DataTables
</head>
<body>
   <div class="container" style="margin-top: 80px">
      <div class="row">
         <div class="col-md-12">
            <div class="card">
               <div class="card-header">
                  <b>DATA PERMOHONAN IZIN</b> // Judul untuk tabel data
               </div>
               <div class="card-body">
                  <table class="table table-bordered" id="myTable"> // Membuat tabel data
                     <thead>
                        <tr>
                           <th>No</th>
                           <th>Dosen</th>
                           <th>NIP</th>
                           <th>Pangkat</th>
                           <th>Jabatan</th>
                           <th>Unit Kerja</th>
                        </tr>
                     </thead>
                     <tbody>
                        <?php
$no = 1; // Inisialisasi nomor urut
foreach ($data as $row) { // Melakukan perulangan pada setiap baris data
?>
                        <tr>
                           <td><?php echo $no++; ?></td> // Menampilkan nomor urut
                           <td><?php echo $row['nama_dsn']; ?></td> // Menampilkan nama dosen
                           <td><?php echo $row['nip']; ?></td> // Menampilkan NIP dosen
                           <td><?php echo $row['pangkat_jabatan']; ?></td> // Menampilkan pangkat
                           <td><?php echo $row['jabatan']; ?></td> // Menampilkan jabatan
                           <td><?php echo $row['unit_kerja']; ?></td> // Menampilkan unit kerja
                        </tr>
                        <?php
}
?>
                     </tbody>
                  </table>
               </div>
            </div>
         </div>
      </div>
</body>
</html>
