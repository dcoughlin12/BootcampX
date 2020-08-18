-- lsit currently enrolled students
-- then get their assignment completion times
-- then get avg of completion times... possibly by grouping?

SELECT students.name AS students, AVG(assignment_submissions.duration) as average_assignment_duration 
FROM students
JOIN assignment_submissions ON student_id = students.id
WHERE end_date IS NULL
GROUP BY students
ORDER BY average_assignment_duration DESC;