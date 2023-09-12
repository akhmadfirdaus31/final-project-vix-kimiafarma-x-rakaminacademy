-- Define primary key table penjualan
SELECT CONCAT(id_invoice,'_',id_barang) AS id_penjualan, *
FROM `vix-rakamin-kimiafarma.final_projectvix_kimiafarma.penjualan`;

-- Create table base penjualan_ds
SELECT CONCAT(id_invoice,'_',id_barang) AS id_penjualan,
penjualan_ds.id_invoice,
penjualan_ds.tanggal,
penjualan_ds.id_barang,
barang_ds.nama_barang,
penjualan_ds.harga,
penjualan_ds.unit,
penjualan_ds.jumlah_barang,
(jumlah_barang * penjualan_ds.harga) AS total_harga_per_barang,
penjualan_ds.mata_uang,
barang_ds.kode_brand,
barang_ds.brand,
penjualan_ds.id_customer,
pelanggan_ds.nama AS nama_customer,
pelanggan_ds.cabang_sales,
pelanggan_ds.id_distributor,
pelanggan_ds.group AS group_category,
FROM `vix-rakamin-kimiafarma.final_projectvix_kimiafarma.penjualan_ds` AS penjualan_ds
LEFT JOIN `vix-rakamin-kimiafarma.final_projectvix_kimiafarma.barang_ds` AS barang_ds
ON (penjualan_ds.id_barang = barang_ds.kode_barang)
LEFT JOIN `vix-rakamin-kimiafarma.final_projectvix_kimiafarma.pelanggan_ds`AS pelanggan_ds
ON (penjualan_ds.id_customer = pelanggan_ds.id_customer);

-- Create table aggregate penjualan harian
SELECT
id_invoice, tanggal,
id_customer, nama_customer, cabang_sales,
id_group, group_category,
COUNT(DISTINCT id_barang) AS total_barang, SUM(total_harga_per_barang) AS total_pembelian
FROM `vix-rakamin-kimiafarma.final_projectvix_kimiafarma.table_base_penjualan`
GROUP BY 1,2,3,4,5,6,7
ORDER BY 1;