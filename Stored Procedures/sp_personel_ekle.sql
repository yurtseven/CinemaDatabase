use veritabani;
go
create procedure sp_personel_ekle

	@personel_sube_id int,
	@personel_adi text,
	@personel_soyadi text,
	@personel_iletisim_id int,
	@personel_unvan_id int
	

as
begin
	
	insert into tbl_personel(personel_sube_id, personel_adi, personel_soyadi, personel_iletisim_id, personel_unvan_id) 
	values (@personel_sube_id, @personel_adi, @personel_soyadi, @personel_iletisim_id, @personel_unvan_id)
end
go

exec sp_personel_ekle 1,'Tuðba','Kurt',1,2 