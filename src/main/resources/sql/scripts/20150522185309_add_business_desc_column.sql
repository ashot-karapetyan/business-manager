-- // add business desc column
-- Migration SQL that makes the change goes here.
ALTER TABLE `businessmanager`.`business`
  ADD COLUMN `description` VARCHAR(255) NULL  COMMENT 'Business\'s description.' AFTER `name`;


-- //@UNDO
-- SQL to undo the change goes here.
ALTER TABLE `businessmanager`.`business` DROP COLUMN `description`;


