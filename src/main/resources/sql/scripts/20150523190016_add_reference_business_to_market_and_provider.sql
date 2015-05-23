-- // add reference business to market and provider
-- Migration SQL that makes the change goes here.
ALTER TABLE `businessmanager`.`business_market` ADD CONSTRAINT `fk_business_market_to_business` FOREIGN KEY (`business_id`) REFERENCES `businessmanager`.`business`(`id`);
ALTER TABLE `businessmanager`.`business_provider` ADD CONSTRAINT `fk_business_provider_to_business` FOREIGN KEY (`business_id`) REFERENCES `businessmanager`.`business`(`id`);
ALTER TABLE `businessmanager`.`business_market` ADD CONSTRAINT `fk_business_market_to_market` FOREIGN KEY (`market_id`) REFERENCES `businessmanager`.`market`(`id`);
ALTER TABLE `businessmanager`.`business_provider` ADD CONSTRAINT `fk_business_provider_to_provider` FOREIGN KEY (`provider_id`) REFERENCES `businessmanager`.`provider`(`id`);


-- //@UNDO
-- SQL to undo the change goes here.
ALTER TABLE `businessmanager`.`business_provider` DROP FOREIGN KEY `fk_business_provider_to_provider`;
ALTER TABLE `businessmanager`.`business_market` DROP FOREIGN KEY `fk_business_market_to_market`;
ALTER TABLE `businessmanager`.`business_provider` DROP FOREIGN KEY `fk_business_provider_to_business`;
ALTER TABLE `businessmanager`.`business_market` DROP FOREIGN KEY `fk_business_market_to_business`;

