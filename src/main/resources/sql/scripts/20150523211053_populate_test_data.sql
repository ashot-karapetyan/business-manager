-- // populate test data
-- Migration SQL that makes the change goes here.
INSERT INTO `businessmanager`.`market` (`id`, `name`, `address_id`, `manager_name`) VALUES ('1', 'SAS', '1', 'Name');
INSERT INTO `businessmanager`.`market` (`id`, `name`, `address_id`) VALUES ('2', 'Krpak', '1');
INSERT INTO `businessmanager`.`market` (`id`, `name`, `address_id`) VALUES ('3', 'Moskvichka', '1');
INSERT INTO `businessmanager`.`product` (`id`, `name`, `unit_id`) VALUES ('1', 'Ishkhan', '1');
INSERT INTO `businessmanager`.`product` (`id`, `name`, `unit_id`) VALUES ('2', 'Tarap', '2');
INSERT INTO `businessmanager`.`product` (`id`, `name`, `unit_id`) VALUES ('3', 'Khetsgetin', '3');
INSERT INTO `businessmanager`.`provider` (`id`, `name`, `address_id`) VALUES ('1', 'Dzki dzor', '1');
INSERT INTO `businessmanager`.`business_market` (`business_id`, `market_id`) VALUES ('1', '1');
INSERT INTO `businessmanager`.`business_market` (`business_id`, `market_id`) VALUES ('1', '2');
INSERT INTO `businessmanager`.`business_market` (`business_id`, `market_id`) VALUES ('1', '3');
INSERT INTO `businessmanager`.`business_provider` (`business_id`, `provider_id`) VALUES ('1', '1');
INSERT INTO `businessmanager`.`business_product` (`business_id`, `product_id`) VALUES ('1', '1');
INSERT INTO `businessmanager`.`business_product` (`business_id`, `product_id`) VALUES ('1', '2');
INSERT INTO `businessmanager`.`business_product` (`business_id`, `product_id`) VALUES ('1', '3');

-- //@UNDO
-- SQL to undo the change goes here.
DELETE FROM `businessmanager`.`business_product`;
DELETE FROM `businessmanager`.`business_provider`;
DELETE FROM `businessmanager`.`business_market`;
DELETE FROM `businessmanager`.`provider`;
DELETE FROM `businessmanager`.`product`;
DELETE FROM `businessmanager`.`market`;


