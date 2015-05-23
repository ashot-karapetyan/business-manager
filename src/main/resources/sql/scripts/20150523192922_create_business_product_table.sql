-- // create business product table
-- Migration SQL that makes the change goes here.
CREATE TABLE `businessmanager`.`business_product`(
  `business_id` INT(20) NOT NULL COMMENT 'Business id.',
  `product_id` INT(20) NOT NULL COMMENT 'Product id.',
  PRIMARY KEY (`business_id`, `product_id`)
);



-- //@UNDO
-- SQL to undo the change goes here.
DROP TABLE `businessmanager`.`business_product`;

