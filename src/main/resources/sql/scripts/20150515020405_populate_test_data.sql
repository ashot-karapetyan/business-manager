-- // populate test data
-- Migration SQL that makes the change goes here.
INSERT INTO `businessmanager`.`business` (`id`, `name`, `address_id`, `model_id`) VALUES ('1', 'Fish', '1', '1');
INSERT INTO `businessmanager`.`business` (`id`, `name`, `address_id`, `model_id`) VALUES ('2', 'Caviar', '1', '1');
INSERT INTO `businessmanager`.`user_business` (`id`, `username`, `business_id`) VALUES ('1', 'admin', '1');
INSERT INTO `businessmanager`.`user_business` (`id`, `username`, `business_id`) VALUES ('2', 'admin', '2');


-- //@UNDO
-- SQL to undo the change goes here.
DELETE FROM `businessmanager`.`user_business` WHERE `id` = '1';
DELETE FROM `businessmanager`.`user_business` WHERE `id` = '2';
DELETE FROM `businessmanager`.`business` WHERE `id` = '1';
DELETE FROM `businessmanager`.`business` WHERE `id` = '2';
