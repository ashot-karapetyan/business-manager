-- // add reference log to action type
-- Migration SQL that makes the change goes here.
ALTER TABLE `businessmanager`.`log` ADD CONSTRAINT `fk_log_to_action_type` FOREIGN KEY (`action_type_id`) REFERENCES `businessmanager`.`action_type`(`id`);

-- //@UNDO
-- SQL to undo the change goes here.
ALTER TABLE `businessmanager`.`log` DROP FOREIGN KEY `fk_log_to_action_type`;

