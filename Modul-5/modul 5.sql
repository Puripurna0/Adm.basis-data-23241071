-- Nama: Puri Purna Magfirah
-- Nim: 23241071
-- Kelas: PTI B/4
-- MK: Modul 5 : JOIN, UNI0N, LIMIT

-- menggunakan database 
USE pti_mart;

-- JOIN
-- Menggambungkan dua buah tabel berdasarkan kolom yang sama

-- Praktek 1
-- Ambil nama pelanggan yang pernah bertransaksi beserta qty nya
-- artinya ambil kolom kode_pelanggan, nama_pelanggan, dan qty dari
-- penggabungan tabel penjualan dan tabel pelanggan 

SELECT tp.kode_pelanggan, mp.nama_pelanggan, qty
FROM tr_penjualan as tp
JOIN ms_pelanggan as mp
ON tp.kode_pelanggan = mp.kode_pelanggan;

-- Praktek 2
-- Menggambungkan dua tabel tanpa memperhatikan relational keys
-- Ambil nama pelanggan yang pernah bertransaksi beserta qty nya
-- menggambungkan tabel penjualan dan tabel pelanggan tanpa
-- memperhatikan kolom yang menjadi primary key

SELECT tp.kode_pelanggan, mp.nama_pelanggan, qty
FROM tr_penjualan as tp
JOIN ms_pelanggan as mp
ON TRUE;

-- INNER JOIN
-- Join yang mengambil data dari dua sisi tabel yang berhubungan
-- Praktek 3
-- Ambil kode pelanggan, nama_pelanggan, nama_produk, qty
-- dari hasil join tabel penjualan dan tabel pelanggan

SELECT tp.kode_pelanggan, mp.nama_pelanggan, tp.nama_produk, tp.qty
FROM tr_penjualan as tp
INNER JOIN ms_pelanggan as mp
ON tp.kode_pelanggan = mp.kode_pelanggan;

 