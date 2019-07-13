use veritabani;
go
create procedure sp_film_guncelle
	@film_id int,
	@film_adi text,
	@film_kategori int,
	@film_3d bit,
	@film_afis image
as
begin

update tbl_filmler set film_adi=@film_adi, film_kategori_id=@film_kategori, film_3d=@film_3d, film_afis=@film_afis 
where film_id=@film_id

end
go
exec sp_film_guncelle 62,'Zor Dersler 2 - Kemal Hoca',8,false,null;