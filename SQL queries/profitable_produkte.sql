select p.ID, p.beschreibung, p.einkaufspreis, p.verkaufspreis
from produkt p
where (p.verkaufspreis / p.einkaufspreis)-1 > (
	select avg((pmarge.verkaufspreis / pmarge.einkaufspreis)-1) as margendurchschnitt
	from produkt pmarge
	order by margendurchschnitt desc
    )
order by (p.verkaufspreis / p.einkaufspreis)-1 desc