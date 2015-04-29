-- // add reference log to market
-- Migration SQL that makes the change goes here.
ALTER TABLE `businessmanager`.`log` ADD CONSTRAINT `fk_log_to_market` FOREIGN KEY (`market_id`) REFERENCES `businessmanager`.`market`(`id`);


-- //@UNDO
-- SQL to undo the change goes here.
ALTER TABLE `businessmanager`.`log` DROP FOREIGN KEY `fk_log_to_market`;

