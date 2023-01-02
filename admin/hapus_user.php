<?php 
	require '../koneksi.php';
	$id_user = $_GET['id_user'];
	$data = mysqli_fetch_assoc(mysqli_query($koneksi, "SELECT * FROM tb_user WHERE id_user = '$id_user'"));
	$nama_user = ucwords($data['nama_user']);
	if (isset($id_user)) {
		if (hapususer($id_user) > 0) {
			setAlert("Berhasil dihapus", "user $nama_user berhasil dihapus", "success");
      		header("Location: data_user.php");
		}
	}