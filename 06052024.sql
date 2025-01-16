create table personel (
id int primary key identity (1,1),
ad nchar(30),
soyad nchar(50),
yas int, 
cinsiyet bit,
görev nchar(150),
adres nchar(300),
maas money,
göreve_baslama_tarihi date,


)
select*from personel

--verþ eklemek için insert into komutu

insert into personel(ad,soyad,yas,cinsiyet,görev,adres,maas,göreve_baslama_tarihi) values ('ali', 'taþ', 40 ,1,'müdür','van',1500 , '2011.10.11') 
insert into personel(ad,soyad,yas,cinsiyet,görev,adres,maas,göreve_baslama_tarihi) values ('veli', 'kaya', 19 ,1,'stajer','hakkari',800 , '2010.10.11') 
insert into personel(ad,soyad,yas,cinsiyet,görev,adres,maas,göreve_baslama_tarihi) values ('Erdem', 'Þimþek', 21 ,1,'software engineer','hakkari',17000 , '2024.10.11') 
insert into personel(ad,soyad,yas,cinsiyet,görev,adres,maas,göreve_baslama_tarihi,) values ('ayþe', 'berk', 26 ,0,'bakýcý','hakkari',1700 , '2022.10.11' ) 
insert into personel(ad,soyad,yas,cinsiyet,görev,adres,maas,göreve_baslama_tarihi,) values ('hatice', 'tunç', 29 ,0,'bakýcý','elazýð',1900 , '2022.10.11' ) 



--verileri silmek için delete komutu
delete from personel  where id=2 or id=4 or id=5



--koþul varsa whereden sonra yazýlýr 
-- and (ve)
select*from personel where yas <40 and maas >1000

--or 
select*from personel where yas > 40

--soyadý þimþek olan personelin iþe giriþ tarihlerini getirin ve ad soyad bilgisinide getirin
--görmek istediklerimizi SELECT VE FROM ARASINA YAZIYORUZ

select ad, soyad, göreve_baslama_tarihi from personel where soyad='þimþek'

--soyadý kaya olannýn cinsiyetini getirin
select cinsiyet from personel where soyad='kaya'

--COUNT SAYMA KOMUTU
--kaç çalýþanýnýz var

select count(id) from personel where cinsiyet=1

--20 yaþ üstü kaç çalýþanýn var
select count(id)from personel where yas > 20

--toplama iþlemi için sum
--formul select sum(istenilen alan) from tb_ismi where koþul
-- tüm personelere verilen maaþ ne kadar
select sum(maas) from personel 
--as alanlara takma isim vermek için kullanýlýr
select ad as isim, soyad as soyisim, maas as ücret from personel 


--update veriyi güncellemek için kullanýlýr 
--update tb_ismi set deðiþecek_alan where koþul

update personel set maas=1500 where id= 11
update personel set yas=50 where ad='ali'
update personel set soyad='zibek' where id=1 

create--> create
drop --> delete 
alter--> update
--alter komutu tablo,database,view,fonksiyon,prosedör gibi . vb... deðiþiklik yapmak için kullanýlýr
alter table personel add isim nchar(40)  --tabloyya isim ekledik
alter table personel drop column isim -- alan silme 


alter table personel add ayakno int 
select*from personel

update personel set ayakno=48 where id=11  
update personel set isim=('kralinyo') where id=3


--GENEL ARAMA ÝN KOMUTU	
select* from personel where ad in ('ali','erdem')


--DETAYLI ARAMA LÝKE

select*from personel where ad like '%a%'
select*from personel where ad like 'e%'

-- order by a-z, 1-9 veya z-a, 9-0 sýralar
--asc a-z, 1-9 sýralar küçükten büyüðe
--desc a-z,9-0 sýralar büyükten küçüðe

select distinct  from personel 
--disctinct komut bir alanda tekkrarlayan veriler var ise bunlardan sadece birini getirir
-- soyadý þimþek olan öðrencinin doðum yerini getirin 
select adres  from personel where soyad='þimþek'