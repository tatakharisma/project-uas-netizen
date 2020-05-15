-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 15 Bulan Mei 2020 pada 17.28
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.3.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `beritaonline`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `nama`, `email`, `password`, `status`) VALUES
(1, 'Ilma', 'netijen@gmail.com', '12345', 'active');

-- --------------------------------------------------------

--
-- Struktur dari tabel `berita`
--

CREATE TABLE `berita` (
  `id` int(11) NOT NULL,
  `judul` varchar(225) DEFAULT NULL,
  `isi_berita` longtext DEFAULT NULL,
  `tgl_input` date DEFAULT NULL,
  `gambar` varchar(45) DEFAULT NULL,
  `title` varchar(100) NOT NULL,
  `kategori_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `berita`
--

INSERT INTO `berita` (`id`, `judul`, `isi_berita`, `tgl_input`, `gambar`, `title`, `kategori_id`) VALUES
(1, 'Transfer Ronaldo Ke Juventus', 'Ronaldo pindah ke juventus dengan harga fanta Ronaldo pindah ke juventus dengan harga fanta Ronaldo pindah ke juventus dengan harga fanta Ronaldo pindah ke juventus dengan harga fanta Ronaldo pindah ke juventus dengan harga fanta Ronaldo pindah ke juventu Ronaldo pindah ke juventus dengan harga fanta Ronaldo pindah ke juventus dengan harga fanta Ronaldo pindah ke juventus dengan harga fanta Ronaldo pindah ke juventus dengan harga fanta Ronaldo pindah ke juventus dengan harga fanta Ronaldo pindah ke juventu Ronaldo pindah ke juventus dengan harga fanta Ronaldo pindah ke juventus dengan harga fanta Ronaldo pindah ke juventus dengan harga fanta Ronaldo pindah ke juventus dengan harga fanta Ronaldo pindah ke juventus dengan harga fanta Ronaldo pindah ke juventu Ronaldo pindah ke juventus dengan harga fanta Ronaldo pindah ke juventus dengan harga fanta Ronaldo pindah ke juventus dengan harga fanta Ronaldo pindah ke juventus dengan harga fanta Ronaldo pindah ke juventus dengan harga fanta Ronaldo pindah ke juventu....', '2020-05-04', 'assets/image/cristiano-ronaldo-ju_a018833.jpg', 'populer', 1),
(2, 'Mie Ayam Setan', 'Mie Ayam sekarang banyak di gemariMie Ayam sekarang banyak di gemariMie Ayam sekarang banyak di gemariMie Ayam sekarang banyak di gemariMie Ayam sekarang banyak di gemariMie Ayam sekarang banyak di gemariMie Ayam sekarang banyak di gemariMie Ayam sekarang banyak di gemariMie Ayam sekarang banyak di gemariMie Ayam sekarang banyak di gemariMie Ayam sekarang banyak di gemariMie Ayam sekarang banyak di gemariMie Ayam sekarang banyak di gemariMie Ayam sekarang banyak di gemariMie Ayam sekarang banyak di gemariMie Ayam sekarang banyak di gemariMie Ayam sekarang banyak di gemariMie Ayam sekarang banyak di gemari', '2020-05-19', 'assets/image/pop.jpeg', 'populer', 2),
(3, 'ganjar sindir soal kenaikai iuran bpjs', 'Ganjar Pranowo Sebut Langkah Jokowi Naikkan Iuran BPJS Kesehatan Cukup Berisiko dalam Politik\r\nArtikel ini telah tayang di Tribunnews.com dengan judul Ganjar Pranowo Sebut Langkah Jokowi Naikkan Iuran BPJS Kesehatan Cukup Berisiko dalam Politik,', '2020-05-15', 'assets/image/ganjar.jpg', 'populer', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id` int(11) NOT NULL,
  `nama_kategori` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id`, `nama_kategori`) VALUES
(1, 'Sport'),
(2, 'Food'),
(3, 'Politik');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_berita_kategori` (`kategori_id`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `berita`
--
ALTER TABLE `berita`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1155;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `berita`
--
ALTER TABLE `berita`
  ADD CONSTRAINT `fk_berita_kategori` FOREIGN KEY (`kategori_id`) REFERENCES `kategori` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
