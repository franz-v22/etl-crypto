/*
---------- CREATE TABLA CRYPTO ----------  	
*/
--ddl
CREATE TABLE fz_velasco22_coderhouse.crypto (
    simbolo VARCHAR(50) PRIMARY KEY NOT NULL,
    uuid VARCHAR(20) NOT NULL,
    nombre VARCHAR(50) NOT NULL,
    iconoUrl VARCHAR(100) NOT NULL,
    nivel INT NOT NULL
);

--dml
insert into fz_velasco22_coderhouse.crypto values ('BTC','Qwsogvtv82FCd', 'Bitcoin', 'https://cdn.coinranking.com/bOabBYkcX/bitcoin_btc.svg', 1);
insert into fz_velasco22_coderhouse.crypto values ('ETH','razxDUgYGNAdQ', 'Ethereum', 'https://cdn.coinranking.com/rk4RKHOuW/eth.svg', 1);
insert into fz_velasco22_coderhouse.crypto values ('USDT','HIVsRcGKkPFtW', 'Tether USD', 'https://cdn.coinranking.com/mgHqwlCLj/usdt.svg', 1);
insert into fz_velasco22_coderhouse.crypto values ('BNB','WcwrkfNI4FUAe', 'BNB', 'https://cdn.coinranking.com/B1N19L_dZ/bnb.svg', 1);
commit;



/*
---------- CREATE TABLA ETL_CRYPTO ---------- 
*/
--ddl
CREATE TABLE fz_velasco22_coderhouse.etl_crypto (
    id_etl_crypto INT PRIMARY KEY NOT NULL,
    simbolo VARCHAR(50) NOT NULL,
    Salario DECIMAL(10, 2) NOT NULL
);

ALTER TABLE fz_velasco22_coderhouse.etl_crypto
ADD CONSTRAINT fk_simbolo
FOREIGN KEY (simbolo)
REFERENCES fz_velasco22_coderhouse.crypto(simbolo);

--dml
insert into fz_velasco22_coderhouse.etl_crypto values (1, 'BTC', 1234,22);
insert into fz_velasco22_coderhouse.etl_crypto values (2, 'ETH', 123,24);
insert into fz_velasco22_coderhouse.etl_crypto values (3, 'USDT', 456,26);
insert into fz_velasco22_coderhouse.etl_crypto values (4, 'BNB', 88,28);
commit;