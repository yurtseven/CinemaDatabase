use veritabani;
go

create procedure sp_seans_tarihine_gore_filmleri_listeleme
@seans_tarihi datetime
as
begin
select  film_adi,seans_salon_id from tbl_filmler join tbl_seanslar on film_id=seans_film_id inner join tbl_seans_ve_koltuklar on sk_seans_id=seans_id where @seans_tarihi=seans_saat
end

exec sp_seans_tarihine_gore_filmleri_listeleme  '2018-04-01 10:00:00.000'