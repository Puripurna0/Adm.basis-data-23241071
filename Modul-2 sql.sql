-- Nama: Puri Purna Magfirah
-- NIM: 23241071
-- Kelas: B 
-- Modul : 2 (SELECT)

-- Membuat database
CREATE DATABASE pti_mart;

-- Menggunakan database
USE pti_mart;

-- cek kolom dalam setiap tabel
DESCRIBE ms_pelanggan;
DESCRIBE ms_produk;


-- SELECT
-- Menggunakan SELECT untuk 1 Tabel
-- Mengambil kolom nama produk dari tabel produk
SELECT nama_produk FROM ms_produk;

-- Mengambil lebih dari satu kolom dari sebuah tabel
SELECT * FROM ms_produk;

-- Latihan 
-- Mengambil kode produk dan nama produk dari tabel produk
SELECT kode_produk, nama_produk FROM ms_produk;

-- Mengambil seluruh kolom dari tabel penjualan
SELECT * FROM tr_penjualan;

-- PREFIX dan ALIAS
-- PREFIX, bagian objek database yang hirarkinya lebih tinggi
-- Menggunakan PREFIX nama tabel untuk kolom nama_produk dari tabel produk
SELECT ms_produk.nama_produk FROM ms_produk;

-- Mengunakan nama database dan tabel sebagai prefix untuk kolom nama_produk
SELECT pti_mart.ms_produk.nama_produk FROM ms_produk;

-- ALIAS, nama sementara untuk objek database
-- Mengganti sementara kolom nama_produk dengan ALIAS
SELECT nama_produk AS np FROM ms_produk;
SELECT nama_produk np FROM ms_produk;

-- Mengganti sementara tabel dengan ALIAS
SELECT nama_produk FROM ms_produk AS msp;

-- Kombinasikan PREFIX dan ALIAS
SELECT msp.nama_produk FROM ms_produk AS msp;

-- case 1
SELECT nama_pelanggan, alamat FROM ms_pelanggan;
-- case 2
SELECT nama_produk, harga FROM ms_produk;






