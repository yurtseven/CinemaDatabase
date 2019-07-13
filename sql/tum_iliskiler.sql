USE veritabani


ALTER TABLE tbl_subeler	
ADD FOREIGN KEY (sube_iletisim_id)
REFERENCES tbl_iletisim (iletisim_id)

ALTER TABLE tbl_seans_ve_koltuklar
ADD FOREIGN KEY (sk_koltuk_id)
REFERENCES tbl_koltuk (koltuk_id)

ALTER TABLE tbl_seans_ve_koltuklar
ADD FOREIGN KEY (sk_seans_id)
REFERENCES tbl_seanslar (seans_id)

ALTER TABLE tbl_seanslar
ADD FOREIGN KEY (seans_film_id)
REFERENCES tbl_filmler (film_id)

ALTER TABLE tbl_seanslar
ADD FOREIGN KEY (seans_salon_id)
REFERENCES tbl_salonlar (salon_id)

ALTER TABLE tbl_salonlar
ADD FOREIGN KEY (salon_sube_id)
REFERENCES tbl_subeler (sube_id)

ALTER TABLE tbl_personel
ADD FOREIGN KEY (personel_iletisim_id)
REFERENCES tbl_iletisim (iletisim_id)

ALTER TABLE tbl_personel
ADD FOREIGN KEY (personel_unvan_id)
REFERENCES tbl_personel_unvan (unvan_id)

ALTER TABLE tbl_personel
ADD FOREIGN KEY (personel_sube_id)
REFERENCES tbl_subeler (sube_id)

ALTER TABLE tbl_koltuk
ADD FOREIGN KEY (koltuk_salon_id)
REFERENCES tbl_salonlar (salon_id)

ALTER TABLE tbl_iletisim
ADD FOREIGN KEY (iletisim_il_id)
REFERENCES tbl_iller (il_id)

ALTER TABLE tbl_iletisim
ADD FOREIGN KEY (iletisim_ilce_id)
REFERENCES tbl_ilceler (ilce_id)

ALTER TABLE tbl_ilceler
ADD FOREIGN KEY (ilce_il_id)
REFERENCES tbl_iller (il_id)

ALTER TABLE tbl_filmler
ADD FOREIGN KEY (film_kategori_id)
REFERENCES tbl_kategori (kategori_id)

ALTER TABLE tbl_bilet
ADD FOREIGN KEY (bilet_seans_ve_koltuk_id)
REFERENCES tbl_seans_ve_koltuklar (seanskoltuk_id)

ALTER TABLE tbl_musteriler	
ADD FOREIGN KEY (musteri_iletisim_id)
REFERENCES tbl_iletisim (iletisim_id)

ALTER TABLE tbl_bilet	
ADD FOREIGN KEY (bilet_musteri_id)
REFERENCES tbl_musteriler (musteri_id)

ALTER TABLE tbl_filmler_ve_yonetmenleri	
ADD FOREIGN KEY (film_ve_yonetmenler_film_id)
REFERENCES tbl_filmler (film_id)