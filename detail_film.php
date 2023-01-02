<?php
require 'koneksi.php';
$id_film = $_GET['id_film'];
$genre = mysqli_query($koneksi, "SELECT * FROM tb_genre ORDER BY nama_genre ASC LIMIT 0, 5");
$film = mysqli_query($koneksi, "SELECT * FROM tb_film INNER JOIN tb_genre ON tb_film.id_genre = tb_genre.id_genre WHERE tb_film.id_film = '$id_film'");
$komentar = mysqli_query($koneksi, "SELECT * FROM tb_komentar INNER JOIN tb_film ON tb_komentar.id_film = tb_film.id_film WHERE tb_komentar.id_film = '$id_film' ORDER BY tanggal_komentar DESC");
$detail_film = mysqli_fetch_assoc($film);
$film_rekomendasi = mysqli_query($koneksi, "SELECT * FROM tb_film INNER JOIN tb_genre ON tb_film.id_genre = tb_genre.id_genre ORDER BY RAND()  DESC LIMIT 0, 3");
if (isset($_POST['btnLaporkanLinkRusak'])) {
  if (laporan($_POST) > 0) {
    setAlert("Berhasil dikirim", "Laporan berhasil dikirim", "success");
    header("Location: detail_film.php?id_film=$id_film");
  } else {
    setAlert("Berhasil dilaporkan", "Laporan sedang diproses admin", "success");
    header("Location: detail_film.php?id_film=$id_film");
  }
}

?>

<!DOCTYPE html>
<html>

<head>
  <?php include 'include/css.php'; ?>
  <style>
    #mobile{
      height: auto; 
      /* width:5.63rem;  */
      width: 100%;
      margin:auto;
    }
  </style>
  <title>Detail Film: <?= $detail_film['nama_film']; ?></title>
</head>

<body style="background-image: url(assets/img/img_properties/bg-landing.jpg); background-size: cover; background-attachment: fixed;">
  <?php include 'include/navbar.php'; ?>

  <div class="container px-4 rounded-bottom bg-dark">
    <div class="row mb-3 justify-content-center">
      <div class="col-lg">
        <h3>Sedang Menonton: <?= $detail_film['nama_film']; ?></h3>
        <div class="embed-responsive embed-responsive-16by9">
          <!-- INI NANTI DIUBAH PAKE VARIEBEL [DONE]-->
          <iframe class="embed-responsive-item" src="<?= $detail_film['link_film']; ?>" allowfullscreen></iframe>


        </div>
      </div>
    </div>
    <div class="row my-2">
      <div class="col-lg">
        <div class="row my-2">
          <!-- <div class="col-lg">
            <h4><?= $detail_film['nama_film']; ?></h4>
          </div> -->
          <div class="col-lg-5">
            <h4 class="text-left">


              <!-- INI  NANTI DIUBAH PAKE VARIEBEL [DONE]-->
              <a href="<?= $detail_film['link_download']; ?>" class="mx-2">
                Download :
                <i class="fa fa-download"></i></a>
            </h4>
          </div>

          <!-- laporkan link rusak -->
          <div class="col-lg-12">
            <form method="post">
              <input type="hidden" name="id_film" id="id_film" value="<?= $id_film; ?>">
              <input type="hidden" name="nama_film" id="nama_film" value="<?= $detail_film['nama_film']; ?>">
              apakah link rusak ?
              <button type="submit" name="btnLaporkanLinkRusak" class="btn btn-danger btn-sm"><i class="fas fa-fw fa-exclamation-triangle"></i> Laporkan</button>
            </form>

          </div>


        </div>
      </div>
    <div class="justify-content-center">
      <div class="container-fluid  p-3" style="overflow: hidden; ">
        <div class="container-sm">
          <div class="col-sm my-2">
            <h3>Hottest view TOP 10</h3>
            <div class="owl-carousel">
              <?php foreach ($film_rekomendasi as $df) : ?>
                <?php if ($df == NULL) : ?>
                  <h4>No Movies</h4>
                <?php else : ?>
                  <div class="card" id="mobile">
                    <!-- INI NANTI DIUBAH PAKE VARIEBEL [DONE] -->
                    <a href="<?= $df['cover_film']; ?>" class="enlarge">
                      <img src="<?= $df['cover_film']; ?>" class="card-img-top" alt="Cover Film <?= $df['nama_film']; ?>">
                    </a>
                    <div class="card-body text-dark justify-content-center">
                      <?php
                      $length = strlen($df['nama_film']);
                      if ($length > 3) {
                        $show_nama_film = substr($df['nama_film'], 0, 20);
                        $show_nama_film .= '...';
                      } else {
                        $show_nama_film = $df['nama_film'];
                      }
                      ?>
                      <a href="detail_film.php?id_film=<?= $df['id_film']; ?>">
                      <p style="height: auto; text-overflow: ellipsis;  overflow: hidden;   white-space: nowrap;" class="my-auto"><?= $show_nama_film; ?></p>
                      </a>
                    </div>
                  </div>
                <?php endif ?>
              <?php endforeach ?>
            </div>
          </div>

        </div>
      </div>
      </div>
      <!-- Video terbaru baris -->


      <!-- kolom komentar -->
      <!-- <div class="row my-2">
      <div class="col-lg-6 my-2">
        <h3>Comments</h3>
        <form method="post">
          <input type="hidden" name="id_film" value="<?= $id_film; ?>">
          <div class="form-group">
            <label for="nama_komentar">Nama Komentar</label>
            <input type="text" name="nama_komentar" class="form-control" id="nama_komentar" required placeholder="Anonymous">
          </div>
          <div class="form-group">
            <label for="isi_komentar">Isi Komentar</label>
            <textarea name="isi_komentar" id="isi_komentar" class="form-control" name="isi_komentar" required placeholder="Something great"></textarea>
          </div>
          <div class="form-group">
            <button type="submit" name="btnTambahKomentar" class="btn btn-primary"><i class="fas fa-fw fa-paper-plane"></i> Send</button>
          </div>
        </form>
      </div>
      <div style="max-height: 275px; overflow-y: auto;" class="col-lg-6 my-2 text-dark">
        <?php foreach ($komentar as $dk) : ?>
          <?php if ($komentar == NULL) : ?>
            <h3 class="text-white">There are no comments yet</h3>
          <?php endif ?>
          <div class="card">
            <div class="card-body">
              <h5><?= $dk['nama_komentar']; ?></h5>
              <p class="card-text"><?= $dk['isi_komentar']; ?></p>
              <small class="text-muted float-right"><?= date("d-m-Y, H:i:s", $dk['tanggal_komentar']); ?></small>
            </div>
          </div>
        <?php endforeach ?>
      </div>
    </div> -->

    </div>
    <?php include 'include/footer.php'; ?>
</body>
<?php include 'include/js.php'; ?>
</html>