import pandas as pd
fisier = "C:/Users/Lenovo/Desktop/distribuire_fonduri.xlsx"
df = pd.read_excel(fisier)
print(df)
# 1. Total fonduri distribuite
total = df["Amount_lei"].sum()
print("Total fonduri distribuite:", total)
# 2. Total fiecare categorie
total_pe_categorie = df.groupby("Category")["Amount_lei"].sum()
print(total_pe_categorie)
# 3. Filtrare proiectele din sanatate
sanatate = df[df["Category"] == "Sănătate"]
print(sanatate)
#4. Sortare descrescatoare dupa suma
df_sortat= df.sort_values(by="Amount_lei", ascending=False)
print(df_sortat)
print ("\n======Mini-raport distribuire fonduri======")
#1. Total fonduri distribuite
total = df["Amount_lei"].sum()
print("\n1.Total fonduri distribuite:", total)
#2. Total fiecare categorie
total_pe_categorie = df.groupby("Category")["Amount_lei"].sum()
print("\n2.Total fiecare categorie:")
print(total_pe_categorie)
#3 Top 3 destinatii dupa suma
top3 = df.sort_values(by="Amount_lei", ascending=False).head(3) 
print("\n3.Top 3 destinatii dupa suma:")
print(top3)
#4. Procentaj pe categorie
procentaj = (total_pe_categorie / total) * 100
print("\n4.Procentaj pe categorie:")
print(procentaj)
print("\n======Sfarsit raport======")