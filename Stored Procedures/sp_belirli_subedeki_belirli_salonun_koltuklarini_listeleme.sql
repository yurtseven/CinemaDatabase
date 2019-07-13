use veritabani;
go

create procedure sp_belirli_subedeki_belirli_salonun_koltuklarini_listeleme
@sube_id int,
@salon_sube_id int
as
begin
select  sube_adi,salon_adi,koltuk_adi from tbl_subeler join tbl_salonlar on salon_sube_id=sube_id inner join tbl_koltuk on koltuk_salon_id=salon_id where @sube_id=sube_id and @salon_sube_id=salon_id
select  count(koltuk_id) as Koltuk_Sayisi from tbl_subeler join tbl_salonlar on salon_sube_id=sube_id inner join tbl_koltuk on koltuk_salon_id=salon_id where @sube_id=sube_id and @salon_sube_id=salon_id
end

exec sp_belirli_subedeki_belirli_salonun_koltuklarini_listeleme  1,1