use veritabani;
go
create procedure sp_subeye_gore_salon_ekle

	@salon_sube_id int,
	@salon_adi text
	

as
begin
	
	insert into tbl_salonlar(salon_sube_id,salon_adi) values (@salon_sube_id, @salon_adi) 
end
go

exec sp_subeye_gore_salon_ekle 1,'Salon 4'