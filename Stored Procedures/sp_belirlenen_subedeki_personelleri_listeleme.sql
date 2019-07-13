use veritabani;
go

create procedure sp_belirlenen_subedeki_personelleri_listeleme
	
	@personel_sube_id int
as
begin
select personel_id,personel_adi,personel_soyadi,unvan_adi,personel_iletisim_id,personel_sube_id from tbl_personel join tbl_personel_unvan on unvan_id=personel_unvan_id where personel_sube_id=@personel_sube_id
end

exec sp_belirlenen_subedeki_personelleri_listeleme 3