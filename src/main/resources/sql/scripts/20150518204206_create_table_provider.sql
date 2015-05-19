-- // create table provider
-- Migration SQL that makes the change goes here.
CREATE TABLE `businessmanager`.`provider`(
  `id` INT(20) NOT NULL AUTO_INCREMENT COMMENT 'Provider id.',
  `name` VARCHAR(255) NOT NULL COMMENT 'Provider name.',
  `address_id` INT(20) NOT NULL COMMENT 'Provider address id.',
  `manager_name` VARCHAR(255) COMMENT 'Provider manager name.',
  `manager_phone` VARCHAR(255) COMMENT 'Provider manager phone number.',
  PRIMARY KEY (`id`)
);



-- //@UNDO
-- SQL to undo the change goes here.
DROP TABLE `businessmanager`.`provider`;

