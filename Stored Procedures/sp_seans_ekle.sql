use veritabani;
go
create procedure sp_seans_ekle

	@seans_saati datetime,
	@seans_film_id int,
	@seans_salon_id int

as
begin
	
	insert into tbl_seanslar(seans_saat,seans_film_id,seans_salon_id) 
	values (@seans_saati,@seans_film_id,@seans_salon_id)
end
go

exec sp_seans_ekle '2019-05-05 10:00:00.000',1,1