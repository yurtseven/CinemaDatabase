use veritabani;
go
create procedure sp_koltuk_ekle

	@koltuk_salon_id int,
	@koltuk_no text

as
begin
	insert into tbl_koltuk(koltuk_salon_id, koltuk_adi) values (@koltuk_salon_id,@koltuk_no)
end
go

exec sp_koltuk_ekle 1,'Emre'