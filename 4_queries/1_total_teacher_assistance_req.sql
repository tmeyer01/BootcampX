SELECT COUNT(assistance_requests.*) AS total_assistances, teachers.name AS name 
FROM teachers
JOIN assistance_requests ON teachers.id = teacher_id
WHERE name = 'Waylon Boehm'
GROUP BY name;