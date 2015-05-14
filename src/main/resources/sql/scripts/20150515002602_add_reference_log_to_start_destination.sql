-- // add reference log to start destination
-- Migration SQL that makes the change goes here.
ALTER TABLE `businessmanager`.`log`
  ADD CONSTRAINT `fk_log_to_destination` FOREIGN KEY (`start_destination_id`) REFERENCES `businessmanager`.`destination`(`id`);


-- //@UNDO
-- SQL to undo the change goes here.
ALTER TABLE `businessmanager`.`log` DROP FOREIGN KEY `fk_log_to_destination`;

