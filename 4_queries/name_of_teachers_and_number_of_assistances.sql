SELECT teachers.name AS teacher, cohorts.name AS cohort, COUNT(assistance_requests) total_assistnces
FROM assistance_requests
JOIN teachers ON teachers.id = teacher_id
JOIN students ON student_id = students.id
JOIN cohorts ON cohorts.id = cohort_id
WHERE cohorts.name = 'JUL02'
GROUP BY teacher, cohort
ORDER BY teacher

