use veritabani;
go

create procedure sp_tum_subelerin_bilet_ucretlerini_listeleme
as
begin
select sube_adi,sube_bilet_ucreti from tbl_subeler
end

exec sp_tum_subelerin_bilet_ucretlerini_listeleme