CREATE TABLE tbl_ilceler(
ilce_id int NOT NULL,
isim TEXT,
il_id int NOT NULL,
CONSTRAINT fk_il_id FOREIGN KEY (il_id)
REFERENCES tbl_iller(il_id)
);
 