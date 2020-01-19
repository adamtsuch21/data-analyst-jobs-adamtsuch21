/* Question 1 */
SELECT COUNT(*)
FROM data_analyst_jobs;


/* Question 2 */
SELECT *
FROM data_analyst_jobs
LIMIT 10;


/* Question 3 */
SELECT COUNT(*)
FROM data_analyst_jobs
WHERE location = 'TN'
OR location = 'KY';


/* Question 4 */
SELECT COUNT(*)
FROM data_analyst_jobs
WHERE star_rating > 4;


/* Question 5 */
SELECT COUNT(*)
FROM data_analyst_jobs
WHERE review_count > 500
AND review_count < 1000;


/* Question 6 */
SELECT location AS state, AVG(star_rating) AS avg_rating
FROM data_analyst_jobs
GROUP BY state
ORDER BY avg_rating desc;


/* Question 7 */
/*SELECT COUNT(DISTINCT title)
FROM data_analyst_jobs;*/


/* Question 8 */
/*SELECT COUNT(DISTINCT title)
FROM data_analyst_jobs
WHERE location = 'CA';*/


/* Question 9 */
/*SELECT company, AVG(star_rating) AS avg_rating
FROM data_analyst_jobs
WHERE review_count > 5000
GROUP BY company;*/


/* Question 10 */
/*SELECT company, AVG(star_rating) AS avg_rating
FROM data_analyst_jobs
WHERE review_count > 5000
GROUP BY company
ORDER BY avg_rating desc;*/


/* Question 11 */
/*SELECT COUNT(DISTINCT title)
FROM data_analyst_jobs
WHERE title LIKE '%nalyst%';*/


/* Question 12 */
/*SELECT DISTINCT title
FROM data_analyst_jobs
WHERE title NOT LIKE '%nalyst%'
AND title NOT LIKE '%ANALYST%'
AND title NOT LIKE '%nalytics%'
AND title NOT LIKE '%ANALYTICS%';*/

