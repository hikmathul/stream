<?php 
  require '../koneksi.php';
  checkLogin();
  $laporan = mysqli_query($koneksi, "SELECT * FROM tb_laporan ORDER BY tanggal_laporan DESC");
?>
<!DOCTYPE html>
<html>
<head>
  <?php include '../include_admin/css.php'; ?>
  <title>laporan</title>
</head>
<body class="hold-transition sidebar-mini layout-fixed">
<div class="wrapper">
  
  <?php include '../include_admin/navbar.php'; ?>

  <?php include '../include_admin/sidebar.php'; ?>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm">
            <h1 class="m-0 text-dark">laporan</h1>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row my-2">
          <div class="col-lg">
            <div class="table-responsive">
              <table class="table table-bordered table-hover table-striped" id="table_id">
                <thead>
                  <tr>
                    <th>No.</th>
                    <th>Id Film</th>
                    <th>Tanggal laporan</th>
                    <th>Nama Film</th>
                    <th>Aksi</th>
                  </tr>
                </thead>
                <tbody>
                  <?php $i = 1; ?>
                  <?php foreach ($laporan as $dl): ?>
                    <tr>
                      <td><?= $i++; ?></td>
                      <td><?= $dl['id_film']; ?></td>
                      <td><?= date('d-m-Y, H:i:s', $dl['tanggal_laporan']); ?></td>
                      <td><?= $dl['nama_film']; ?></td>
                      <td>
                        <a href="hapus_laporan.php?id_laporan=<?= $dl['id_laporan']; ?>" class="btn btn-danger btn-sm btn-hapus"><i class="fas fa-fw fa-trash"></i> Hapus</a>
                      </td>
                    </tr>
                  <?php endforeach ?>
                </tbody>
              </table>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  <footer class="main-footer">
    <strong>Copyright &copy; 2020 By TUBE-TUBE Firman Saputra.</strong>
    All rights reserved.
    <div class="float-right d-none d-sm-inline-block">
      <b>Version</b> 1.0.0
    </div>
  </footer>

</div>
<!-- ./wrapper -->
</body>
</html>
