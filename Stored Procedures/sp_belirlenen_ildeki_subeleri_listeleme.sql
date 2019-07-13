use veritabani;
go

create procedure sp_belirlenen_ildeki_subeleri_listeleme
	
	@il_id int
as
begin
select sube_id,sube_adi,iletisim_il_id,iletisim_ilce_id, mahalle, sokak  from tbl_subeler join tbl_iletisim on iletisim_id=sube_iletisim_id where iletisim_il_id=@il_id
end

exec sp_belirlenen_ildeki_subeleri_listeleme 34