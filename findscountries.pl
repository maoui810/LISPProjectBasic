

/* 
Manpreet Singh Harjot Singh Amna Tiwana 

this is a program that looks at the bodering countries in Asia and reflects 
  on the religion and language in those countries..

Queries you can use the check 

- country_bordering(A,X). whill find all the countries next to contry A(forexample country_bordering(india,X). whill find all the counties next to india

- religous_country(X,religion). will find you all the religons in country X or visa versa 

- language_country(X,language). same as function above this will find the contry with a given langauge or put country in function and see whats its language 
for example language_country(india,X). will produce hindi as langauge

-southern(X). and all the region lists will find a county in that region or you can print all the counties in give region 
-central_asia(X).
-south_East_Asia(X).
-west_Asia(X).
-east_asia(X).

next following queries more advance 

- area_re(nameofcountry,R). will print the given counties surrounding relgions and countries
- area_lang(nameofcountry,L). Finds the language around a border of given country finds all the languages or one
- check_southern(A,B). checks if the country is in southern asia and if the second country is also in the same region
- check_central(A,B).
- check_south_East_Asia(A,B). 

- traveldual(countryA,countryB). find the simlar countries that first two countires A and C also share a border with B and C so 
-travel_onFoot(A,B). checks to see if its possible to travel by foot since they are connected the one another from country A to country

-find_contryin_Asia(nameofcountry). Checks if a country is in asia or not

pick any five you want to use to test

remmber we didnt add all the countries that actually border one another for the test plese look threw the countries we added and choose those 

*/



india(democracy).
china(communism).



% these are the countries that border india

country_bordering(india,afghanistan).
country_bordering(india,bangladesh).
country_bordering(india,bhutan).
country_bordering(india,china).
country_bordering(india,myanmar).
country_bordering(india,nepal).
country_bordering(india,pakistan).

/* these are the countries that border china*/

country_bordering(china,afghanistan).
country_bordering(china,bhutan).
country_bordering(china,india).
country_bordering(china,kazakhstan).
country_bordering(china,kyrgyzstan).
country_bordering(china,laos).
country_bordering(china,mongolia).
country_bordering(china,myanmar).
country_bordering(china,nepal).
country_bordering(china,northkorea).
country_bordering(china,pakistan).
country_bordering(china,russia).
country_bordering(china,tajikistan).
country_bordering(china,vietnam).

/* these are the countries that border russia*/

country_bordering(russia,kazakhstan).
country_bordering(russia,mongolia).
country_bordering(russia,ukraine).
country_bordering(russia,finland).
country_bordering(russia,belarus).
country_bordering(russia,georgia).
country_bordering(russia,azerbaijan).
country_bordering(russia,estonia).
country_bordering(russia,latvia).
country_bordering(russia,lithuania).
country_bordering(russia,abkhazia).
country_bordering(russia,poland).
country_bordering(russia,norway).
country_bordering(russia,southossetia).
country_bordering(russia,northkorea).
country_bordering(russia,china).

/* these are the countries that border bhutan*/

country_bordering(bhutan,china).
country_bordering(bhutan,india).

/* these are the countries that border pakistan*/

country_bordering(pakistan,india).
country_bordering(pakistan,china).
country_bordering(pakistan,iran).
country_bordering(pakistan,china).

/* these are the countries that border afghanistan*/

country_bordering(afghanistan,turkmenistan).
country_bordering(afghanistan,uzbekistan).
country_bordering(afghanistan,tajikistan).
country_bordering(afghanistan,pakistan).
country_bordering(afghanistan,china).

/* these are the countries that border mongolia*/

country_bordering(mongolia,china).
country_bordering(mongolia,russia).


/* these are the countries that border thailand*/

country_bordering(thailand,myanmar).
country_bordering(thailand,laos).
country_bordering(thailand,malaysia).
country_bordering(thailand,cambodia).



country_bordering(myanmar,bangladesh).
country_bordering(myanmar,laos).
country_bordering(myanmar,china).
country_bordering(myanmar,thailand).

