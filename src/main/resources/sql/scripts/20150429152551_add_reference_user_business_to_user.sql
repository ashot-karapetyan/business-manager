-- // add reference user business to user
-- Migration SQL that makes the change goes here.
ALTER TABLE `businessmanager`.`user_business` ADD CONSTRAINT `fk_user_business_to_user` FOREIGN KEY (`username`) REFERENCES `businessmanager`.`user`(`username`);


-- //@UNDO
-- SQL to undo the change goes here.
ALTER TABLE `businessmanager`.`user_business` DROP FOREIGN KEY `fk_user_business_to_user`;

