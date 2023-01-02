<!-- Tampilkan data user pada tb_user -->
<?php
require '../koneksi.php';
$data_user = mysqli_query($koneksi, "SELECT * FROM tb_user ORDER BY id_user ASC");
?>
<!-- jika tombol tambah user ditekan -->
<?php
if (isset($_POST['btnTambahUser'])) {
  if (tambahUser($_POST) > 0) {
    $nama_user = htmlspecialchars(addslashes(ucwords($_POST['nama_user'])));
    setAlert("Berhasil dit
ambahkan", "User $nama_user berhasil ditambahkan", "success");
    header("Location: data_user.php");
  } else {
    setAlert("Gagal ditambahkan", "User $nama_user gagal ditambahkan", "error");
    header("Location: data_user.php");
  }
}
?>

<!DOCTYPE html>
<html>
<head>
  <?php include '../include_admin/css.php'; ?>
  <title>Data User</title>
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
            <h1 class="m-0 text-dark">Data User</h1>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <div class="col-sm text-right">
            <button type="button" data-toggle="modal" data-target="#tambahuserModal" class="btn btn-primary"><i class="fas fa-fw fa-plus"></i> Tambah user</button>
            <!-- Modal -->
            <div class="modal fade text-left" id="tambahuserModal" tabindex="-1" role="dialog" aria-labelledby="tambahuserModalLabel" aria-hidden="true">
              <div class="modal-dialog" role="document">
                <form method="post">
                  <div class="modal-content">
                    <div class="modal-header">
                      <h5 class="modal-title" id="tambahuserModalLabel">Tambah User</h5>
                      <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                      </button>
                    </div>
                    <div class="modal-body">
                      <div class="form-group">
                        <label for="username">Username</label>
                        <input type="text" name="username" reqred class="form-control" id="username">
                  </div>
                  <!-- <div class="form-group">
                        <label for="password">password</label>
                        <input type="text" name="password" reqred class="form-control" id="password">
                  </div> -->
                  <div class="form-group">
                        <label for="nama_lengkap">nama_lengkap</label>
                        <input type="text" name="nama_lengkap" reqred class="form-control" id="nama_lengkap">
                  </div>
                  <div class="form-group">
                        <input type="hidden" name="photo_profile" reqred class="form-control" id="photo_profile" value="avatar5.png">
                  </div>

                    </div>
                    <div class="modal-footer">
                      <button type="button" class="btn btn-danger" data-dismiss="modal"><i class="fas fa-fw fa-times"></i> Batal</button>
                      <button type="submit" name="btnTambahuser" class="btn btn-primary"><i class="fas fa-fw fa-save"></i> Simpan</button>
                    </div>
                  </div>
                </form>
              </div>
            </div>
          </div>

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
                    <th>Id User</th>
                    <th>Username</th>
                    <th>Nama lengkap</th>
                    <th>Password</th>
                    <th>Aksi</th>
                  </tr>
                </thead>
                <tbody>
                  <?php $i = 1; ?>
                  <?php foreach ($data_user as $du): ?>
                    <tr>
                      <td><?= $i++; ?></td>
                      <td><?= $du['id_user']; ?></td>
                      <td><?= $du['username']; ?></td>
                      <td><?= $du['nama_lengkap']; ?></td>
                        <td><?= $du['password']; ?></td>
                      <td>
                        <a href="hapus_user.php?id_user=<?= $du['id_user']; ?>" class="btn btn-danger btn-sm btn-hapus"><i class="fas fa-fw fa-trash"></i> Hapus</a>
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