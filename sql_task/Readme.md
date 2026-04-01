# 📊 Analiză Fonduri – Exercițiu SQL

Acest modul conține partea de analiză SQL a proiectului **Analiza Fonduri**, unde sunt definite structura bazei de date și interogările necesare pentru extragerea informațiilor relevante despre alocările financiare.

---

## 🗂 Structura fișierelor

- **schema.sql** – definește structura bazei de date:
  - tabelul `categories`
  - tabelul `allocations`
  - chei primare și chei externe
  - comentarii pentru documentarea coloanelor

- **totalcategorii.sql** – calculează suma totală alocată pentru fiecare categorie.

- **top5destinatii.sql** – extrage primele 5 destinații cu cele mai mari alocări.

- **procent din total.sql** – calculează procentul fiecărei alocări din totalul fondurilor.

- **window function.sql** – folosește funcții de tip *window* pentru analize avansate (rank, percent_rank, row_number etc.).

---

## 🧱 Structura bazei de date

Baza de date conține două tabele principale:

### **1. categories**
| Coloana | Tip | Descriere |
|--------|------|-----------|
| id | SERIAL PRIMARY KEY | ID unic pentru categorie |
| name | VARCHAR(100) | Numele categoriei (ex: Biserici, Diaspora) |

### **2. allocations**
| Coloana | Tip | Descriere |
|--------|------|-----------|
| id | SERIAL PRIMARY KEY | ID unic pentru alocare |
| destination | VARCHAR(255) | Destinația finanțării |
| amount_lei | INT | Suma alocată |
| category_id | INT | Legătură către tabelul categories |

---

## 📈 Interogări implementate

### ✔ Total pe categorii
Calculează suma totală alocată fiecărei categorii.

### ✔ Top 5 destinații
Returnează cele mai mari 5 alocări individuale.

### ✔ Procent din total
Afișează fiecare alocare ca procent din totalul fondurilor.

### ✔ Window Functions
Analize avansate:
- clasificare (RANK)
- ordonare (ROW_NUMBER)
- procente (PERCENT_RANK)

---

## ▶ Cum rulezi fișierele SQL

1. Deschide un client SQL (pgAdmin, DBeaver, DataGrip sau terminal).
2. Rulează mai întâi `schema.sql` pentru a crea structura bazei de date.
3. Rulează fișierele de interogări în orice ordine dorești.
4. Analizează rezultatele generate.

---

## 📌 Scopul exercițiului

Acest exercițiu demonstrează:
- proiectarea unei baze de date relaționale
- scrierea de interogări SQL eficiente
- utilizarea funcțiilor agregate și window functions
- structurarea logică a unui proiect SQL