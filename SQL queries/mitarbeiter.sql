select m.nummer as Mitarbeiternummer, r.name as Rolle, a.name as Abteilung
from mitarbeiter m
join rolle r on r.ID = m.rolle
join abteilung a on a.ID = m.abteilung