-- // create table business
-- Migration SQL that makes the change goes here.
CREATE TABLE `businessmanager`.`business`(
	`id` INT(20) NOT NULL AUTO_INCREMENT COMMENT 'Business id.',
	`name` VARCHAR(255) NOT NULL COMMENT 'Business\'s name.',
	`address_id` INT(20) NOT NULL COMMENT 'Business\'s address id.',
	`model_id` INT(20) NOT NULL COMMENT 'Business\'s model id.',
	PRIMARY KEY (`id`)
);


-- //@UNDO
-- SQL to undo the change goes here.
DROP TABLE `businessmanager`.`business`;

