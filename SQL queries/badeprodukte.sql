select p.ID, p.beschreibung
from produkt p
join kategorie k on p.kategorie = k.ID
where k.name = 'Bad-Ausstattung'
