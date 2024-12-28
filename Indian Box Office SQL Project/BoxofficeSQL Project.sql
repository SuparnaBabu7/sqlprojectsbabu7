SELECT * FROM BOXOFFICE;
SELECT * FROM DIRECTOR;
SELECT * FROM GENRE;
SELECT * FROM LANGUAGE;

#1)Write a query to get Total films released ?
SELECT COUNT(FILMID) AS TOTALFILMS_RELEASED FROM BOXOFFICE;

#2)Write a query to get Total budget ?
SELECT SUM(BUDGET) AS TOTAL_BUDGET FROM BOXOFFICE;

#3)Write a query to get Total worldwide collection ?
SELECT SUM(Worldwide_Collection) AS Total_worldwide_collection FROM BOXOFFICE;

#4)Write a query to get Total First day collection worldwide ?
SELECT SUM(First_Day_Collection_Worldwide) AS TOTAL_1st_DAY_COLLECTIONS FROM BOXOFFICE;

#5)Write a query to get Total Overseas collection ?
SELECT SUM(Overseas_Collection) AS Total_Overseas_collection FROM BOXOFFICE;

#6)Write a query to get Total India Gross collection ?
SELECT SUM(India_Gross_Collection) AS Total_India_Gross_collection FROM BOXOFFICE;

#7)Top 10 filmsbased on world wide collections. Display films,collections
SELECT TITLE,SUM(Worldwide_Collection) AS Total_worldwide_collection 
FROM BOXOFFICE
GROUP BY TITLE
ORDER BY Total_worldwide_collection DESC
LIMIT 10;

#8)Total Number of films released by year?
SELECT YEAR,COUNT(FILMID) AS TOTAL_FILMS_COUNT 
FROM BOXOFFICE
GROUP BY YEAR 
ORDER BY TOTAL_FILMS_COUNT DESC;

#9)Top 10 filmsbased on india collections?
SELECT TITLE,SUM(India_Gross_Collection) AS INDIA_COLLECTIONS
FROM BOXOFFICE 
GROUP BY TITLE
ORDER BY INDIA_COLLECTIONS DESC
LIMIT 10;

#10)Top 10 filmsbased on overses collections.Display films,collections
SELECT TITLE,SUM(Overseas_Collection) AS Total_Overseas_collection
FROM BOXOFFICE
GROUP BY TITLE
ORDER BY Total_Overseas_collection DESC
LIMIT 10;

#11)Top 10 filmsbased on firstday collections.Display films,collections
SELECT TITLE,SUM(First_Day_Collection_Worldwide) AS TOTAL_1st_DAY_COLLECTIONS
FROM BOXOFFICE
GROUP BY TITLE 
ORDER BY TOTAL_1st_DAY_COLLECTIONS DESC
LIMIT 10;

#12)Weekday wise films released,Display week name and no of films released?
SELECT WEEK_NAME,COUNT(FILMID) AS TOTAL_FILMS_COUNT
FROM BOXOFFICE
GROUP BY WEEK_NAME
ORDER BY TOTAL_FILMS_COUNT DESC;

#13)Write a query to get OTT platofrm wise movies count?
SELECT OTT_PLATFORM,COUNT(FILMID) AS TOTAL_FILMS_COUNT
FROM BOXOFFICE
GROUP BY OTT_PLATFORM 
ORDER BY TOTAL_FILMS_COUNT DESC;

#14)Top 10 Directors by films released?
SELECT D.DIRECTOR,COUNT(B.FILMID) AS TOTAL_FILMS_COUNT 
FROM DIRECTOR D JOIN BOXOFFICE B 
ON D.DIRECTORID = B.DIRECTORID 
GROUP BY D.DIRECTOR 
ORDER BY TOTAL_FILMS_COUNT DESC
LIMIT 10;

#15)Top 10 directors by world wide collection?
SELECT D.DIRECTOR,SUM(B.Worldwide_Collection) AS Total_worldwide_collection 
FROM DIRECTOR D JOIN BOXOFFICE B 
ON D.DIRECTORID = B.DIRECTORID
GROUP BY D.DIRECTOR 
ORDER BY Total_worldwide_collection DESC
LIMIT 10;

#16)Top10 lead actors by world wide collection?
SELECT Lead_Actor_Actress,SUM(Worldwide_Collection) AS Total_worldwide_collection
FROM BOXOFFICE 
GROUP BY Lead_Actor_Actress
ORDER BY Total_worldwide_collection DESC
LIMIT 10;

#17)Top 10 movies by IMDb rating?
SELECT TITLE,IMDb_Rating 
FROM BOXOFFICE 
ORDER BY IMDb_Rating DESC
LIMIT 10;

