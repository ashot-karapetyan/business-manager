-- // add producer id column in log table
-- Migration SQL that makes the change goes here.
ALTER TABLE `businessmanager`.`log`
  ADD COLUMN `producer_id` INT(20) NOT NULL  COMMENT 'Producer id.' AFTER `business_id`;


-- //@UNDO
-- SQL to undo the change goes here.
ALTER TABLE `businessmanager`.`log`
  DROP COLUMN `producer_id`;

