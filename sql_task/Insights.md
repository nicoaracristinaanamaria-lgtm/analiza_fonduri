📊 Rezumat general
Analiza datasetului arată o distribuție puternic dezechilibrată a fondurilor, cu o concentrare masivă în categoria Biserici, urmată la mare distanță de celelalte domenii.
Există și un pattern interesant: multe destinații primesc exact aceeași sumă, ceea ce sugerează un mecanism standardizat de alocare.

1. Categoria cu cele mai mari finanțări

SELECT c.name, SUM(a.amount_lei) AS total
FROM allocations a
JOIN categories c ON a.category_id = c.id
GROUP BY c.name
ORDER BY total DESC;

Insight:
Biserici domină alocările, cu un total semnificativ mai mare decât toate celelalte categorii.
Diaspora primește sume mici, dar numeroase.
Educație și Sănătate sunt subfinanțate în comparație cu Biserici.

2. Top destinații finanțate

SELECT destination, amount_lei
FROM allocations
ORDER BY amount_lei DESC
LIMIT 5;

Insight:
Topul este dominat de proiecte religioase.
Sumele mari sunt concentrate în câteva destinații, nu distribuite uniform.

3. Distribuția procentuală a fondurilor
SELECT c.name,
       SUM(a.amount_lei) * 100.0 / (SELECT SUM(amount_lei) FROM allocations) AS procent
FROM allocations a
JOIN categories c ON a.category_id = c.id
GROUP BY c.name;

Insight:
Biserici reprezintă peste jumătate din totalul fondurilor.
Diaspora are un procent mic, dar constant.
Diferențele între categorii sunt mari și vizibile.

4. Destinații sub și peste media generală
SELECT destination, amount_lei
FROM allocations
WHERE amount_lei > (SELECT AVG(amount_lei) FROM allocations);
Insight:
Majoritatea destinațiilor sunt sub media generală.
Doar câteva proiecte depășesc media, ceea ce confirmă distribuția dezechilibrată.

Clasament cu Window Functions
SELECT destination, amount_lei,
       RANK() OVER (ORDER BY amount_lei DESC) AS pozitie
FROM allocations;

Insight:
Primele poziții sunt ocupate de proiecte religioase.
Există multe destinații cu aceeași sumă → același rank.

Concluzii finale
Distribuția fondurilor este puternic concentrată într-o singură categorie.
Există un pattern repetitiv al sumelor (ex: 350.000 lei), ceea ce sugerează un mecanism standardizat.
Analiza arată clar că nu există o distribuție echilibrată între domenii.
Proiectul demonstrează normalizare SQL, relații între tabele și interogări analitice avansate.