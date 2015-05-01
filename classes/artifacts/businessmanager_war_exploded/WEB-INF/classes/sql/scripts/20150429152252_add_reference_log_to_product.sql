-- // add reference log to product
-- Migration SQL that makes the change goes here.
ALTER TABLE `businessmanager`.`log` ADD CONSTRAINT `fk_log_to_product` FOREIGN KEY (`product_id`) REFERENCES `businessmanager`.`product`(`id`);


-- //@UNDO
-- SQL to undo the change goes here.
ALTER TABLE `businessmanager`.`log` DROP FOREIGN KEY `fk_log_to_product`;

