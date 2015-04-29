-- // create table action type
-- Migration SQL that makes the change goes here.
CREATE TABLE `businessmanager`.`action_type`(
	`id` INT(20) NOT NULL AUTO_INCREMENT COMMENT 'Action type id.',
	`name` VARCHAR(255) NOT NULL COMMENT 'Action name.',
	`a` FLOAT NOT NULL COMMENT 'Coefficient a of equation.',
	`b` FLOAT NOT NULL COMMENT 'Coefficient b of equation.',
	`c` FLOAT NOT NULL COMMENT 'Coefficient c of equation.',
	PRIMARY KEY (`id`)
);


-- //@UNDO
-- SQL to undo the change goes here.
DROP TABLE `businessmanager`.`action_type`;

