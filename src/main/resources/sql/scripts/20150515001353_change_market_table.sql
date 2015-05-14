-- // change market table
-- Migration SQL that makes the change goes here.
ALTER TABLE `businessmanager`.`market`
  DROP COLUMN `label`,
  CHANGE `market_group_id` `destination_group_id` INT(20) NULL COMMENT 'Market group id.';


-- //@UNDO
-- SQL to undo the change goes here.
ALTER TABLE `businessmanager`.`market`
  ADD COLUMN `label` VARCHAR(255) NULL  COMMENT 'Market label.' AFTER `name`,
  CHANGE `destination_group_id` `market_group_id` INT(20) NULL  COMMENT 'Market group id.';


