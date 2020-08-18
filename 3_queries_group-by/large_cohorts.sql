-- need to list all cohorts
-- need to list student count for each of them by using GROUP BY
-- then I can narrow down the search to >=18 students. 

SELECT cohorts.name AS cohort_name, count(students.*) AS student_count 
FROM cohorts
JOIN students ON cohort_id = cohorts.id
GROUP BY cohort_name
HAVING count(students.*) >= 18
ORDER BY student_count;