country_bordering(vietnam,cambodia).
country_bordering(vietnam,china).
country_bordering(vietnam,laos).


% this holds all the religions by countries 

religous_country(india,hindu).
religous_country(bangladesh,islam).
religous_country(myanmar,buddhism).
religous_country(nepal,hindu).
religous_country(china,buddhism).
religous_country(russia,christianity).
religous_country(bhutan,buddhism).
religous_country(mongolia,buddhism).
religous_country(pakistan,islam).
religous_country(afghanistan,islam).
religous_country(kyrgyzstan,islam).
religous_country(laos,buddhism).
religous_country(northkorea,shamanism).
religous_country(malaysia,islam).
religous_country(tajikistan,islam).
religous_country(vietnam,buddhism).
religous_country(iran,islam).
religous_country(cambodia,islam).
religous_country(southkorea,buddhism).
religous_country(uzbekistan,islam).
religous_country(turkmenistan,islam).
religous_country(japan,buddhism).

% this holds the most used language in that country 

language_country(india,hindi).
language_country(bangladesh,bengali).
language_country(myanmar,burmese).
language_country(nepal,nepali).
language_country(china,mandarin).
language_country(russia,russian).
language_country(bhutan,dzongkha).
language_country(mongolia,khalkha).
language_country(pakistan,urdu).
language_country(afghanistan,pashto).
language_country(kyrgyzstan,kyrgyz).
language_country(laos,lao).
language_country(northkorea,korean).
language_country(malaysia,malay).
language_country(tajikistan,tajiki).
language_country(vietnam,vietnamese).
language_country(iran,persian).
language_country(cambodia,khmer).
language_country(southkorea,korean).
language_country(uzbekistan,uzbek).
language_country(turkmenistan,turkmen).
language_country(japan,japanese).

% this list checks regions in asisa like which country belongs to which region area 

southern(X) :- member(X, [afghanistan, india, bhutan, bangladesh, iran, maldives, nepal, pakistan, srilanka]).

central_asia(X) :- member(X, [kazakhstan, kyrgyzstan, tajikistan, turkmenistan, uzbekistan, russia]).

south_East_Asia(X) :- member(X, [brunei, cambodia, indonesia, laos, malaysia, myanmar, philippines, singapore, thailand, timorleste, vietnam]).

west_Asia(X) :- member(X, [armenia, azerbaijan, bahrain, cyprus, georgia, iraq, israel, jordan, kawait, lebanon, oman, qatar, saudiarabia, syria, turkey, yemen]).

east_asia(X) :- member(X, [china, japan, mongolia, northkorea, southkorea]).


/* for given country this function finds all the religions around it  */


area_re(A,R) :- country_bordering(A,C),religous_country(C,R),write('Here are the Results '),nl ,write(R) ,nl,write(C),nl.


/* Finds the language around a border of given country finds all the languages or one */
area_lang(A,L) :- country_bordering(A,B), language_country(B,D), write(D).


/* checks if the country is in southern asia and if the second country is also in the same region */
check_southern(A,B):- travel(A,B),
southern(A), write(A), write('yes the country is in south Asia and borders '),write(B), nl.

/* Same as top function but checks central asia */

check_central(A,B):- travel(A,B),
central_asia(A), write(A), write('yes the country is in Central Asia and borders '),write(B), nl.

/* Same as top function but checks South east asia */

check_south_East_Asia(A,B):- travel(A,B),
south_East_Asia(A), write(A), write('yes the country is in Central Asia and borders '),write(B), nl.

/* find the simlar countries that first two countires A and C also share a border with B and C */
traveldual(A,C) :- country_bordering(A,B), country_bordering(B,C), write(A),nl,write(C), nl,
write('Both of first two countries also have these countires they also share borders with '),nl, write(B), nl.

/* checks to see if its possible to travel by foot since they are connected the one another from country A to country B */
travel_onFoot(A,B) :- country_bordering(A,X), country_bordering(X,B).

/* Checks if a country is in asia or not */ 
find_contryin_Asia(X) :- southern(X); central_asia(X); south_East_Asia(X); west_Asia(X); east_asia(X).