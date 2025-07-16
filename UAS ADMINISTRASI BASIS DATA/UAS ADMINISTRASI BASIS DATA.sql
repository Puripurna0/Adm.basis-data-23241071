-- Mata kuliah : Administrasi data

USE pti_mart;

-- Soal 1
/*Munculkan kode pelanggan, nama produk, jumlah, harga, dan total dari semua produk yang pernah ditransaksikan, 
nama output yang diminta adalah total harga minimal 200.000 dan di urutkan berdasarkan total harga terkecil*/
SELECT kode_pelanggan, SUM(jumlah * harga) AS total_harga
FROM transaksi 
GROUP BY kode_pelanggan
HAVING SUM(jumlah * harga) >= 200000
ORDER BY total_harga ASC;


-- soal 2
/*tampilkan nama pelanggan dan nilai transaksinya dengan nilai transaksi terbesar*/
SELECT nama_pelanggan,
