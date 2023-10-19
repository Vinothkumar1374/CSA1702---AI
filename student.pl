% Define some students, teachers, subjects, and course codes.
student(john).
student(mary).
student(lisa).

teacher(professor_smith).
teacher(professor_jones).
teacher(professor_davis).

subject(math).
subject(science).
subject(history).

% Define the courses associated with each subject.
course(math, math101).
course(math, math201).
course(science, science101).
course(science, science202).
course(history, history101).

% Assign students to courses.
enrolled(john, math101).
enrolled(john, science101).
enrolled(mary, math201).
enrolled(mary, science202).
enrolled(lisa, history101).

% Assign teachers to courses.
teaches(professor_smith, math101).
teaches(professor_smith, math201).
teaches(professor_jones, science101).
teaches(professor_jones, science202).
teaches(professor_davis, history101).
