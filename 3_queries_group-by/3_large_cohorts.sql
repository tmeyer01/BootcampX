--Large Cohorts
--all cohorts with 18 or more students 
--had to join students on cohorts to have access to number of students 

SELECT cohorts.name as cohort_name, count(students.*) AS student_count
FROM cohorts
JOIN students ON cohorts.id = cohort_id
GROUP BY cohort_name
HAVING count(students.*) >= 18 
ORDER BY student_count;