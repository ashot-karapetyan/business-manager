-- // add business markets table
-- Migration SQL that makes the change goes here.
CREATE TABLE `businessmanager`.`business_market`(
  `business_id` INT(20) NOT NULL COMMENT 'Business id.',
  `market_id` INT(20) NOT NULL COMMENT 'Market id.',
  PRIMARY KEY (`business_id`, `market_id`)
);



-- //@UNDO
-- SQL to undo the change goes here.
DROP TABLE `businessmanager`.`business_market`;

