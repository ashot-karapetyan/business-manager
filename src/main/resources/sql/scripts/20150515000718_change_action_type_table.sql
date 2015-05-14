-- // change action type table
-- Migration SQL that makes the change goes here.
ALTER TABLE `businessmanager`.`action_type`
  DROP COLUMN `b`,
  DROP COLUMN `c`,
  ADD COLUMN `model_id` INT(20) NOT NULL  COMMENT 'Model identifier.' AFTER `id`,
  CHANGE `a` `coefficent` FLOAT NOT NULL  COMMENT 'Coefficient a of equation.';


-- //@UNDO
-- SQL to undo the change goes here.
ALTER TABLE `businessmanager`.`action_type`
  DROP COLUMN `model_id`,
  CHANGE `coefficent` `a` FLOAT NOT NULL  COMMENT 'Coefficient a of equation.',
  ADD COLUMN `b` FLOAT NOT NULL  COMMENT 'Coefficient b of equation.' AFTER `a`,
  ADD COLUMN `c` FLOAT NOT NULL  COMMENT 'Coefficient c of equation.' AFTER `b`;


