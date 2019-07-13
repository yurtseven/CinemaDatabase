use veritabani;
go
create procedure sp_musteri_sil
	@musteri_id int
as
begin
	delete from tbl_musteriler where musteri_id=@musteri_id
end

exec sp_musteri_sil 65