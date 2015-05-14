-- // change log table
-- Migration SQL that makes the change goes here.
ALTER TABLE `businessmanager`.`log`
  CHANGE `producer_id` `start_destination_id` INT(20) NOT NULL COMMENT 'Start destination id.',
  CHANGE `market_id` `end_destination_id` INT(20) NOT NULL COMMENT 'End destination id.';


-- //@UNDO
-- SQL to undo the change goes here.
ALTER TABLE `businessmanager`.`log`
  CHANGE `start_destination_id` `producer_id` INT(20) NOT NULL  COMMENT 'Producer id.',
  CHANGE `end_destination_id` `market_id` INT(20) NOT NULL  COMMENT 'Market id.';

