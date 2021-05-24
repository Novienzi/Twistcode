CREATE DATABASE twiscode

-- NO 1
CREATE TABLE `transaksi` (
  `id` varchar(36) PRIMARY KEY NOT NULL,
  `Tanggal_Order` datetime NOT NULL,
  `Status_Pelunasan` varchar(10) NOT NULL,
  `Tanggal_Pembayaran` datetime NULL
);

INSERT INTO transaksi VALUES 
(uuid(),now(),"waiting",Null);
(uuid(),"2021-05-23 16:53:00","lunas","2021-05-24 16:53:00")

-- NO 2

CREATE TABLE `detail_transaksi` (
  `id` varchar(36) PRIMARY KEY NOT NULL,
  `id_Transaksi` varchar(36) NOT NULL,
  `harga` varchar(10) NOT NULL,
  `jumlah` varchar(10) NOT NULL,
  `subtotal` varchar(10) NOT NULL
);

ALTER TABLE detail_transaksi ADD FOREIGN KEY (id_transaksi) REFERENCES transaksi(id);

INSERT INTO detail_transaksi VALUES
(uuid(),"e9ff2eab-bc77-11eb-97ef-081196821f00","5000","2","10000")

-- NO 3
SELECT t.id ,t.Tanggal_Order, t.Status_Pelunasan, t.Tanggal_Pembayaran, dt.jumlah , dt.subtotal 
FROM transaksi t 
INNER JOIN detail_transaksi dt 