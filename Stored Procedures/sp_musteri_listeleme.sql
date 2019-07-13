use veritabani;
go

create procedure sp_musteri_listeleme
as
begin
select musteri_id,musteri_adi,musteri_soyadi,musteri_iletisim_id from tbl_musteriler 
end

exec sp_musteri_listeleme