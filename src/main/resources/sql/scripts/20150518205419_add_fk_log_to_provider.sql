-- // add fk log to provider
-- Migration SQL that makes the change goes here.
ALTER TABLE `businessmanager`.`log` ADD CONSTRAINT `fk_log_to_provider` FOREIGN KEY (`provider_id`) REFERENCES `businessmanager`.`provider`(`id`);


-- //@UNDO
-- SQL to undo the change goes here.
ALTER TABLE `businessmanager`.`log` DROP FOREIGN KEY `fk_log_to_provider`;

