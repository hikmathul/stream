-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 02 Jan 2023 pada 09.22
-- Versi server: 10.4.17-MariaDB
-- Versi PHP: 7.4.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `streaming`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_film`
--

CREATE TABLE `tb_film` (
  `id_film` int(10) NOT NULL,
  `nama_film` varchar(100) NOT NULL,
  `link_film` varchar(100) NOT NULL,
  `link_download` varchar(200) NOT NULL,
  `cover_film` text NOT NULL,
  `tanggal_diposting` int(11) NOT NULL,
  `id_genre` int(10) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_film`
--

INSERT INTO `tb_film` (`id_film`, `nama_film`, `link_film`, `link_download`, `cover_film`, `tanggal_diposting`, `id_genre`, `id_user`) VALUES
(26, 'aa3', 'Https://dood.re/e/s31lszy8grs2x2jhsuklobdcy1xbfbp4', 'Https://dood.re/d/ql5i6m171cl4dm5ui82d1ibxkggyy2lp', 'https://img.doodcdn.com/snaps/2jt6c4705nt4igax.jpg', 1672544016, 3, 5),
(27, 'Petualangan', 'Https://dood.re/e/s31lszy8grs2x2jhsuklobdcy1xbfbp4', 'Https://dood.re/d/ql5i6m171cl4dm5ui82d1ibxkggyy2lp', 'https://img.doodcdn.com/snaps/2jt6c4705nt4igax.jpg', 1672543203, 6, 5),
(28, 'Test Aksi', 'Https://dood.re/e/s31lszy8grs2x2jhsuklobdcy1xbfbp4', 'Https://dood.re/d/ql5i6m171cl4dm5ui82d1ibxkggyy2lp', 'https://img.doodcdn.com/snaps/2jt6c4705nt4igax.jpg', 1672545151, 1, 5),
(29, 'Aaa', 'https://dood.re/e/6aj6eoen6b0kpfvf5036gio208xaj9f1', 'https://dood.re/d/kxg30r7bp93yz7xa5p4nbtky8euny0pk', 'https://img.doodcdn.com/snaps/2jt6c4705nt4igax.jpg', 1672640863, 1, 5),
(30, 'Aaaav', 'https://dood.re/e/6aj6eoen6b0kpfvf5036gio208xaj9f1', 'https://dood.re/d/ql5i6m171cl4dm5ui82d1ibxkggyy2lp', 'https://img.doodcdn.com/snaps/2jt6c4705nt4igax.jpg', 1672640886, 1, 5),
(31, '31', 'https://dood.re/e/6aj6eoen6b0kpfvf5036gio208xaj9f1', 'https://dood.re/d/kxg30r7bp93yz7xa5p4nbtky8euny0pk', 'https://img.doodcdn.com/snaps/2jt6c4705nt4igax.jpg', 1672641243, 1, 5),
(32, '00i0ioijionkjnjkn', 'https://dood.re/e/s31lszy8grs2x2jhsuklobdcy1xbfbp4', 'https://dood.re/d/ql5i6m171cl4dm5ui82d1ibxkggyy2lp', 'https://img.doodcdn.com/snaps/2jt6c4705nt4igax.jpg', 1672641277, 1, 5),
(33, 'Test Download', 'https://dood.re/e/6aj6eoen6b0kpfvf5036gio208xaj9f1', 'https://dood.re/d/rd2zjyycao8g', 'https://img.doodcdn.com/snaps/2jt6c4705nt4igax.jpg', 1672643021, 1, 5),
(34, 'Komedi Test', 'https://dood.re/e/6aj6eoen6b0kpfvf5036gio208xaj9f1', 'https://dood.re/d/rd2zjyycao8g', 'https://img.doodcdn.com/snaps/2q1s8ajaddmf1v19.jpg', 1672644753, 2, 5),
(35, 'Animasi Test', 'https://dood.re/e/6aj6eoen6b0kpfvf5036gio208xaj9f1', 'https://dood.re/d/rd2zjyycao8g', 'https://img.doodcdn.com/snaps/2jt6c4705nt4igax.jpg', 1672645073, 4, 5),
(36, 'Drama Test', 'https://dood.re/e/s31lszy8grs2x2jhsuklobdcy1xbfbp4', 'https://dood.re/d/rd2zjyycao8g', 'https://img.doodcdn.com/snaps/2jt6c4705nt4igax.jpg', 1672645248, 5, 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_genre`
--

CREATE TABLE `tb_genre` (
  `id_genre` int(10) NOT NULL,
  `nama_genre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_genre`
--

INSERT INTO `tb_genre` (`id_genre`, `nama_genre`) VALUES
(1, 'Aksi'),
(2, 'Komedi'),
(3, 'Horor'),
(4, 'Animasi'),
(5, 'Drama'),
(6, 'Petualangan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_komentar`
--

CREATE TABLE `tb_komentar` (
  `id_komentar` int(10) NOT NULL,
  `nama_komentar` varchar(50) NOT NULL,
  `isi_komentar` text NOT NULL,
  `tanggal_komentar` int(11) NOT NULL,
  `id_film` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_komentar`
--

INSERT INTO `tb_komentar` (`id_komentar`, `nama_komentar`, `isi_komentar`, `tanggal_komentar`, `id_film`) VALUES
(76, 'Alfred', 'Just one word! AMAZING', 1590495797, 6),
(77, 'Jack', 'Masi belom move on dari #AvengersEndgame, kagum ngebayangin skripnya, bisa buat film superhero rasa film festival dengan nilai-nilai humanis dan kekeluargaan yg kuat jadi pas momen dihadirkan realita yg getir atau pait pecahlah itu kantong mata. Scoringnya jg gila bgt sih!', 1590495796, 6),
(78, 'Fath Fathan', 'Yeaah, already watching Avengers Endgame this morning is cool and all... but, do you know there is something way cooler than that? Not spoiling any of its material to Internet. Enjoy your watch guys!', 1590495796, 6),
(79, 'Dwinda', 'Russo bersaudara, baru rampung menonton Avengers: Endgame, kalian membuat ini amat amat bagus, saya tak bisa menahan diri selain menangis', 1590495796, 6),
(80, 'Radile', 'sepertinya harus menjauhi media sosial beberapa hari sampai tiba waktu dimana diri ini nonton #AvengersEndgame', 1590495796, 6),
(81, 'Cahya Septyanto', 'Doaku pagi ini: Ya allah, tolong lancarkan dan mudahkan lah saya dan teman2 saya yang nanti malam akan menunaikan Avengers: Endgame. Tolong jauhkan lah kami dari Spoiler terkutuk dan orang2 reseh yg berisik ketika nonton. Dan tolong lindungilah Iron man serta Team Avenger nya,', 1590495796, 6),
(82, 'Brandon Davis', 'Avengers: Endgame adalah film yang menakjubkan dan film yang luar biasa. Saya belum pernah melihat yang seperti ini. Film ini semua yang saya mau dan LEBIH banyak lagi. Luar biasa', 1590495796, 6),
(83, 'Catey Sullivan', 'The best part of Far From Home is Samuel L. Jackson, whose Nick Fury single-handedly elevates the movie from a C to a B+.', 1590495796, 9),
(84, 'Bob Mondelo', 'The stakes this time turn out to be considerably lower, and your friendly neighborhood Spider-Teen is arguably just the guy to bring things down to Earth and reestablish a human scale.', 1590495796, 9),
(85, 'Chris Hewitt', '\r\n\r\n I like that \"Far From Home\" is trying something new and that its humor feels more real than the ironic cracks in most superhero movies. I just wish its good pieces all came together more satisfyingly. ', 1590495796, 9),
(86, 'Crishtoper', 'Not as good as the first film but well acted by Tom Holland and company. It is almost essential you have seen the last Avengers film to fully understand this film. THe villain is kinda ho hum but I enjoyed the film.\r\n', 1590495796, 9),
(87, 'Dann', 'Spider-Man hits the road in Spider-Man: Far From Home. Peter Parker European school trip is interrupted when a superhero named Mysterio, who from an alternate Earth, shows up and asked for his help to defeat an Elemental. Unfortunately, as the first post-Endgame Marvel film, Far From Home has the extra burden of resetting the Marvel Universe; which comes off as kind of awkward in this story about a high school trip. And while it does some good things with Parker dealing with the loss of his mentor (Tony Stark), theres too much Iron Man in this Spider-Man movie. A mess from start to finish (though still entertaining), Spider-Man: Far From Home is disappointing both as a MCU film and a Spider-Man film. ', 1590495796, 9),
(88, 'Paul Grimes', 'Fun, lively, high school spirit as Tom Holland is the best Spider-Man to date. No Marvel fatigue with this one. ', 1590495796, 9),
(89, 'Putri Laksmiwati', 'Filmnya seru bikin pengen nonton dua kali. Awesome pokoknya, gak sia sia mesen tiket dari jauh hari dan penantian panjang terbalas dengan film ketje ini', 1590495796, 13),
(90, 'Pangestu Simbolon', 'Overall bagus sih, tapi rasanya enak film film sebelumnya', 1590495796, 13),
(91, 'Pangestu Simbolon', 'GGWP', 1590495796, 13),
(92, 'Jhon', 'Pahlawan kok berantem :v', 1590495796, 14),
(93, 'Cena', 'Filmnya bagus gilsss. nunggu download-annya rilis. mau nonton ulang di rumah, aksinya lebih menantang ketimbang lawan vilain lain', 1590495796, 14),
(94, 'The', 'Yakali gak kuy, fans DC harus liat film ini. semoga masih kebagian tiket nonton di awal tanggal tayang. Rela nebok celengan buat beli tikenya :(', 1590495796, 14),
(95, 'Rock', 'Halah pahlawan diadu kayak gak ada drama lain aja. Penjahat stoknya abis? film kayak gini aja ditunggu. Tapi kayaknya seru, kapan lagi liat pahlawan berantem, aksinya juga kebayang bisa lebih rame. WAJIB BANGET buat nonton. Besok mesen tiketnya ah :v', 1590495796, 14),
(96, 'Rey', 'Skut', 1590495796, 14),
(97, 'Mister', 'Lagi trend banget ya pahlawan melawan pahlawan, gak DC gak Marvel', 1590495796, 14),
(98, 'Rio', 'Dim dim pak dim dim oy dim dim pak dim dim', 1590495796, 14),
(104, 'Mr', 'Kocag :v', 1590495796, 7),
(105, 'Bean', 'Gak ketebak alur ceritanya, komedinya walau absurd tapi keren. bikin keseruan sendiri wkwkw', 1590495796, 7),
(106, 'Tuan', 'Cocok nonton bareng keluarga. Family times\r\n', 1590495796, 7),
(107, 'Buncis', 'Nunggu bajakan awokokoko', 1590495796, 7),
(108, 'Mr', 'Cup 1 kata, kocag :v', 1590495796, 8),
(109, 'Bean', 'Idem sama yg bilang kocag', 1590495796, 8),
(110, 'Tuan', 'Idem', 1590495796, 8),
(111, 'Buncis', 'Idem', 1590495796, 8),
(114, 'Anonim', 'Filmnya Bagus', 1590769117, 3),
(115, 'anonimos', 'iya bener bagus', 1590769173, 3),
(116, 'Spider loverss', 'kerennnn bgttt', 1590769268, 4),
(117, 'anonim', 'GG', 1652460850, 4),
(118, 'anonim', 'Mantap', 1652460862, 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_laporan`
--

CREATE TABLE `tb_laporan` (
  `id_laporan` int(11) NOT NULL,
  `id_film` int(11) NOT NULL,
  `nama_film` varchar(100) NOT NULL,
  `tanggal_laporan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_laporan`
--

INSERT INTO `tb_laporan` (`id_laporan`, `id_film`, `nama_film`, `tanggal_laporan`) VALUES
(6, 24, 'Aaa2', 1672496658),
(7, 25, 'AA2', 1672497110),
(8, 26, 'Aa3', 1672498167);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_riwayat`
--

CREATE TABLE `tb_riwayat` (
  `id_riwayat` int(10) NOT NULL,
  `id_user` int(10) NOT NULL,
  `tindakan` text NOT NULL,
  `tanggal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_riwayat`
--

INSERT INTO `tb_riwayat` (`id_riwayat`, `id_user`, `tindakan`, `tanggal`) VALUES
(68, 5, 'Berhasil mengubah film aa3', 1672544016),
(69, 5, 'Berhasil menambahkan film Test Aksi', 1672545151),
(70, 5, 'Berhasil menambahkan film Aaa', 1672640863),
(71, 5, 'Berhasil menambahkan film Aaaav', 1672640886),
(72, 5, 'Berhasil menambahkan film 31', 1672641243),
(73, 5, 'Berhasil menambahkan film 00i0ioijionkjnjkn', 1672641277),
(74, 5, 'Berhasil menambahkan film Test Download', 1672643021),
(75, 5, 'Berhasil menambahkan film Komedi Test', 1672644753),
(76, 5, 'Berhasil menambahkan film Animasi Test', 1672645073),
(77, 5, 'Berhasil menambahkan film Drama Test', 1672645248);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` int(10) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `photo_profile` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `username`, `password`, `nama_lengkap`, `photo_profile`) VALUES
(1, 'andri123', '$2y$10$Vi80wvdPtIx1W4MWV.wtpOxaCR67S/XzRQkxOJbMknJNaFIfaJGuW', 'Admin', '63b0281dec024.png'),
(5, 'roy123', '$2a$12$oGJbzH4ZN8BHUF7Mgbs9Xu6nDyFfgx.jt3QLPGyqdPS5MxMPQDfrS', 'royadi', '009097979790.jpg');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_film`
--
ALTER TABLE `tb_film`
  ADD PRIMARY KEY (`id_film`),
  ADD KEY `relasi_genre` (`id_genre`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `tb_genre`
--
ALTER TABLE `tb_genre`
  ADD PRIMARY KEY (`id_genre`);

--
-- Indeks untuk tabel `tb_komentar`
--
ALTER TABLE `tb_komentar`
  ADD PRIMARY KEY (`id_komentar`),
  ADD KEY `relasi_komentar` (`id_film`);

--
-- Indeks untuk tabel `tb_laporan`
--
ALTER TABLE `tb_laporan`
  ADD PRIMARY KEY (`id_laporan`);

--
-- Indeks untuk tabel `tb_riwayat`
--
ALTER TABLE `tb_riwayat`
  ADD PRIMARY KEY (`id_riwayat`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_film`
--
ALTER TABLE `tb_film`
  MODIFY `id_film` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT untuk tabel `tb_genre`
--
ALTER TABLE `tb_genre`
  MODIFY `id_genre` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `tb_komentar`
--
ALTER TABLE `tb_komentar`
  MODIFY `id_komentar` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT untuk tabel `tb_laporan`
--
ALTER TABLE `tb_laporan`
  MODIFY `id_laporan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `tb_riwayat`
--
ALTER TABLE `tb_riwayat`
  MODIFY `id_riwayat` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id_user` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
