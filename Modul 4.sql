 -- Nama: Puri Purna Magfirah
 -- NIM: 23241071
 -- Kelas: B PTI 4
 -- Modul: ORDER BY, Fungsi Agregasi, GROUP BY, HAVING
 
 -- Menggunakan Database
 USE pti_mart;
 
 -- ORDER BY
 -- Ambil nama produk dan qty dari tabel penjualan urutkan qty
 SELECT nama_produk, qty FROM tr_penjualan ORDER BY qty;
 
 -- Ambil nama produk dan qty dari tb penjualan urutkan qty dan nama produk
 SELECT nama_produk, qty FROM tr_penjualan ORDER BY qty, nama_produk;
 
 -- Latihan Mandiri 1
 -- Tampilkan semua kolom dari tabel penjualan dengan mengurutkan berdasarkan qty dan tanggal transaksi
 SELECT * FROM tr_penjualan ORDER BY qty ASC, tgl_transaksi ASC;
 
 -- Tampilkan semua kolom dari tabel ms pelanggan dengan mengurutkan berdasarkan nama pelanggan
 SELECT * FROM ms_pelanggan ORDER BY nama_pelanggan ASC;
 
 -- Tampilkan semua kolom dari tabel ms pelanggan  dengan mengurutkan berdasarkan alamat
 SELECT * FROM ms_pelanggan ORDER BY alamat ASC;
 
 -- ORDER BY ASC dan desc
 -- Ambil nama produk, qty dari tb penjualan urutkan qty besar ke kecil
 SELECT nama_produk, qty FROM tr_penjualan ORDER BY qty DESC;
 
 -- Ambil nama produk, qty dari tb penjualan urutkan qty dan nama produk besar ke kecil
 SELECT nama_produk, qty FROM tr_penjualan ORDER BY qty DESC, nama_produk DESC;
 
 -- Latihan Mandiri 2
 -- tampilkan semua kolom dari tabel tr penjualan dengan mengurutkan berdasarkan
 -- tanggal transaksi secara descending dan qty secara ascending
 SELECT * FROM tr_penjualan ORDER BY tgl_transaksi DESC, qty ASC;
 
 -- tampilakan semua kolom dari tabel ms pelanggan dengan mengurutkan berdasarkan
 -- nama pelanggan secara descending
 SELECT * FROM ms_pelanggan ORDER BY nama_pelanggan DESC;
 
 -- tampilkan semua kolom dari tabel ms pelanggan dengan mengurutkan berdasarkan
 -- alamat secara descending
 SELECT * FROM ms_pelanggan ORDER BY alamat DESC;
 
 -- ORDER BY dari hasil perhitungan 
 -- Ambil nama produk, qty, harga, harga*qty dari tb penjualan urutkan harga*qty besar-kecil
 SELECT nama_produk, harga	, qty, harga*qty AS total
 FROM tr_penjualan
 ORDER BY total DESC;
 
 -- Latihan Mandiri 3
 -- Cobalah pengurutan dengan ekspresi total harga menggunakan rumusan jumlah barang
 -- dikali harga barang dikurangi diskon
 SELECT nama_produk, harga, qty, diskon_persen, qty*harga AS total_harga,
 ((qty*harga) - ((diskon_persen/100)*harga)) AS total_bayar
 FROM tr_penjualan
 WHERE diskon_persen > 0
 ORDER BY diskon_persen DESC, total_bayar DESC;
 
 -- ORDER BY menggunakan WHERE
 -- Ambil nama produk, qty dari tb penjualan yang nama produk berawalan huruf 'f' urut qty
 SELECT nama_produk, qty
 FROM tr_penjualan 
 WHERE nama_produk LIKE 'f%'
 ORDER BY qty DESC;
 

 
 
 
 