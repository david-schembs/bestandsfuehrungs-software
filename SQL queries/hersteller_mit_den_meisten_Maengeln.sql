select her.name as Hersteller, count(her.name) as Mängel
from hersteller her
join produkt p on p.hersteller = her.ID
join historie his on his.produkt = p.ID
join historienmangel hisman on hisman.historie = his.ID
join mangel m on m.ID = hisman.mangel
where m.beschreibung not like '%iefer%'
group by her.name
order by her.name desc