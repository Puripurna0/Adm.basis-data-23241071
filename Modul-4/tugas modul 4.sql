-- Nama : Puri Purna Magfirah
-- Kelas : B PTI / 4
-- NIM : 23241071
-- MK : Administrasi Basis Data ( Latihan Mandiri )

-- Menggunakan Database
 USE pti_mart;

-- tampilkan semua kolom dari transaksi penjualan yang memiliki diskon dan diurutkan berdasarkan harga tertinggi
SELECT *
FROM tr_penjualan
WHERE diskon_persen > 0
ORDER BY harga DESC;

-- tampilkan kolom nama produk, kuantitas pembelian dan harga dari transaksi penjualan 
-- yang memiliki harga minimal Rp.100.000 dan diurutkan berdasarkan harga tertinggi 
SELECT nama_produk, qty, harga
FROM tr_penjualan
WHERE harga >= 100000
ORDER BY harga DESC;

-- 3 
 SELECT nama_produk, harga, qty, diskon_persen, qty*harga AS total_harga,
 ((qty*harga) - ((diskon_persen/100)*harga)) AS total_bayar
 FROM tr_penjualan
 WHERE diskon_persen > 50 OR nama_produk LIKE 'T%'
 ORDER BY diskon_persen DESC, total_bayar DESC;