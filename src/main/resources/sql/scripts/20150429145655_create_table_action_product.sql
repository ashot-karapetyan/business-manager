-- // create table action product
-- Migration SQL that makes the change goes here.
CREATE TABLE `businessmanager`.`product`(
	`id` INT(20) NOT NULL AUTO_INCREMENT COMMENT 'Product id.',
	`name` VARCHAR(255) NOT NULL COMMENT 'Product name.',
	`unit_id` INT(20) NOT NULL COMMENT 'id of product\'s unit of measurement.',
	PRIMARY KEY (`id`)
);


-- //@UNDO
-- SQL to undo the change goes here.
DROP TABLE `businessmanager`.`product`;

