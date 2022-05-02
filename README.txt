%Ciocoiu Diana Iulia 313CAb 2022


                     %Tema 1 Metode Numerice%     _
                               / \
                              / .'_
                             / __| \
             `.             | / (-' |
           `.  \_..._       :  (_,-/
         `-. `,'     `-.   /`-.__,'
            `/ __       \ /     /
            /`/  \       :'    /
          _,\o\_o/       /    /
         (_) ___.--.    /    /
          `-. -._.i \.      :
             `.\  ( |:.     |
            ,' )`-' |:..   / \
   __     ,'   |    `.:.      `.
  (_ `---:     )      \:.       \
   ,'     `. .'\       \:.       )
 ,' ,'     ,'  \\ o    |:.      /
(_,'  ,7  /     \`.__.':..     /,,,
  (_,'(_,'   _gdMbp,,dp,,,,,,dMMMMMbp,,
          ,dMMMMMMMMMMMMMMMMMMMMMMMMMMMb,
       .dMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMb,  
     .dMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM,
    ,MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
   dMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM.
 .dMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMb
	


Ce presupune:

Aceasta tema presupune implementarea algoritmului PageRank,
un algoritm foarte important folosit de motorul de cautare Google.
Acest algoritm calculeaza propabilitatea de a accesa o pagina web in
functie de linkurile prezente in celelale pagini.

-------------------------------------------------------------------------------

Tema a avut 3 parti:
- implementarea algoritmului iterativ (https://en.wikipedia.org/wiki/PageRank)
- implementarea algoritmului algebric
- implementarea unei functii ce arata gradul de apartenenta

-------------------------------------------------------------------------------

Inainte de implementarea propriu zisa a algoritmilor, am facut o functie ce
citeste din fisierul de input si construieste matricea de adiacenta din 
lista de adiacenta data. Matricea de adiacenta are 0 pe diagonala principala
intrucat se considera ca linkurile de la ea catre ea insasi sunt folositoare
doar pentru o parcurgere mai usoara a paginii si nu influenteaza probabilitatea
de a accesa pagina respectiva.

-------------------------------------------------------------------------------

1. PAGERANK ITERATIV

Am calculat numarul de linkuri pe care le are fiecare pagina din matricea de 
adiacenta. Urmarind algoritmul de pe wikipedia, am calculat inversa matricei
K (fiind o matrice diagonala am putut calcula direct inversa). Intr-un while
cu conditia de oprire fiind data de o anumita eroare, am aplicat algoritmul 
de la [1].

-------------------------------------------------------------------------------

2. PAGERANK ALGEBRIC

Asemanator cu metoda iterativa, am implementat algoritmul. Am scos expresia
dupa care se calculeaza R din metoda iterativa (R = R0 => inlocuire in 
iteratie). Rezultatul implica calcularea inversei unei matrici pentru care am
folosit metoda Gram-Schmidt, apoi pentru rezolvarea sistemului superior
triunghiular am folosit functia din laborator.

-------------------------------------------------------------------------------

3. GRADUL DE APARTENENTA

Pentru acest task a trebuie sa calculez functia u data in cerinta. Fiind o 
functie continua, am determinat a si b in functie de limitele laterale in 
punctele de discontinuitate.

-------------------------------------------------------------------------------

functia PageRank scrie in fisierul de iesire:

numarul de pagini web \n
vectorul rezultat din metoda iterativa \n
vectorul rezultat din metoda algebrica \n
un tablou de forma:
index nod U(PR(i))

-------------------------------------------------------------------------------

♡‌ ‌҉☆‌ ‌҉.☆‧₊˚‌ ‌
╭◜◝‌ ‌͡‌ ‌◜◝╮‌ ‌╭◜◝‌ ‌͡‌ ‌◜◝╮.‌ ‌҉‌ ‌
(‌ ‌•‿•‌。‌ ‌)☆(‌ ‌•‿•‌。‌ ‌)☆‌ ‌♡‌ ‌
╰◟◞‌ ‌͜‌ ‌◟◞╭◜◝‌ ‌͡‌ ‌◜◝╮‌ ‌͜‌ ‌◟◞╯☆‌ ‌҉‌ ‌
.‌ ‌҉☆‌ ‌҉(‌ ‌•‿•‌。‌ ‌)☆‌ ‌♡‌ ‌
♡‌ ‌　‌ ‌╰◟◞‌ ‌͜‌ ‌◟◞╯‌ ‌.‌ ‌҉☆‌ ‌


Ce as putea imbunatatii:
-numarul de linkuri poate fi aflat direct din input, fara o 
parcurgere suplimentara,insa trebuie modificat daca exista un link
intre o pagina si ea insasi.

Ce am invatat:
-sa citesc si sa scriu in fisiere in matlab
-sa calculez inversa cu metoda Gram-Schmidt
-sa implementez algoritmul PageRank

-------------------------------------------------------------------------------

Bibliografie

https://en.wikipedia.org/wiki/PageRank
https://en.wikipedia.org/wiki/Fuzzy_logic
https://www.cs.huji.ac.il/w~csip/CSIP2007-intro.pdf
++laboaratoare de pe moodle