use veritabani;
go

create procedure sp_tum_subelerin_iletisim_bilgilerini_listeleme
as
begin
select sube_adi,dbo.tbl_iller.isim,dbo.tbl_ilceler.isim,mahalle,cadde,sokak from tbl_subeler join tbl_iletisim on sube_iletisim_id=iletisim_id inner join tbl_iller on il_id=iletisim_il_id inner join tbl_ilceler on ilce_id=iletisim_ilce_id
end

exec sp_tum_subelerin_iletisim_bilgilerini_listeleme