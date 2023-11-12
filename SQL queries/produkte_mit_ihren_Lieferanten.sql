select p.ID, p.beschreibung, l.kreditorennummer
from produkt p
join lieferung lie on lie.produkt = p.ID
join lieferant l on l.ID = lie.lieferant