#18)Bottom 10 movies by IMDb rating?
SELECT TITLE,IMDB_RATING
FROM BOXOFFICE
ORDER BY IMDB_RATING ASC 
LIMIT 10;

#19)Write a query to get 5 longest run time movies?
SELECT TITLE,Runtime_mins 
FROM BOXOFFICE 
ORDER BY Runtime_mins DESC 
LIMIT 5;

#20)Write a query to get 5 shortest run time movies?
SELECT TITLE,Runtime_mins 
FROM BOXOFFICE
ORDER BY Runtime_mins ASC 
LIMIT 5;

#21)Top7 movies by world wide collection in Bollywood?
SELECT TITLE,SUM(Worldwide_Collection) AS TOTAL_WORLDWIDE_COLLECTION 
FROM BOXOFFICE 
WHERE INDUSTRY = "BOLLYWOOD"
GROUP BY TITLE 
ORDER BY TOTAL_WORLDWIDE_COLLECTION DESC
LIMIT 7;

#22)Top7 movies by world wide collection in Tollywood?
SELECT TITLE,SUM(Worldwide_Collection) AS TOTAL_WORLDWIDE_COLLECTION 
FROM BOXOFFICE 
WHERE INDUSTRY = "TOLLYWOOD"
GROUP BY TITLE
ORDER BY TOTAL_WORLDWIDE_COLLECTION DESC 
LIMIT 7;

#23)Top7 movies by world wide collection in Kollywood?
SELECT TITLE,SUM(Worldwide_Collection) AS TOTAL_WORLDWIDE_COLLECTION 
FROM BOXOFFICE
WHERE INDUSTRY = "KOLLYWOOD"
GROUP BY TITLE
ORDER BY TOTAL_WORLDWIDE_COLLECTION DESC 
LIMIT 7;

#24)Top7 movies by world wide collection in Sandalwood?
SELECT TITLE,SUM(Worldwide_Collection) AS TOTAL_WORLDWIDE_COLLECTION  
FROM BOXOFFICE 
WHERE INDUSTRY = "SANDALWOOD"
GROUP BY TITLE 
ORDER BY TOTAL_WORLDWIDE_COLLECTION DESC 
LIMIT 7; 

#25)Top7 movies by world wide collection in Mollywood?
SELECT TITLE,SUM(Worldwide_Collection) AS TOTAL_WORLDWIDE_COLLECTION
FROM BOXOFFICE 
WHERE INDUSTRY = "MOLLYWOOD"
GROUP BY TITLE 
ORDER BY TOTAL_WORLDWIDE_COLLECTION DESC
LIMIT 7;

#26)Write query to display industry and verdict wise films count?
SELECT INDUSTRY,VERDICT,COUNT(FILMID) AS FILMS_COUNT
FROM BOXOFFICE 
GROUP BY INDUSTRY,VERDICT
ORDER BY INDUSTRY;

#27)Write query to get films based on budget in Bollywood?
SELECT TITLE,SUM(BUDGET) AS TTL_BUDGET 
FROM BOXOFFICE 
WHERE INDUSTRY = "BOLLYWOOD"
GROUP BY TITLE;

#28)Write query to get films based on budget in Tollywood?
SELECT TITLE,SUM(BUDGET) AS TTL_BUDGET 
FROM BOXOFFICE
WHERE INDUSTRY = "TOLLYWOOD"
GROUP BY TITLE;

#29)Write query to get films based on budget in Kollywood? 
SELECT TITLE,SUM(BUDGET) AS TTL_BUDGET 
FROM BOXOFFICE 
WHERE INDUSTRY = "KOLLYWOOD"
GROUP BY TITLE;

#30)Write query to get films based on budget in Sandalwood?
SELECT TITLE,SUM(BUDGET) AS TTL_BUDGET 
FROM BOXOFFICE 
WHERE INDUSTRY = "SANDALWOOD"
GROUP BY TITLE;

#31)Write query to get films based on budget in Mollywood? 
SELECT TITLE,SUM(BUDGET)AS TTL_BUDGET 
FROM BOXOFFICE 
WHERE INDUSTRY = "MOLLYWOOD"
GROUP BY TITLE;

#32)Top 5 movies by IMDb rating from Bollywood?
SELECT TITLE,IMDB_RATING 
FROM BOXOFFICE 
WHERE INDUSTRY = "BOLLYWOOD"
ORDER BY IMDB_RATING DESC 
LIMIT 5;

