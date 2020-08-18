-- //////// WE CAN USE NESTED QUERIES IN A SELECT STATEMENT IF IT RETURNS A SINGLE VALUE//////////
-- SELECT (
--   SELECT count(assignments)
--   FROM assignments
-- )-count(assignment_submissions) as total_incomplete
-- FROM assignment_submissions
-- JOIN students ON students.id = student_id
-- WHERE students.name = 'Ibrahim Schimmel';

-- If a query returns a single value, we can use it in our SELECT statement just like any other value.!!!
-- SELECT (
--   SELECT count(*)
--   FROM table_name
-- ) as total, other_column
-- FROM other_table_name
-- ORDER BY total;

-- //////// WE CAN USE NESTED QUERIES IN A FROM CALL IF IT RETURNS A TABLE//////////
-- The result of a select is effectively a table that can be used as you would use a table
-- So a select statement may be used as a data source of another select statement.

-- SELECT * FROM (
--   SELECT something_id
--   FROM someTable
--   WHERE something
-- ) as sub_table;

-- SELECT count(students)
-- FROM students
-- JOIN cohorts on cohorts.id = cohort_id
-- GROUP BY cohorts;

-- SELECT avg(total_students) as average_students
-- FROM (
--   SELECT count(students) as total_students, cohorts.name as cohort_name
--   FROM students
--   JOIN cohorts on cohorts.id = cohort_id
--   GROUP BY cohorts.name
-- ) as totals_table;


-- ///////// CAN USE IT IN AN 'IN' STATEMENT.  /////////////////
-- If the result of a query returns only one column, we can use that sub query in our WHERE clause.

-- SELECT assignments.name
-- FROM assignments 
-- WHERE id NOT IN
-- (
--   SELECT assignment_id
--   FROM assignment_submissions
--   JOIN students ON students.id = student_id
--   WHERE students.name = 'Ibrahim Schimmel'
-- );

-- SELECT * FROM table
-- WHERE id IN (
--   SELECT something_id
--   FROM someTable
--   WHERE something
-- );













