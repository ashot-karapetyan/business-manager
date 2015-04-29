-- // create table user business
-- Migration SQL that makes the change goes here.
CREATE TABLE `businessmanager`.`user_business`(
	`id` INT NOT NULL AUTO_INCREMENT COMMENT 'Identifier.',
	`username` VARCHAR(45) NOT NULL COMMENT 'Username.',
	`business_id` INT(20) NOT NULL COMMENT 'User business id.',
	PRIMARY KEY (`id`)
);


-- //@UNDO
-- SQL to undo the change goes here.
DROP TABLE `businessmanager`.`user_business`;

