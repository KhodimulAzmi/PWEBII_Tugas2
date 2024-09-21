<?php
include('connection.php');

class TampilSalatiga extends Tampiltugas{
    public function tampilData()
    {
        $data = mysqli_query($this->conn, "select * from surat_tugas
        where(tujuan = 'Salatiga')");
		  $hasil = [];
        
        if($data){
            while ($row = mysqli_fetch_array($data)) {
                $hasil[] = $row; }
            }
        return $hasil;
    }
}

$salatiga = new TampilSalatiga();
$data = $salatiga->tampilData();
include 'navbar.php';
?>
<!DOCTYPE html>
<html>

<head>
   <title></title>
   <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
   <link rel="stylesheet" href="//cdn.datatables.net/1.10.20/css/jquery.dataTables.min.css">
</head>

<body>
   <div class="container" style="margin-top: 80px">
      <div class="row">
         <div class="col-md-12">
            <div class="card">
               <div class="card-header">
                  <b>DATA PERMOHONAN IZIN</b>
               </div>
               <div class="card-body">
                  <table class="table table-bordered" id="myTable">
                     <thead>
                        <tr>
                           <th>No.</th>
                           <th>No. Surat</th>
                           <th>Dosen</th>
                           <th>Tanggal</th>
                           <th>Tujuan</th>
                           <th>Transportasi</th>
                           <th>Keperluan</th>
                        </tr>
                     </thead>
                     <tbody>
                        <?php
		$no = 1;
		foreach ($data as $row) {
		?>
                        <tr>
                           <td><?php echo $no++; ?></td>
                           <td><?php echo $row['nomor']; ?></td>
                           <td><?php echo $row['nama_dsn']; ?></td>
                           <td><?php echo $row['tgl_surat_tugas']; ?></td>
                           <td><?php echo $row['tujuan']; ?></td>
                           <td><?php echo $row['transportasi']; ?></td>
                           <td><?php echo $row['keperluan']; ?></td>
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