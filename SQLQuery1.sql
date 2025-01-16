--create database erdo 
create table urun (

id int primary key identity (1,1),
urun nchar(50),
gel_tar date ,
son_kul_tar date,
)
select *from urun

insert into urun( urun,gel_tar,son_kul_tar) values ('masa','10.01.2020','10.01.2029')
insert into urun(urun,gel_tar,son_kul_tar) values ('sýra','2019.12.11','2049.08.18')

delete from urun where id=5


update urun set gel_tar='12.12.2024' where id=1

alter table urun add fiyat int
update urun set fiyat=400 where id=1
update urun set fiyat=800 where id=10

alter table urun drop column son_kul_tar

--tabloda fiyatý 500tl üzerinde olan ürünlerin geliþ tarihini listele ve aþlan ismini deðiþtir 

select*from urun
select gel_tar as gelis_tarihi from urun where fiyat>500

--urun tablosunda kaç ürün olduðunu ve toplma fiyatý bulun 
select COUNT(id) as sayi, SUM(fiyat) as toplam from urun
