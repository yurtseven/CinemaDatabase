use veritabani;
go
create procedure sp_film_sil
	@film_id int
as
begin
	delete from tbl_filmler where film_id=@film_id
end

exec sp_film_sil 61

