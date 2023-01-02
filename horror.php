
<?php
require 'koneksi.php';
$film_genre_horror = mysqli_query($koneksi, "SELECT * FROM tb_film INNER JOIN tb_genre ON tb_film.id_genre = tb_genre.id_genre WHERE tb_genre.id_genre = '3' ORDER BY tanggal_diposting DESC");

?>
<!DOCTYPE html>

<html>

<head>
  <?php include 'include/css.php'; ?>
  <style>
    h3 {
      color: white;
    }
  </style>
  <title>TUBE-TUBE</title>
</head>

<body style="background-image: url(assets/img/img_properties/bg-landing.jpg); background-size: cover; background-attachment: fixed;">
  <?php include 'include/navbar.php'; ?>

<!-- card responsif genre horror -->
  <div class="container px-4 rounded-bottom bg-dark">
    <div class="row mb-3 justify-content-center">
      <div class="col-lg">
        <h3>Genre: horror</h3>
        <div class="row row-cols-1 row-cols-md-3 g-4">
        <?php foreach ($film_genre_horror as $df) : ?>
          <div class="col">
            <div class="card">
            <a href="detail_film.php?id_film=<?= $df['id_film']; ?>">
              <img src="<?= $df['cover_film']; ?>" class="card-img-top" alt="...">
              <div class="card-body">
                <h5 class="card-title" style="color: black;"><?= $df['nama_film']; ?></h5>
              </div>
            </a>
            </div>
          </div>
          <?php endforeach; ?>
        </div>
      </div>
    </div>
  </div>
  <?php include 'include/footer.php'; ?>
</body>

