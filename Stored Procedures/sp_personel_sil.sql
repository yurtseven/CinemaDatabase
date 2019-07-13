use veritabani;
go
create procedure sp_personel_sil
	@personel_sube_id int,
	@personel_id int
as
begin
	delete from tbl_personel where @personel_sube_id=personel_sube_id and personel_id=@personel_id
end

exec sp_personel_sil 1,102