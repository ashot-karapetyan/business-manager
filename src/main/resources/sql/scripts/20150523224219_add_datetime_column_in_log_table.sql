-- // add datetime column in log table
-- Migration SQL that makes the change goes here.
ALTER TABLE `businessmanager`.`log`
  ADD COLUMN `datetime` TIMESTAMP DEFAULT CURRENT_TIMESTAMP   NOT NULL  COMMENT 'Log registered date and time.' AFTER `id`;



-- //@UNDO
-- SQL to undo the change goes here.
ALTER TABLE `businessmanager`.`log`
  DROP COLUMN `datetime`;