#33)Top 5 movies by IMDb rating from  Kollywood?
SELECT TITLE,IMDB_RATING 
FROM BOXOFFICE 
WHERE INDUSTRY = "KOLLYWOOD" 
ORDER BY IMDB_RATING DESC
LIMIT 5;

#34)Top 5 movies by IMDb rating from Tollywood?
SELECT TITLE,IMDB_RATING 
FROM BOXOFFICE 
WHERE INDUSTRY = "TOLLYWOOD"
ORDER BY IMDB_RATING  DESC 
LIMIT 5; 

#35)Top 5 movies by IMDb rating from Sandalwood?
SELECT TITLE,IMDB_RATING 
FROM BOXOFFICE
WHERE INDUSTRY = "SANDALWOOD"
ORDER BY IMDB_RATING DESC
LIMIT 5;

#36)Top 5 movies by IMDb rating from Mollywood?
SELECT TITLE,IMDB_RATING
FROM BOXOFFICE 
WHERE INDUSTRY = "MOLLYWOOD"
ORDER BY IMDB_RATING DESC
LIMIT 5;

#37)Write a query to get language wise budget?
SELECT L.LANGUAGE,SUM(B.BUDGET) AS TTL_BUDGET 
FROM LANGUAGE L JOIN BOXOFFICE B 
ON L.LANGUAGEID=B.LANGUAGEID 
GROUP BY L.LANGUAGE 
ORDER BY TTL_BUDGET DESC;

#38)Write a query to get language wise how many directors are there?
SELECT L.LANGUAGE,COUNT(DISTINCT(B.DIRECTORID)) AS DIRECTORS_COUNT 
FROM LANGUAGE L JOIN BOXOFFICE B 
ON L.LANGUAGEID = B.LANGUAGEID
GROUP BY L.LANGUAGE 
ORDER BY DIRECTORS_COUNT DESC;

#39)Write a query to get language wise worldwide total collection ?
SELECT L.LANGUAGE,SUM(B.Worldwide_Collection) AS Total_Worldwide_Collection 
FROM LANGUAGE L JOIN BOXOFFICE B 
ON L.LANGUAGEID = B.LANGUAGEID 
GROUP BY L.LANGUAGE 
ORDER BY Total_Worldwide_Collection DESC; 

#40)Write a query to get language, lead actor/actress wise films they acted? 
SELECT L.LANGUAGE,B.LEAD_ACTOR_ACTRESS,COUNT(B.FILMID) AS FILM_COUNT
FROM LANGUAGE L JOIN BOXOFFICE B 
ON L.LANGUAGEID = B.LANGUAGEID 
GROUP BY L.LANGUAGE,B.LEAD_ACTOR_ACTRESS 
ORDER BY FILM_COUNT DESC; 

#41)Write a query to get language, year wise films released?
SELECT L.LANGUAGE,B.YEAR,COUNT(B.FILMID) AS FILM_COUNT 
FROM LANGUAGE L JOIN BOXOFFICE B 
ON L.LANGUAGEID = B.LANGUAGEID 
GROUP BY L.LANGUAGE,B.YEAR 
ORDER BY FILM_COUNT DESC; 

#42)Write a query to get films which was not released on overseas?
SELECT TITLE 
FROM BOXOFFICE 
WHERE Overseas_Collection = 0;

#43)Write a query to get language wise top 3 longest runtime moves?
SELECT LANGUAGE,TITLE,RUNTIME_MINS FROM (
SELECT L.LANGUAGE,B.TITLE,B.RUNTIME_MINS,
DENSE_RANK() OVER(PARTITION BY L.LANGUAGE ORDER BY B.RUNTIME_MINS DESC) AS RNK
FROM LANGUAGE L JOIN BOXOFFICE B 
ON L.LANGUAGEID = B.LANGUAGEID ) A
WHERE RNK <=3;

#44)Write a query to get language wise bottom 5 shortest runtime moves?
SELECT LANGUAGE,TITLE,RUNTIME_MINS FROM(
SELECT L.LANGUAGE,B.TITLE,B.RUNTIME_MINS,
DENSE_RANK() OVER(PARTITION BY L.LANGUAGE ORDER BY RUNTIME_MINS ASC) AS RNK 
FROM LANGUAGE L JOIN BOXOFFICE B 
ON L.LANGUAGEID = B.LANGUAGEID) A 
WHERE RNK <=3;

#45)Write a query to get language wise top 5 films based first day collections?
SELECT LANGUAGE,TITLE,TTL1STDAYWWCOLLECTION FROM(
SELECT L.LANGUAGE,B.TITLE,SUM(B.First_Day_Collection_Worldwide) AS TTL1STDAYWWCOLLECTION,
DENSE_RANK() OVER(PARTITION BY L.LANGUAGE ORDER BY SUM(B.First_Day_Collection_Worldwide) DESC) AS RNK 
FROM LANGUAGE L JOIN BOXOFFICE B 
ON L.LANGUAGEID = B.LANGUAGEID 
GROUP BY L.LANGUAGE,B.TITLE) A 
WHERE RNK <= 5;

