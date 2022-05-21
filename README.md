# Zápočtový projekt
## Pravděpodobnost a Statistika 1
### Martin Gráf 2022

---
---

# Zkoumání užívání drog naskrz regiony a rasami
***Použitá data:***  https://data.world/balexturner/drug-use-employment-work-absence-income-race-education/workspace/project-summary?agentid=balexturner&datasetid=drug-use-employment-work-absence-income-race-education

---

## Na rozehřátí
### Náš dataset

Data byla pořízena dotazováním civilistů starších 12-ti let na území USA z různorodých ekonomických skupin. Průzkumu se účastnili lidé z ubytoven pro bezdomovce, vysokoškolských kolejí, soukromých rezidencí, vojenských innstalací, a skupinových bytů.

Data byla shromážděna a zpracována **Výzkumným institutem Triangle**, **Výzkumným parkem Triangle** v Severní Karolíně.

Podrobný postup a metody použité při shromažďování dat jsou popsané zde: https://data.world/balexturner/drug-use-employment-work-absence-income-race-education/workspace/file?filename=NSDUH-2015-info-description.pdf

Pro naše účely jsou to ovšem nadbytečné informace.

Podrobný popis jednotlivých dotazovaných proměnných zde: https://data.world/balexturner/drug-use-employment-work-absence-income-race-education/workspace/file?filename=NSDUH-2015-DS0001-info-codebook.pdf

Stručně si popišme náš dataset:

- QUESTID2
   - Identifikace respondenta
   - Funkčně identické s id
- Drogy
   - Každá z následujících drog obsahuje informace:
      - ever -  Zdali respondent drogu někdy užil

         0. Ne
         1. Ano
      - month - Užití v posledním měsíci

         0. Ne
         1. Ano
      - year - Užití během posledního roku

         0. Ne
         1. Ano

   - Tyto informace máme o:
      - Marihuana
      - Kokain
      - Crack
      - Heroin
      - Hallucinogeny
      - Inhalanty
      - Pervitin
      - Medikace proti bolesti
      - Sedativa na předpis
      - Stimulanty
      - Sedativa
      - Jakákoliv droga
      - Jakákoliv droga s vyjímkou marihuany
   - Užití Farmaceutik za poslední měsíc
   - Užití zakázaných drog za poslední měsíc
   - Užití zakázaných drog za poslední měsíc s vyjímkou marihuany - "nomj" sloupce
   - Počet užití jakýchkoliv drog za poslední měsíc / rok / kdykoliv
   - Seznam použitých drog
- Socioekonomický status (_Drogové testy mohou být zaměřovány na příslušníky určitých skupin více než na příslušníky jiných_)
   - Osobní příjem
   - Rodinný příjem
   - Status zaměstnání
   - Drogový test před nástupem do zaměstnání
   - Náhodný drogový test
   - Rasa
   - Vzdělání - (Pro zjednodušení hrubě přeložíme vzdělávací kategorie používané v USA na hierarchii vzdělání v ČR)
      1. Základní škola
      2. Střední škola bez maturity
      3. Střední škola s maturitou
      3. Vysokoškolský titul (Bakalář a vyšší)
   - Pracoval by pro zaměstnavatele, který používá drogové testy
      1. Spíše ano
      2. Spíše ne
      3. Nezáleží na tom
   - Pohlaví
   - Využil nemocenské dovolené
   - Využil dovolené

---

## Podmíněné pravděpodobnosti

Začneme zkoumáním slavného **?mýtu?** (Nebo možná ne, uvidíme), že marihuana je vstupní drogou do světa tvrdších drog. Pro následující výpočty nebudeme brát v potaz chybovost procent.

Pravděpodobnosti užívání marihuany zjistíme snadno. Už jsou vlastně přímo uložené v datasetu.
Omezme se na roky 2008-2010.


