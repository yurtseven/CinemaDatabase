use veritabani;
go
create procedure sp_koltuk_sil
	@salon_koltuk_id int,
	@koltuk_id int
as
begin
	delete from tbl_koltuk where koltuk_salon_id=@salon_koltuk_id and koltuk_id=@koltuk_id
end

exec sp_koltuk_sil 1,470 