DROP TABLE if exists assistance_requests CASCADE;
DROP TABLE if exists teachers CASCADE;
CREATE TABLE teachers (
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(255) NOT NULL,
  is_active BOOLEAN DEFAULT TRUE, -- set as boolean need to remember this one 
  start_date DATE,
  end_date DATE
);


CREATE TABLE assistance_requests (
  id SERIAL PRIMARY KEY NOT NULL,
  student_id INTEGER REFERENCES students(id) ON DELETE CASCADE,
  teacher_id INTEGER REFERENCES teachers(id) ON DELETE CASCADE,
  assignment_id INTEGER REFERENCES assignments(id) ON DELETE CASCADE, 
  created_at TIMESTAMP, 
  started_at TIMESTAMP,
  completed_at TIMESTAMP,
  student_feedback TEXT,
  teacher_feedback TEXT
);