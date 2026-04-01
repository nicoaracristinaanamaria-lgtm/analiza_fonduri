# 📊 Fonduri – Mini-Proiect SQL

Acest proiect analizează distribuirea fondurilor către diverse destinații (biserici, diaspora, sănătate etc.) folosind PostgreSQL.  
Scopul proiectului este să demonstreze:

- normalizare SQL (2 tabele, relație 1‑to‑many)
- utilizarea cheilor primare și străine
- interogări analitice
- folosirea funcțiilor agregate și a window functions
- structurarea unui proiect SQL pentru GitHub

---

## 🗂 Structura bazei de date

### **1. categories**
| coloană | tip | descriere |
|--------|------|-----------|
| id | SERIAL PK | identificator unic |
| name | VARCHAR(100) | numele categoriei |

### **2. allocations**
| coloană | tip | descriere |
|--------|------|-----------|
| id | SERIAL PK | identificator unic |
| destination | VARCHAR(255) | destinația finanțării |
| amount_lei | INT | suma alocată |
| category_id | INT FK | legătură către categories.id |

---

## 📁 Fișiere în proiect
schema.sql          → structura bazei de date
data/fonduri.csv    → datele brute
queries/            → interogări SQL
insights.md         → concluzii analitice

---

## 🔍 Interogări incluse (queries/)

- totalul fondurilor pe categorie  
- top 5 destinații finanțate  
- procentul fiecărei categorii din total  
- media/min/max pe categorie  
- clasament cu window functions  
- destinații peste media generală  

---

## 📈 Insight-uri (rezumat)

- categoria cu cele mai mari alocări: **Biserici**  
- diaspora primește sume mici, dar numeroase  
- distribuția fondurilor este puternic dezechilibrată  
- multe destinații primesc exact aceeași sumă (pattern interesant)

---

## ▶️ Cum rulezi proiectul

1. Creezi baza de date în PostgreSQL  
2. Rulezi `schema.sql`  
3. Imporți `fonduri.csv` în tabelul `allocations`  
4. Rulezi interogările din folderul `queries/`



