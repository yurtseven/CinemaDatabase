use veritabani;
go

create procedure sp_sube_listeleme
as
begin
select sube_id,sube_adi,iletisim_il_id,iletisim_ilce_id, mahalle, sokak  from tbl_subeler join tbl_iletisim on iletisim_id=sube_iletisim_id 
end

exec sp_sube_listeleme
