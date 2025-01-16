select*from muayeneler
select*from muayenesonuc
select*from hastalar
select*from hastakabul


select*from muayeneler mu join muayenesonuc musnc on mu.MuayenelerId=musnc.MuayeneId
join hastakabul hkabul on hkabul.DokorId=mu.DoktorId
join hastalar hasta on hkabul.HastaId=hasta.HastaId


select*from iller
select*from ilceler
select*from iller il join ilceler ilce on il.IlId=ilce.Ilid where il.IlPlaka=30


 -- cross join kartezyen çarpým 
select*from iller cross join ilceler where iller.IlPlaka=30



select*from iller il1 join iller il2 on il1. IlId=il2.IlId

-- ortak noktasý olmayan tablolarý between komutu ile birleþtiririz
select *from iller il, hastalar hasta where il.IlPlaka between hasta.Ad and hasta.Cinsiyet


select*from muayeneler
select*from muayenesonuc
 
 -- expect BÝRLEÞÝM 

select MuayenelerId from muayeneler except select MuayeneId from muayenesonuc

-- intersect KESÝÞÝM

select MuayenelerId from muayeneler intersect select MuayeneId from muayenesonuc


select MuayeneId from muayenesonuc
select MuayenelerId from muayeneler

--ÝKÝ FARKLI SORGUYU BÝRLEÞTÝRÝR union
select MuayeneId from muayenesonuc union select MuayenelerId from muayeneler


select MuayeneId from muayenesonuc union all select MuayenelerId from muayeneler


  
--AVG ORTALAMA ALMA EXAMPLE
--SELECT AVG(VÝZE) FROM NOTLAR

select trim(Ad)As 'isim' from hastalar

--sqrt karekök alma 
-- having kullanýmý
-- select musteri,(sum(borc)-sum(alacak)) as bakiye from test group by musteri having (sum(borç)sum(alacak))>1000