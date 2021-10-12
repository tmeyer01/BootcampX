--Busy Days
--Total number of assignments for each day of bootcamp

SELECT day, count(*) AS total_assignments
FROM assignments
GROUP BY day 
HAVING count(*) >= 10 -- having 10 or more assignments
ORDER BY day;
 