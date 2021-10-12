SELECT student.name as student, AVG(assignment_submissions.duration) as average_assignment_duration, AVG(assignments.duration) AS average_estimated_duration
FROM students
JOIN assignment_submissions ON student.id = student_id
JOIN assignments ON assignment.id = assignment_id
WHERE students.end_date IS NULL 
GROUP BY student
HAVING AVG(assignment_submissions.duration) < AVG(assignment.duration)
ORDER BY AVG(assignment_submissions.duration) ASC;