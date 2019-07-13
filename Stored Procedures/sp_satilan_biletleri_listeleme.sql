use veritabani;
go

create procedure sp_satilan_biletleri_listeleme
@sube_id int,
@salon_sube_id int
as
begin
select  sube_adi,salon_adi,seans_saat,musteri_adi,musteri_soyadi from tbl_subeler join tbl_salonlar on salon_sube_id=sube_id inner join tbl_seanslar on seans_salon_id=salon_id inner join tbl_seans_ve_koltuklar on sk_seans_id=seans_id inner join tbl_bilet on seanskoltuk_id=bilet_seans_ve_koltuk_id inner join tbl_musteriler on bilet_musteri_id=musteri_id  where @sube_id=sube_id and @salon_sube_id=salon_id
end

exec sp_satilan_biletleri_listeleme  1,3