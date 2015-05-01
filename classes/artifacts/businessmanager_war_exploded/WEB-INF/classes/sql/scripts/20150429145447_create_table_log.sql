-- // create table log
-- Migration SQL that makes the change goes here.
CREATE TABLE `businessmanager`.`log`(
	`id` INT(20) NOT NULL AUTO_INCREMENT COMMENT 'Log identifier.',
	`business_id` INT(20) NOT NULL COMMENT 'Business id.',
	`action_type_id` INT(20) NOT NULL COMMENT 'Action type id.',
	`market_id` INT(20) NOT NULL COMMENT 'Market id.',
	`product_id` INT(20) NOT NULL COMMENT 'Product id.',
	`quantity` DOUBLE NOT NULL COMMENT 'Product quantity in action.',
	`price` DOUBLE NOT NULL COMMENT 'Product price in action.',
	PRIMARY KEY (`id`)
);


-- //@UNDO
-- SQL to undo the change goes here.
DROP TABLE `businessmanager`.`log`;
