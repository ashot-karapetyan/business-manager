-- // add business provider table
-- Migration SQL that makes the change goes here.
CREATE TABLE `businessmanager`.`business_provider`(
  `business_id` INT(20) NOT NULL COMMENT 'Business id.',
  `provider_id` INT(20) NOT NULL COMMENT 'Provider id.',
  PRIMARY KEY (`business_id`, `provider_id`)
);



-- //@UNDO
-- SQL to undo the change goes here.
DROP TABLE `businessmanager`.`business_provider`;

