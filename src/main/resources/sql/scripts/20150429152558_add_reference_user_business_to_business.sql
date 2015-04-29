-- // add reference user business to business
-- Migration SQL that makes the change goes here.
ALTER TABLE `businessmanager`.`user_business` ADD CONSTRAINT `fk_user_business_to_business` FOREIGN KEY (`business_id`) REFERENCES `businessmanager`.`business`(`id`);


-- //@UNDO
-- SQL to undo the change goes here.
ALTER TABLE `businessmanager`.`user_business` DROP FOREIGN KEY `fk_user_business_to_business`;

