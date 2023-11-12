select sum((lager+disponiert)*(verkaufspreis-einkaufspreis)) as "zu erwartender Lagergewinn"
from produkt