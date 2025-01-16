create table personel (
id int primary key identity (1,1),
ad nchar(30),
soyad nchar(50),
yas int, 
cinsiyet bit,
g�rev nchar(150),
adres nchar(300),
maas money,
g�reve_baslama_tarihi date,


)
select*from personel

--ver� eklemek i�in insert into komutu

insert into personel(ad,soyad,yas,cinsiyet,g�rev,adres,maas,g�reve_baslama_tarihi) values ('ali', 'ta�', 40 ,1,'m�d�r','van',1500 , '2011.10.11') 
insert into personel(ad,soyad,yas,cinsiyet,g�rev,adres,maas,g�reve_baslama_tarihi) values ('veli', 'kaya', 19 ,1,'stajer','hakkari',800 , '2010.10.11') 
insert into personel(ad,soyad,yas,cinsiyet,g�rev,adres,maas,g�reve_baslama_tarihi) values ('Erdem', '�im�ek', 21 ,1,'software engineer','hakkari',17000 , '2024.10.11') 
insert into personel(ad,soyad,yas,cinsiyet,g�rev,adres,maas,g�reve_baslama_tarihi,) values ('ay�e', 'berk', 26 ,0,'bak�c�','hakkari',1700 , '2022.10.11' ) 
insert into personel(ad,soyad,yas,cinsiyet,g�rev,adres,maas,g�reve_baslama_tarihi,) values ('hatice', 'tun�', 29 ,0,'bak�c�','elaz��',1900 , '2022.10.11' ) 



--verileri silmek i�in delete komutu
delete from personel  where id=2 or id=4 or id=5



--ko�ul varsa whereden sonra yaz�l�r 
-- and (ve)
select*from personel where yas <40 and maas >1000

--or 
select*from personel where yas > 40

--soyad� �im�ek olan personelin i�e giri� tarihlerini getirin ve ad soyad bilgisinide getirin
--g�rmek istediklerimizi SELECT VE FROM ARASINA YAZIYORUZ

select ad, soyad, g�reve_baslama_tarihi from personel where soyad='�im�ek'

--soyad� kaya olann�n cinsiyetini getirin
select cinsiyet from personel where soyad='kaya'

--COUNT SAYMA KOMUTU
--ka� �al��an�n�z var

select count(id) from personel where cinsiyet=1

--20 ya� �st� ka� �al��an�n var
select count(id)from personel where yas > 20

--toplama i�lemi i�in sum
--formul select sum(istenilen alan) from tb_ismi where ko�ul
-- t�m personelere verilen maa� ne kadar
select sum(maas) from personel 
--as alanlara takma isim vermek i�in kullan�l�r
select ad as isim, soyad as soyisim, maas as �cret from personel 


--update veriyi g�ncellemek i�in kullan�l�r 
--update tb_ismi set de�i�ecek_alan where ko�ul

update personel set maas=1500 where id= 11
update personel set yas=50 where ad='ali'
update personel set soyad='zibek' where id=1 

create--> create
drop --> delete 
alter--> update
--alter komutu tablo,database,view,fonksiyon,prosed�r gibi . vb... de�i�iklik yapmak i�in kullan�l�r
alter table personel add isim nchar(40)  --tabloyya isim ekledik
alter table personel drop column isim -- alan silme 


alter table personel add ayakno int 
select*from personel

update personel set ayakno=48 where id=11  
update personel set isim=('kralinyo') where id=3


--GENEL ARAMA �N KOMUTU	
select* from personel where ad in ('ali','erdem')


--DETAYLI ARAMA L�KE

select*from personel where ad like '%a%'
select*from personel where ad like 'e%'

-- order by a-z, 1-9 veya z-a, 9-0 s�ralar
--asc a-z, 1-9 s�ralar k���kten b�y��e
--desc a-z,9-0 s�ralar b�y�kten k����e

select distinct  from personel 
--disctinct komut bir alanda tekkrarlayan veriler var ise bunlardan sadece birini getirir
-- soyad� �im�ek olan ��rencinin do�um yerini getirin 
select adres  from personel where soyad='�im�ek'