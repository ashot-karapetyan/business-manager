-- // add reference log to business
-- Migration SQL that makes the change goes here.
ALTER TABLE `businessmanager`.`log` ADD CONSTRAINT `fk_log_to_business` FOREIGN KEY (`business_id`) REFERENCES `businessmanager`.`business`(`id`);


-- //@UNDO
-- SQL to undo the change goes here.
ALTER TABLE `businessmanager`.`log` DROP FOREIGN KEY `fk_log_to_business`;

