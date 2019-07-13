use veritabani;
go

create procedure sp_belirlenen_subedeki_salonlari_listeleme
	
	@sube_id int
as
begin
select sube_id,sube_adi,salon_adi from tbl_subeler join tbl_salonlar on sube_id=salon_sube_id where sube_id=@sube_id
end

exec sp_belirlenen_subedeki_salonlari_listeleme 2