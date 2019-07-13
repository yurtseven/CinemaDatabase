use veritabani;
go

create procedure sp_kategoriye_gore_film_listeleme
@kategori_id int
as
begin
select  film_adi,kategori_adi from tbl_filmler join tbl_kategori on kategori_id=film_kategori_id where kategori_id=@kategori_id
end

exec sp_kategoriye_gore_film_listeleme 1 