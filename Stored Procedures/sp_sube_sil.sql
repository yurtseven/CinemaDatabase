use veritabani;
go
create procedure sp_sube_sil
	@sube_id int
as
begin
	delete from tbl_subeler where sube_id=@sube_id
end

exec sp_sube_sil 10