#46)Write a query to get language wise top 5 films based India gross collections?
SELECT LANGUAGE,TITLE,INDGROSSCOLLECTION FROM(
SELECT L.LANGUAGE,B.TITLE,SUM(B.India_Gross_Collection) AS INDGROSSCOLLECTION,
DENSE_RANK() OVER(PARTITION BY L.LANGUAGE ORDER BY SUM(B.India_Gross_Collection) DESC) AS RNK
FROM LANGUAGE L JOIN BOXOFFICE B 
ON L.LANGUAGEID = B.LANGUAGEID
GROUP BY L.LANGUAGE,B.TITLE) A
WHERE RNK <=5;

#47)Write a query to get language, Director wise films count? 
SELECT L.LANGUAGE,D.DIRECTOR,COUNT(B.FILMID) AS FILMS_COUNT
FROM LANGUAGE L JOIN BOXOFFICE B 
ON L.LANGUAGEID = B.LANGUAGEID
JOIN DIRECTOR D 
ON B.DIRECTORID = D.DIRECTORID
GROUP BY L.LANGUAGE,B.DIRECTORID,D.DIRECTOR;

#48)Write a query to get language wise OTT platofrm wise fims count?
SELECT L.LANGUAGE,B.OTT_PLATFORM,COUNT(B.FILMID) AS FILM_COUNT 
FROM LANGUAGE L JOIN BOXOFFICE B 
ON L.LANGUAGEID = B.LANGUAGEID
GROUP BY L.LANGUAGE,B.OTT_PLATFORM;

#49)What are top 10 fimns based language and first day collection?
SELECT LANGUAGE,TITLE,WW1stDAYCOLLECTION FROM (
SELECT L.LANGUAGE,B.TITLE,SUM(B.First_Day_Collection_Worldwide) AS WW1stDAYCOLLECTION,
DENSE_RANK() OVER(PARTITION BY L.LANGUAGE ORDER BY SUM(B.First_Day_Collection_Worldwide) DESC) AS RNK 
FROM LANGUAGE L JOIN BOXOFFICE B 
ON L.LANGUAGEID = B.LANGUAGEID 
GROUP BY L.LANGUAGE,B.TITLE) A 
WHERE RNK <=10; 

#50)Write a query to get director wise number of fims released in from year 2017 to 2019?
SELECT D.DIRECTOR,COUNT(B.FILMID) AS FILMS_COUNT 
FROM DIRECTOR D JOIN BOXOFFICE B
ON D.DIRECTORID = B.DIRECTORID 
WHERE YEAR IN (2017,2018,2019)
GROUP BY D.DIRECTOR 
ORDER BY FILMS_COUNT DESC;

#51)Write a query to get director wise world wide collections?
SELECT D.DIRECTOR,SUM(B.Worldwide_Collection) AS WWCOLLECTIONS 
FROM DIRECTOR D JOIN BOXOFFICE B 
ON D.DIRECTORID = B.DIRECTORID 
GROUP BY D.DIRECTOR 
ORDER BY WWCOLLECTIONS DESC;

#52)Write a query to get director wise first day world wide collections?
SELECT D.DIRECTOR,SUM(B.First_Day_Collection_Worldwide) AS WW1stDAYCOLLECTION 
FROM DIRECTOR D JOIN BOXOFFICE B 
ON D.DIRECTORID = B.DIRECTORID
GROUP BY D.DIRECTOR
ORDER BY WW1stDAYCOLLECTION DESC;

#53)Write a query to get director wise India gross collections? 
SELECT D.DIRECTOR,SUM(B.India_Gross_Collection) AS INDIA_GROSS_COLLECTION 
FROM DIRECTOR D JOIN BOXOFFICE B 
ON D.DIRECTORID = B.DIRECTORID
GROUP BY D.DIRECTOR
ORDER BY INDIA_GROSS_COLLECTION DESC;

#54)Write a query to get director wise overseas collections? 
SELECT D.DIRECTOR,SUM(B.Overseas_Collection) AS OVERSEAS_COLLECTION
FROM DIRECTOR D JOIN BOXOFFICE B 
ON D.DIRECTORID = B.DIRECTORID
GROUP BY D.DIRECTOR 
ORDER BY OVERSEAS_COLLECTION DESC;

