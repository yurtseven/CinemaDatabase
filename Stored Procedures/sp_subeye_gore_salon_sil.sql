use veritabani;
go
create procedure sp_subeye_gore_salon_sil

	@salon_sube_id int,
	@salon_id int
	

as
begin
	
	delete from tbl_salonlar where salon_sube_id=@salon_sube_id and salon_id=@salon_id
end
go

exec sp_subeye_gore_salon_sil 1,28