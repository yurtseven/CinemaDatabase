use veritabani;
go
create procedure sp_subeye_gore_salon_bilgisini_guncelle

	@salon_sube_id int,
	@salon_id int,
	@salon_adi text
	
as
begin

update tbl_salonlar set salon_adi=@salon_adi
where salon_sube_id=@salon_sube_id and salon_id=@salon_id

end
go
exec sp_subeye_gore_salon_bilgisini_guncelle 1,3,'Salon 3'