#55)Write a query to get director, lead actor/actress and number of films? 
SELECT D.DIRECTOR,B.LEAD_ACTOR_ACTRESS,COUNT(B.FILMID) AS FILM_COUNT 
FROM DIRECTOR D JOIN BOXOFFICE B 
ON D.DIRECTORID = B.DIRECTORID
GROUP BY D.DIRECTOR,B.LEAD_ACTOR_ACTRESS
ORDER BY FILM_COUNT DESC ;

#56)Write a query to get films which is having budget between 150 crores and 277 crores?
SELECT TITLE,SUM(BUDGET) AS TTL_BUDGET 
FROM BOXOFFICE 
GROUP BY TITLE
HAVING TTL_BUDGET >=  150 AND TTL_BUDGET <=  277
ORDER BY TTL_BUDGET DESC;

#57)Write a query to get director, week name wise films released 
SELECT D.DIRECTOR,B.WEEK_NAME,COUNT(B.FILMID) AS FILMS_COUNT 
FROM DIRECTOR D JOIN BOXOFFICE B 
ON D.DIRECTORID = B.DIRECTORID 
GROUP BY D.DIRECTOR,B.WEEK_NAME 
ORDER BY FILMS_COUNT DESC;

#58)Write a query to get OTT platofrm and director wise films released?
SELECT B.OTT_PLATFORM,D.DIRECTOR,COUNT(B.FILMID) AS FILM_COUNT 
FROM BOXOFFICE B JOIN DIRECTOR D 
ON B.DIRECTORID = D.DIRECTORID  
GROUP BY B.OTT_PLATFORM,D.DIRECTOR ;

#59)Write a query to get director wise films released on Friday only?
SELECT D.DIRECTOR,COUNT(B.FILMID) AS FILMS_COUNT 
FROM DIRECTOR D JOIN BOXOFFICE B 
ON D.DIRECTORID = B.DIRECTORID 
WHERE WEEK_NAME = "FRIDAY"
GROUP BY D.DIRECTOR; 

#60)Write a query to get films based on IMDb reating between 6.5 and 7.7?
SELECT TITLE,IMDB_RATING 
FROM BOXOFFICE 
HAVING IMDB_RATING >= 6.5 AND IMDB_RATING <= 7.7;

#61)Write a query to get director,films and IMDb ratings?
SELECT D.DIRECTOR,B.TITLE,B.IMDB_RATING 
FROM DIRECTOR D JOIN BOXOFFICE B 
ON D.DIRECTORID = B.DIRECTORID;  

#62)Write a query to get films with highest budget based flop verdict? #budget greater that 100cr
SELECT TITLE,BUDGET,VERDICT 
FROM BOXOFFICE 
WHERE VERDICT = "FLOP"
HAVING BUDGET >=100
ORDER BY BUDGET DESC ; 

#63)Write a query to get total number of directors?
SELECT COUNT(DIRECTORID) AS TOTAL_DIRECTORS_COUNT
FROM DIRECTOR;

#64)Write a query to get vedridct wise total films released?
SELECT VERDICT,COUNT(FILMID) AS TOTAL_FILMS 
FROM BOXOFFICE 
GROUP BY VERDICT 
ORDER BY TOTAL_FILMS DESC; 

#65)Write a query to get top 10 directors based number of films? 
SELECT D.DIRECTOR,COUNT(B.FILMID) AS FILMS_COUNT 
FROM DIRECTOR D JOIN BOXOFFICE B 
ON D.DIRECTORID = B.DIRECTORID 
GROUP BY D.DIRECTOR 
ORDER BY FILMS_COUNT DESC 
LIMIT 10; 

#66)Write a query to get top 5 directors based on world wide collections and also industry wise?
SELECT INDUSTRY,DIRECTOR,WW_COLLECTIONS FROM
(SELECT B.INDUSTRY,D.DIRECTOR,SUM(B.Worldwide_Collection) AS WW_COLLECTIONS,
DENSE_RANK() OVER(PARTITION BY B.INDUSTRY ORDER BY SUM(B.Worldwide_Collection) DESC) AS RNK 
FROM DIRECTOR D JOIN BOXOFFICE B 
ON D.DIRECTORID = B.DIRECTORID 
GROUP BY B.INDUSTRY,D.DIRECTOR) A 
WHERE RNK <=5; 

#67)Write a query to get top 3 directors based on India gross collections in BollYwood industry?
SELECT D.DIRECTOR,SUM(B.India_Gross_Collection) AS IND_GROSS_COLELCTION 
FROM DIRECTOR D JOIN BOXOFFICE B 
ON D.DIRECTORID = B.DIRECTORID 
WHERE INDUSTRY = "BOLLYWOOD"
GROUP BY D.DIRECTOR 
ORDER BY IND_GROSS_COLELCTION DESC
LIMIT 3;

