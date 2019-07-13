use veritabani;
go

create procedure sp_belirli_subedeki_belirli_salondaki_seanslari_ve_filmleri_listeleme
@sube_id int,
@salon_sube_id int
as
begin
select  sube_adi,salon_adi,seans_saat,film_adi from tbl_subeler join tbl_salonlar on salon_sube_id=sube_id inner join tbl_seanslar on seans_salon_id=salon_id inner join tbl_filmler on seans_film_id=film_id where @sube_id=sube_id and @salon_sube_id=salon_id
end

exec sp_belirli_subedeki_belirli_salondaki_seanslari_ve_filmleri_listeleme  2,6