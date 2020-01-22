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
WHERE location = 'TN'
	AND star_rating > 4;


/* Question 5 */
SELECT COUNT(*)
FROM data_analyst_jobs
WHERE review_count BETWEEN 500 AND 1000;


/* Question 6 */
SELECT location AS state, AVG(star_rating) AS avg_rating
FROM data_analyst_jobs
WHERE location IS NOT NULL
GROUP BY state
ORDER BY avg_rating desc;


/* Question 7 */
SELECT COUNT(DISTINCT title)
FROM data_analyst_jobs;


/* Question 8 */
SELECT COUNT(DISTINCT title)
FROM data_analyst_jobs
WHERE location = 'CA';


/* Question 9 */
SELECT DISTINCT company, ROUND(AVG(star_rating),3) AS avg_rating
FROM data_analyst_jobs
GROUP BY company
HAVING SUM(review_count) > 5000;


/* Question 10 */
SELECT company, AVG(star_rating) AS avg_rating
FROM data_analyst_jobs
WHERE location IS NOT NULL
GROUP BY company
HAVING SUM(review_count) > 5000
ORDER BY avg_rating DESC;


/* Question 11 */
SELECT COUNT(DISTINCT title)
FROM data_analyst_jobs
WHERE title ILIKE '%ANALYST%';


/* Question 12 */
SELECT title
FROM data_analyst_jobs
WHERE title NOT ILIKE '%ANALYST%'
	AND title NOT ILIKE '%ANALYTICS%';

