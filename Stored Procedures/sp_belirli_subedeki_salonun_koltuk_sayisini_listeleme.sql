use veritabani;
go

create procedure sp_belirli_subedeki_salonun_koltuk_sayisini_listeleme

	@koltuk_salon_id int,
	@salon_sube_id int
as
begin
select count(*) from tbl_koltuk join tbl_salonlar on salon_id=koltuk_salon_id where salon_sube_id=@salon_sube_id and koltuk_salon_id=@koltuk_salon_id 
end

exec sp_belirli_subedeki_salonun_koltuk_sayisini_listeleme 1,1