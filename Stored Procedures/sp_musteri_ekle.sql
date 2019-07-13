use veritabani;
go
create procedure sp_musteri_ekle

	
	@musteri_adi text,
	@musteri_soyadi text,
	@musteri_iletisim_id int
	
as
begin
	
	insert into tbl_musteriler(musteri_adi,musteri_soyadi,musteri_iletisim_id) 
	values (@musteri_adi, @musteri_soyadi, @musteri_iletisim_id)
end
go

exec sp_musteri_ekle 'Tuðba','Kurt',1 