#68) Write a query to get top 3 directors based on India gross collections in Tollywood industry?
SELECT D.DIRECTOR,SUM(B.India_Gross_Collection) AS IND_GROSS_COLELCTION 
FROM DIRECTOR D JOIN BOXOFFICE B 
ON D.DIRECTORID = B.DIRECTORID 
WHERE INDUSTRY = "TOLLYWOOD" 
GROUP BY D.DIRECTOR 
ORDER BY IND_GROSS_COLELCTION DESC
LIMIT 3;

#69)Write a query to get top 3 directors based on India gross collections in Kollywood industry?
SELECT D.DIRECTOR, SUM(B.India_Gross_Collection) AS IND_GROSS_COLELCTION 
FROM DIRECTOR D JOIN BOXOFFICE B 
ON D.DIRECTORID = B.DIRECTORID 
WHERE INDUSTRY = "KOLLYWOOD"
GROUP BY D.DIRECTOR 
ORDER BY IND_GROSS_COLELCTION DESC
LIMIT 3;

#70) Write a query to get top 3 directors based on India gross collections in Mollywood industry?
SELECT D.DIRECTOR,SUM(B.India_Gross_Collection) AS IND_GROSS_COLELCTION 
FROM DIRECTOR D JOIN BOXOFFICE B 
ON D.DIRECTORID = B.DIRECTORID 
WHERE INDUSTRY = "MOLLYWOOD"
GROUP BY D.DIRECTOR 
ORDER BY IND_GROSS_COLELCTION DESC 
LIMIT 3;

#71) Write a query to get top 3 directors based on India gross collections in Sandalwood industry? 
SELECT D.DIRECTOR,SUM(B.India_Gross_Collection) AS IND_GROSS_COLELCTION 
FROM DIRECTOR D JOIN BOXOFFICE B 
ON D.DIRECTORID = B.DIRECTORID 
WHERE INDUSTRY = "SANDALWOOD" 
GROUP BY D.DIRECTOR 
ORDER BY IND_GROSS_COLELCTION DESC 
LIMIT 3;

#72)Write a query to get total number of generes?
SELECT COUNT(GENREID) AS TOTAL_GENRE_COUNT
FROM GENRE;

#73)Write query to get director,language,genere films count?
SELECT D.DIRECTOR,L.LANGUAGE,G.GENRE,COUNT(B.FILMID) AS FILMS_COUNT
FROM DIRECTOR D JOIN BOXOFFICE B 
ON D.DIRECTORID = B.DIRECTORID 
JOIN LANGUAGE L 
ON L.LANGUAGEID = B.LANGUAGEID 
JOIN GENRE G 
ON G.GENREID = B.GENREID 
GROUP BY D.DIRECTOR,L.LANGUAGE,G.GENRE; 

#74)Write a query to genere wise budget? 
SELECT G.GENRE,SUM(B.BUDGET) AS TTL_BUDGET 
FROM GENRE G JOIN BOXOFFICE B 
ON G.GENREID = B.GENREID 
GROUP BY G.GENRE 
ORDER BY TTL_BUDGET DESC; 

#75)Write a query to get genere wise first day worldwide collections? 
SELECT G.GENRE,SUM(B.First_Day_Collection_Worldwide) AS WW1stDAY_COLLECTIONS 
FROM GENRE G JOIN BOXOFFICE B 
ON G.GENREID = B.GENREID 
GROUP BY G.GENRE 
ORDER BY WW1stDAY_COLLECTIONS DESC; 

#76)Write a query to get genere wise overseas collections? 
SELECT G.GENRE,SUM(B.Overseas_Collection) AS OVERSEAS_COLLECTIONS 
FROM GENRE G JOIN BOXOFFICE B 
ON G.GENREID = B.GENREID 
GROUP BY G.GENRE
ORDER BY OVERSEAS_COLLECTIONS DESC; 

#77)Write a query to get genere wise India gross collections? 
SELECT G.GENRE,SUM(B.India_Gross_Collection) AS IND_GROSS_COLLECTIONS
FROM GENRE G JOIN BOXOFFICE B 
ON G.GENREID = B.GENREID 
GROUP BY G.GENRE 
ORDER BY IND_GROSS_COLLECTIONS DESC; 

