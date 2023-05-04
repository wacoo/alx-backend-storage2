-- create a stored procedure AddBonus that add nes correction for a student
DROP PROCEDURE IF EXISTS AddBonus;
DELIMITER ||
CREATE PROCEDURE AddBonus(IN user_id INT, IN project_name VARCHAR(255), IN score float)
    BEGIN
        DECLARE pid INT;
        DECLARE count INT;
        DECLARE u_count INT;
        SELECT id FROM projects WHERE projects.name = project_name INTO pid;
        SELECT count(*) FROM projects WHERE projects.name = project_name INTO count;
        IF @count = 0 THEN
            INSERT INTO projects(name) VALUES (project_name);
        END IF;
	-- SELECT count(*) FROM users WHERE id = user_id INTO u_count;
        -- IF @u_count != 0 THEN
        INSERT INTO corrections(user_id, project_id, score) VALUES (user_id, pid, score);
        -- END IF;
    END; ||
DELIMITER ;
