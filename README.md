# Zápočtový projekt
## Pravděpodobnost a Statistika 1
### Martin Gráf 2022

---
---

# Zkoumání vlivů drog na mentální zdraví
***Použitá data:***  http://data.ctdata.org/organization/samhsa

---

## Na rozehřátí
### Pravděpodobnosti, podmíněné pravděpodobnosti, zkoumání dat, a ostatní výpočty

Každý z našich datasetů má právě 7 sloupců
1. Region
   - Data byla shromážděna naskrz Americkými státy
2. Rok
   - Bohužel je dataset o mentálním zdraví z jiných let než datasety o užívání drog. Existuje sice určitý přesah, ale nelze zaručit že průzkumu se účastnili stejní respondenti
3. Věkový rozsah
4. Měřená vlastnost
   - Kupříkladu pro jednotlivé věkové kategorie byly vždy měřeny 4 kategorie
5. Typ měření
   - Udává jednotky v nichž je získaná hodnota uvedena
   - Například (A většinou) procenta
6. Proměnná
   - Rozlišení mezi samotnou hodnotou a chybovostí naměřené hodnoty ("margin of error")
7. Hodnota
   - Numerická hodnota uvedených jednotek

***Upozornění:***

Datasety negarantují stejné respondenty. Budeme pro jednoduchost předpokládat, že respondenti v rámci jednotlivých věkových skupin jsou vždy stejní, pokud byla data shromážděna ve stejném rozsahu let a ve stejném regionu.

---

## Podmíněné pravděpodobnosti

Začneme zkoumáním slavného **?mýtu?** (Nebo možná ne, uvidíme), že marihuana je vstupní drogou do světa tvrdších drog. Pro následující výpočty nebudeme brát v potaz chybovost procent.

Pravděpodobnosti užívání marihuany zjistíme snadno. Už jsou vlastně přímo uložené v datasetu.
Omezme se na roky 2008-2010.