#78)Write a query to get genere wise top 2 longest run time movies? 
SELECT GENRE,TITLE,RUNTIME_MINS FROM(
SELECT G.GENRE,B.TITLE,B.RUNTIME_MINS, 
DENSE_RANK() OVER(PARTITION BY G.GENRE ORDER BY B.RUNTIME_MINS DESC) AS RNK 
FROM GENRE G JOIN BOXOFFICE B 
ON G.GENREID = B.GENREID) A 
WHERE RNK <= 2; 

#79)Write a query to get genere wise bottom shortest runtime movies? 
SELECT GENRE,TITLE,RUNTIME_MINS FROM(
SELECT G.GENRE,B.TITLE,B.RUNTIME_MINS,
DENSE_RANK() OVER(PARTITION BY G.GENRE ORDER BY B.RUNTIME_MINS ASC) AS RNK 
FROM GENRE G JOIN BOXOFFICE B 
ON G.GENREID = B.GENREID) A 
WHERE RNK <=2;  

#80)Write a query to get verdict, genere wise films released? 
SELECT B.VERDICT,G.GENRE,B.TITLE 
FROM BOXOFFICE B JOIN GENRE G 
ON B.GENREID = G.GENREID; 

#81)Write a query to get genere, OTT platform wise films count?
SELECT G.GENRE,B.OTT_PLATFORM,COUNT(B.FILMID) AS FILMS_COUNT 
FROM GENRE G JOIN BOXOFFICE B 
ON G.GENREID = B.GENREID 
GROUP BY G.GENRE,B.OTT_PLATFORM 
ORDER BY FILMS_COUNT DESC; 

#82)Write a query to get genere wise films count? 
SELECT G.GENRE,COUNT(B.FILMID) AS FILMS_COUNT 
FROM GENRE G JOIN BOXOFFICE B 
ON G.GENREID = B.GENREID 
GROUP BY G.GENRE 
ORDER BY FILMS_COUNT DESC; 

#83)Write a query to get genere wise films count  in Tollywood Industry?
SELECT G.GENRE,COUNT(B.FILMID) AS FILM_COUNT 
FROM GENRE G  JOIN BOXOFFICE B 
ON G.GENREID = B.GENREID 
WHERE INDUSTRY = "TOLLYWOOD" 
GROUP BY G.GENRE 
ORDER BY FILM_COUNT DESC; 

#84)Write a query to get genere wise films count in Kollywood Industry? 
SELECT G.GENRE, COUNT(B.FILMID) AS FILM_COUNT 
FROM GENRE G JOIN BOXOFFICE B 
ON G.GENREID = B.GENREID 
WHERE INDUSTRY = "KOLLYWOOD"  
GROUP BY G.GENRE 
ORDER BY FILM_COUNT DESC; 

#85)Write a query to get genere wise films count in Mollywood Industry?
SELECT G.GENRE,COUNT(B.FILMID) AS FILM_COUNT 
FROM GENRE G JOIN BOXOFFICE B 
ON G.GENREID = B.GENREID 
WHERE INDUSTRY = "MOLLYWOOD" 
GROUP BY G.GENRE 
ORDER BY FILM_COUNT DESC; 

#86)Write a query to get genere wise films count in Bollywood Industry? 
SELECT G.GENRE,COUNT(B.FILMID) AS FILM_COUNT 
FROM GENRE G JOIN BOXOFFICE B 
ON G.GENREID = B.GENREID 
WHERE INDUSTRY = "BOLLYWOOD" 
GROUP BY G.GENRE 
ORDER BY FILM_COUNT DESC;

#87)Write a query to get genere wise films count in Sandalwood Industry?
SELECT G.GENRE,COUNT(B.FILMID) AS FILM_COUNT 
FROM GENRE G JOIN BOXOFFICE B 
ON G.GENREID = B.GENREID 
WHERE INDUSTRY = "SANDALWOOD" 
GROUP BY G.GENRE 
ORDER BY FILM_COUNT DESC; 

#88)Write a query to get lead actors/actress wise,genere and films count?  
SELECT LEAD_ACTOR_ACTRESS,COUNT(DISTINCT GENREID) AS GENRECOUNT,COUNT(FILMID) AS FILMCOUNT 
FROM BOXOFFICE 
GROUP BY LEAD_ACTOR_ACTRESS;

#89)Write a query to get 5th rank movie based on Worldwide total collections? 
SELECT TITLE,WWD_COLELCTIONS FROM(
SELECT TITLE,SUM(Worldwide_Collection) AS WWD_COLELCTIONS, 
DENSE_RANK() OVER(ORDER BY SUM(Worldwide_Collection) DESC) AS RNK 
FROM BOXOFFICE
GROUP BY TITLE) A 
WHERE RNK = 5; 

