
-- \i 1_queries_joins/student_total_assignment_duration.sql

SELECT SUM(assignment_submissions.duration)
FROM assignment_submissions
JOIN students ON student_id = students.id
WHERE students.name = 'Ibrahim Schimmel';