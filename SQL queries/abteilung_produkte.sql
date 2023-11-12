select a.ID, a.name as Abteilung, count(a.ID) as Produkte
from abteilung a
join kategorie k on a.ID = k.abteilung
join produkt p on p.kategorie = k.ID
group by a.ID