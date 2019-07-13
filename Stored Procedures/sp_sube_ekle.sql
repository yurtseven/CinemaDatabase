use veritabani;
go
create procedure sp_sube_ekle

	@sube_adi text,
	@sube_iletisim_id int,
	@sube_bilet_ucreti text

as
begin
	
	insert into tbl_subeler(sube_adi,sube_iletisim_id,sube_bilet_ucreti) values (@sube_adi,@sube_iletisim_id,@sube_bilet_ucreti)
end
go

exec sp_sube_ekle 'Gölcük Dünya',1,'15';