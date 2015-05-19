-- // change table destination
-- Migration SQL that makes the change goes here.
ALTER TABLE `businessmanager`.`destination`
  CHANGE `destination_group_id` `market_group_id` INT(20) NULL  COMMENT 'Market group id.',
  CHANGE `manager_name` `manager_name` VARCHAR(255) NULL  COMMENT 'Market manager name.',
  CHANGE `manager_phone` `manager_phone` VARCHAR(255) NULL  COMMENT 'Market manager phone number.';



-- //@UNDO
-- SQL to undo the change goes here.
ALTER TABLE `businessmanager`.`destination`
  CHANGE `market_group_id` `destination_group_id` INT(20) NULL  COMMENT 'Market group id.',
  CHANGE `manager_name` `manager_name` VARCHAR(255) NOT NULL COMMENT 'Market manager name.',
  CHANGE `manager_phone` `manager_phone` VARCHAR(255) NOT NULL COMMENT 'Market manager phone number.';


