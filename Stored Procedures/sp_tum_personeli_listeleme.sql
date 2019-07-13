use veritabani;
go

create procedure sp_tum_personeli_listeleme
as
begin
select personel_id,personel_adi,personel_soyadi,unvan_adi,personel_iletisim_id,personel_sube_id from tbl_personel join tbl_personel_unvan on unvan_id=personel_unvan_id
end

exec sp_tum_personeli_listeleme