-- // change table log
-- Migration SQL that makes the change goes here.
ALTER TABLE `businessmanager`.`log`
  CHANGE `start_destination_id` `provider_id` INT(20) NULL  COMMENT 'Provider id.',
  CHANGE `end_destination_id` `market_id` INT(20) NOT NULL  COMMENT 'Market id.';


-- //@UNDO
-- SQL to undo the change goes here.
ALTER TABLE `businessmanager`.`log`
  CHANGE `provider_id` `start_destination_id` INT(20) NOT NULL  COMMENT 'Start destination id.',
  CHANGE `market_id` `end_destination_id` INT(20) NOT NULL  COMMENT 'End destination id.';