#90)Write a query to get 5th rank movie by industry wise based on First day worldwide collections?
SELECT INDUSTRY,TITLE,WWD1st_DAY_COLLECTIONS FROM(
SELECT INDUSTRY,TITLE,SUM(First_Day_Collection_Worldwide) WWD1st_DAY_COLLECTIONS, 
DENSE_RANK() OVER(PARTITION BY INDUSTRY ORDER BY SUM(First_Day_Collection_Worldwide) DESC) AS RNK
FROM BOXOFFICE
GROUP BY INDUSTRY,TITLE) A 
WHERE RNK = 5;

#91)Write a query to get 3rd rank movie by industry wise based on IMDb Ratings? 
SELECT * FROM(
SELECT INDUSTRY,TITLE,IMDB_RATING, 
ROW_NUMBER() OVER(PARTITION BY INDUSTRY ORDER BY IMDB_RATING DESC) AS RNK 
FROM BOXOFFICE ) A 
WHERE RNK = 3; 

#92)Write a stored procedure to get top 5 films based on India gross colelctions? 
DELIMITER &&
CREATE PROCEDURE TOP5FILMS_INDGROSS()
BEGIN
SELECT TITLE,SUM(India_Gross_Collection) AS IND_GROSS_COLLECTION
FROM BOXOFFICE 
GROUP BY TITLE
ORDER BY IND_GROSS_COLLECTION DESC
LIMIT 5;
END;
&&
CALL TOP5FILMS_INDGROSS()

#93)Write a stored procedure to get industry Budget and Worldwide total collections? 
# If we call any industry it will display industry,budget and wordwide total collections? 
DELIMITER &&
CREATE PROCEDURE GET_INDUSTRY_BUDGET_TTLCOLLECTIONS(
FILM_INDUSTRY VARCHAR(20))
BEGIN
SELECT * FROM(
SELECT INDUSTRY,SUM(BUDGET) AS TTL_BUDGET,ROUND(SUM(Worldwide_Collection),2) AS TTL_WWD_COLLECTIONS
FROM BOXOFFICE 
GROUP BY INDUSTRY) A
WHERE INDUSTRY = FILM_INDUSTRY;
END
&&
CALL GET_INDUSTRY_BUDGET_TTLCOLLECTIONS("TOLLYWOOD"); 
CALL GET_INDUSTRY_BUDGET_TTLCOLLECTIONS("BOLLYWOOD");

#94)Calculate YoY% Budget growth? 
SELECT YEAR,CY_BUDGET,(((CY_BUDGET-PY_BUDGET)/PY_BUDGET) * 100) AS YOY FROM(
SELECT YEAR,SUM(BUDGET) AS CY_BUDGET,LAG(SUM(BUDGET)) OVER(ORDER BY YEAR)AS PY_BUDGET
FROM BOXOFFICE 
GROUP BY YEAR
) A 

#95)Calculate YoY% Worldwide total collelctions growth? 
SELECT YEAR,CY_WWCOLLECTIONS,ROUND(((CY_WWCOLLECTIONS - PY_WWCOLLECTIONS)/PY_WWCOLLECTIONS) *100,2) 
AS YoY_GROWTH
FROM(
SELECT YEAR,
ROUND(SUM(Worldwide_Collection),2) AS CY_WWCOLLECTIONS,
LAG(SUM(Worldwide_Collection)) OVER(ORDER BY YEAR) AS PY_WWCOLLECTIONS 
FROM BOXOFFICE 
GROUP BY YEAR
) A 

#96)Calculate YoY% Indian Gross collections growth? 
SELECT YEAR,CY_IND_GROSS_COLLECTION,
ROUND((((CY_IND_GROSS_COLLECTION-PY_IND_GROSS_COLLECTION)/PY_IND_GROSS_COLLECTION) * 100),2) AS YoY_GROWTH
FROM(
SELECT YEAR,ROUND(SUM(India_Gross_Collection),2) AS CY_IND_GROSS_COLLECTION,
LAG(ROUND((SUM(India_Gross_Collection)),2)) OVER(ORDER BY YEAR) AS PY_IND_GROSS_COLLECTION
FROM BOXOFFICE 
GROUP BY YEAR) A 

#97)Create a stored procedure to get Total films count, world wide total collections? 
DELIMITER &&
CREATE PROCEDURE TTL_FILMS_WW_COLLECTIONS()
BEGIN
SELECT COUNT(FILMID) AS TTL_FILMS_COUNT,ROUND(SUM(Worldwide_Collection),2) AS TTL_WW_COLLECTIONS
FROM BOXOFFICE;
END;
&&
CALL TTL_FILMS_WW_COLLECTIONS()































