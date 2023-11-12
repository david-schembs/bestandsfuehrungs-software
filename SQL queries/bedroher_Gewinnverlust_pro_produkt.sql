select beschreibung, verkaufspreis-einkaufspreis as "Gewinn pro Produkt",
	lager+disponiert as "Bestand",
    (verkaufspreis-einkaufspreis)*lager+disponiert as "bedrohter Gewinnverlust"
from produkt
where produkt.ID in 
	(select p.ID
	from produkt p
	join historie his on his.produkt = p.ID
	join historienmangel hisman on hisman.historie = his.ID
	join mangel m on m.ID = hisman.mangel)
order by (verkaufspreis-einkaufspreis)*lager+disponiert desc
