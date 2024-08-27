SELECT * FROM movie titles
SELECT movieid, synopsis, movietitle, RELEASE YEAR, rating
FROM movie titles
--
FILTER DATA WHERE CLAUSE --
SELECT movieid, synopsis, movie title, RELEASE YEAR, rating
FROM movie titles
WHERE --releaseyear>=2001 AND rating>=6 /* */
synopsis LIKE 'man'
-- SORT DAATA ORDER BY CLAUSE
SELECT movieid, synopsis, movie title, RELEASE YEAR, rating
FROM movie titles
WHERE RELEASE YEAR=1998
ORDER BY RELEASE YEAR, rating DESC


--
FUNCTIONS - Inbuilt Functions
Scalar VALUE Functions -- Work on specific data in a column
SELECT movieid, UPPER (synopsis) AS uppercasesynopsis, movie title, RELEASE YEAR, rating,
CHAR_LENGTH (movietitle) charatersintitle, LEFT (movietitle, 3) abbreviation
FROM movie titles
--
AGGREGATE Functions
SELECT COUNT (movieid) moviestotal
FROM movietitles
SELECT AVG (RELEASE YEAR)
FROM movietitles



AGGREGATE Functions
SELECT COUNT (movieid) moviestotal
FROM movietitles
SELECT AVG (rating)
FROM movie titles
SELECT SUM(rating)
FROM movietitles
SELECT MIN (RELEASE YEAR) FROM movie titles


GROUPING --GROUP BY CLAUSE
SELECT RELEASE YEAR, COUNT (movieid) AS moviesreleased
FROM movie titles
GROUP BY RELEASE YEAR
HAVING COUNT (movieid) >1



JOINS --
Allow us TO combine TABLE INTO a single result SET
INNER JOIN OR Equi JOIN
SELECT movieid, synopsis, movie title, RELEASE YEAR, rating, CONCAT (firstname, 'lastname) addedbyname
FROM movie titles AS m, users AS u
WHERE m. 'addedby'u. 'userid'
--
SELECT movieid, synopsis, movie title, release year, rating, CONCAT (firstname,' ', lastname) addedbyname
FROM movie titles AS m INNER JOIN users AS u
ON m. addedby=u. `userid'
