use veritabani;
go
create procedure sp_seans_bilgilerini_guncelle
	@seans_id int,
	@seans_saat datetime,
	@seans_film_id int,
	@seans_salon_id int
as
begin

update tbl_seanslar set seans_saat=@seans_saat, seans_film_id=@seans_film_id, seans_salon_id=@seans_salon_id
where seans_id=@seans_id

end
go
exec sp_seans_bilgilerini_guncelle 1,'2018-04-01 09:45:00.000',1,1