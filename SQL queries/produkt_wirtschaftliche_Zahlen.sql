select beschreibung,
	einkaufspreis,
    verkaufspreis,
	((verkaufspreis/einkaufspreis)-1)*100 as "Marge in Prozent",
    lager+bestellt as "zuerwartender Lagerbestand",
    verkaufspreis-einkaufspreis as "Gewinn pro Produkt",
    (verkaufspreis-einkaufspreis) * (lager+bestellt) as "Gewinn"
from produkt
order by Gewinn desc