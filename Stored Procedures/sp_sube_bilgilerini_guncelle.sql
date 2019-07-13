use veritabani;
go
create procedure sp_sube_bilgilerini_guncelle
	@sube_id int,
	@sube_adi text,
	@sube_iletisim_id int,
	@sube_bilet_ucreti text
as
begin

update tbl_subeler set sube_adi=@sube_adi, sube_iletisim_id=@sube_iletisim_id, sube_bilet_ucreti=@sube_bilet_ucreti
where sube_id=@sube_id

end
go
exec sp_sube_bilgilerini_guncelle 9,'Gültepe AVM',1,'14'