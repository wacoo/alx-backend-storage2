-- create view need_meeting that lists all students that score unde 80
-- and no last_meeting or more than a month
CREATE VIEW AS SELECT name FROM students WHERE score < 80 OR last_meeting = NULL; --  OR last_meeting