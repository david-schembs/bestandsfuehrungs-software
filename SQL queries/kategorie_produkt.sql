select k.ID, k.name, count(p.ID) as "Anzahl der Produkte"
from kategorie k
join produkt p on p.kategorie = k.ID
group by k.ID
order by count(p.ID) desc