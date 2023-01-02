<?php 
require 'koneksi.php';
$keyword = $_GET["keyword"];
$query = "SELECT * FROM tb_film
			WHERE
			nama_film LIKE '%$keyword%'
      ORDER BY nama_film ASC";
$film = mysqli_query($koneksi, $query);

 ?>

<?php foreach ($film as $df): ?>
  <a href="detail_film.php?id_film=<?= $df['id_film']; ?>">
    <div class="row text-dark no-gutters">
      <!-- <div class="col-md-4">
        <img src="<?= $df['cover_film']; ?>" class="card-img" alt="<?= $df['cover_film']; ?>">
      </div> -->
      <div class="row-md-8">
        <div class="card-body">
        <img src="<?= $df['cover_film']; ?>" class="card-img" alt="<?= $df['cover_film']; ?>">
          <h5><?= $df['nama_film']; ?></h5>
      </div>
    </div>
  </a>
<?php endforeach ?>
