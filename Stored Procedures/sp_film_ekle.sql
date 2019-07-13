use veritabani;
go
create procedure sp_film_ekle

	@film_adi text,
	@film_kategori int,
	@film_3d bit,
	@film_afis image

as
begin
	
	insert into tbl_filmler(film_adi,film_kategori_id,film_3d,film_afis) values (@film_adi,@film_kategori,@film_3d,@film_afis)
end
go

exec sp_film_ekle 'Zor Dersler 2',8,false,null;