select sum((lager+disponiert)*(verkaufspreis-einkaufspreis)) as "Lagergewinn ohne Risiko"
from produkt
where produkt.ID not in 
	(select p.ID
	from produkt p
	join historie his on his.produkt = p.ID
	join historienmangel hisman on hisman.historie = his.ID
	join mangel m on m.ID = hisman.mangel)