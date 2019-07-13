use veritabani;
go
create procedure sp_film_afis_ekle
	@film_id int,
	@film_afis image
as
begin

update tbl_filmler set film_afis=@film_afis 
where film_id=@film_id

end
go
exec sp_film_afis_ekle 30,'C:\Users\Emre\Desktop\images\30.jpeg'