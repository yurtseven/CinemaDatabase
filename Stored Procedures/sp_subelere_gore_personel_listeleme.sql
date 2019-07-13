use veritabani;
go

create procedure sp_subelere_gore_personel_listeleme
@personel_sube_id int
as
begin
select personel_adi,personel_soyadi,unvan_adi from tbl_personel join tbl_personel_unvan on personel_unvan_id=unvan_id where @personel_sube_id=personel_sube_id
end

exec sp_subelere_gore_personel_listeleme 3