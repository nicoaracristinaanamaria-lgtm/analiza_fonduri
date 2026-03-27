#  Analiza distribuire fonduri (Python + Pandas)

Acest proiect procesează un fișier Excel cu alocări financiare și generează un mini‑raport automatizat.  
Raportul include totaluri, distribuții pe categorii, top destinații și procente — exact ca într-o analiză reală de Business/Data Analyst.

---

##  Funcționalități

- Citirea unui fișier Excel în Pandas
- Calcularea totalului fondurilor distribuite
- Agregare pe categorii (groupby + sum)
- Identificarea top 3 destinații după sumă
- Calculul procentelor din total pentru fiecare categorie
- Sortare descrescătoare după sumă
- Filtrare pe categorii (ex: Sănătate)
- Generarea unui mini‑raport structurat în terminal

---

##  Tehnologii folosite

- **Python 3**
- **Pandas**
- **Excel (.xlsx)**

---

##  Cum rulezi proiectul

1. Instalează dependențele:
   ```bash
   pip install pandas
 
  ```bash
python citire_fisier.py
  ```

# Structura proiectului
 ```
Analiza_fonduri/
│
├── citire_fisier.py          # Scriptul principal
├── distribuire_fonduri.xlsx  # Dataset-ul analizat
└── README.md                 # Documentația proiectului
 ```
 ```
====== Mini-raport distribuire fonduri ======

1. Total fonduri distribuite: 4068000

2. Total fiecare categorie:
Biserici     ...
Sănătate     ...
Educație     ...
Social       ...
Diaspora     ...

3. Top 3 destinații după sumă:
   (tabel cu cele mai mari 3 sume)

4. Procentaj pe categorie:
Biserici     xx%
Sănătate     xx%
...
 ```

Acest proiect m-a ajutat să înțeleg și să aplic:

manipularea datelor cu Pandas

agregări, sortări și filtrări

generarea de rapoarte automate

lucrul cu fișiere Excel în Python

structura unui proiect de analiză a datelor

 




