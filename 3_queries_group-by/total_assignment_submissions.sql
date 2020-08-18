-- list all cohorts
-- get total num of assignment submissions for each student (who is assigned to a cohort)
--  group by cohort. 

SELECT cohorts.name AS cohort, COUNT(assignment_submissions.*) AS total_submissions
FROM assignment_submissions
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohort
ORDER BY submissions DESC;