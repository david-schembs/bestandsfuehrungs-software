select count(m.ID) as "Anzahl der Historieneinträge", m.nummer as Mitarbeiter, r.name as Rolle, a.name as Abteilung
from historie h
join mitarbeiter m on h.mitarbeiter = m.ID
join rolle r on m.rolle = r.ID
join abteilung a on a.ID = m.abteilung
group by m.ID
order by count(m.ID) desc
limit 5