use veritabani;
go
create procedure sp_musteri_bilgilerini_guncelle
	
	
	@musteri_id int,
	@musteri_adi text,
	@musteri_soyadi text,
	@musteri_iletisim_id int

as
begin

update tbl_musteriler set musteri_adi=@musteri_adi, musteri_soyadi=@musteri_soyadi, @musteri_iletisim_id=@musteri_iletisim_id
where musteri_id=@musteri_id

end
go
exec sp_musteri_bilgilerini_guncelle 1,'Yavuz Selim','Eker',1049