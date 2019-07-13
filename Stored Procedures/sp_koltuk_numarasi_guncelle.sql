use veritabani;
go
create procedure sp_koltuk_numarasi_guncelle

	@salon_koltuk_id int,
	@koltuk_id int,
	@koltuk_adi text
	
as
begin

update tbl_koltuk set koltuk_adi=@koltuk_adi
where @salon_koltuk_id=koltuk_salon_id and koltuk_id=@koltuk_id

end
go
exec sp_koltuk_numarasi_guncelle 1,2,'KOLTUK 1'