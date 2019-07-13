use veritabani;
go
create procedure sp_seans_sil
	@seans_id int
	
as
begin
	delete from tbl_seanslar where @seans_id=seans_id
end

exec sp_seans_sil 1531