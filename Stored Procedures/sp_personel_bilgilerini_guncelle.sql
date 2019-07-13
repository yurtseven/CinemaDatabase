use veritabani;
go
create procedure sp_personel_bilgilerini_guncelle
	
	@personel_sube_id int,
	@personel_id int,
	@personel_adi text,
	@personel_soyadi text,
	@personel_iletisim_id int,
	@personel_unvan_id int

as
begin

update tbl_personel set personel_adi=@personel_adi, personel_soyadi=@personel_soyadi, personel_iletisim_id=@personel_iletisim_id, personel_unvan_id=@personel_unvan_id
where personel_id=@personel_id and personel_sube_id=@personel_sube_id

end
go
exec sp_personel_bilgilerini_guncelle 1,3,'Emre','Yurtseven',3,1