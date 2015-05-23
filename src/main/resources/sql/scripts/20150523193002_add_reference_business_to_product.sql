-- // add reference business to product
-- Migration SQL that makes the change goes here.
ALTER TABLE `businessmanager`.`business_product` ADD CONSTRAINT `fk_business_product_to_business` FOREIGN KEY (`business_id`) REFERENCES `businessmanager`.`business`(`id`);
ALTER TABLE `businessmanager`.`business_product` ADD CONSTRAINT `fk_business_product_to_product` FOREIGN KEY (`product_id`) REFERENCES `businessmanager`.`product`(`id`);


-- //@UNDO
-- SQL to undo the change goes here.
ALTER TABLE `businessmanager`.`business_product` DROP FOREIGN KEY `fk_business_product_to_product`;
ALTER TABLE `businessmanager`.`business_product` DROP FOREIGN KEY `fk_business_product_to_business`;

