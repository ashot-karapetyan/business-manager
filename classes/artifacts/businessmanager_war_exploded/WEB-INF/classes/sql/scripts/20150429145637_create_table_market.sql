-- // create table market
-- Migration SQL that makes the change goes here.
CREATE TABLE `businessmanager`.`market`(
	`id` INT(20) NOT NULL AUTO_INCREMENT COMMENT 'Market id.',
	`name` VARCHAR(255) NOT NULL COMMENT 'Market name.',
	`label` VARCHAR(255) COMMENT 'Market label.',
	`address_id` INT(20) NOT NULL COMMENT 'Market address id.',
	`market_group_id` INT(20) COMMENT 'Market group id.',
	`manager_name` VARCHAR(255) NOT NULL COMMENT 'Market manager name.',
	`manager_phone` VARCHAR(255) NOT NULL COMMENT 'Market manager phone number.',
	PRIMARY KEY (`id`)
);


-- //@UNDO
-- SQL to undo the change goes here.
DROP TABLE `businessmanager`.`market`;

