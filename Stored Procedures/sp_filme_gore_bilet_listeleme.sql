use veritabani;
go

create procedure sp_filme_gore_bilet_listeleme
@film_id int
as
begin
select  film_adi,musteri_adi,musteri_soyadi from tbl_filmler join tbl_seanslar on film_id=seans_film_id inner join tbl_seans_ve_koltuklar on sk_seans_id=seans_id inner join tbl_bilet on bilet_seans_ve_koltuk_id=seanskoltuk_id inner join tbl_musteriler on bilet_musteri_id = musteri_id where @film_id=film_id
end

exec sp_filme_gore_bilet_listeleme  7