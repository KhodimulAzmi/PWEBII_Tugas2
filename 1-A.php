<?php

include('connection.php');



class Tampil1A extends Tampilizin{

    public function tampilData()

    {

        $data = mysqli_query($this->conn, "select * from permohonan_izin

        where(pangkat_jabatan = '1-A')");

		  $hasil = [];

        

        if($data){

            while ($row = mysqli_fetch_array($data)) {

                $hasil[] = $row; }

            }

        return $hasil;

    }

}



$K1A = new Tampil1A();

$data = $K1A->tampilData();

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

$no = 1;

foreach ($data as $row) {

?>

                        <tr>

                           <td><?php echo $no++; ?></td>

                           <td><?php echo $row['nama_dsn']; ?></td>

                           <td><?php echo $row['nip']; ?></td>

                           <td><?php echo $row['pangkat_jabatan']; ?></td>

                           <td><?php echo $row['jabatan']; ?></td>

                           <td><?php echo $row['unit_kerja']; ?></td>

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
