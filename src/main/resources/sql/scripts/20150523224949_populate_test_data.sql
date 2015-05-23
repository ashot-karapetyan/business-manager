--// populate test data
--Migration SQL that makes the change goes here.
DELETE FROM `businessmanager`.`business_product`;
DELETE FROM `businessmanager`.`business_provider`;
DELETE FROM `businessmanager`.`business_market`;
DELETE FROM `businessmanager`.`provider`;
DELETE FROM `businessmanager`.`product`;
DELETE FROM `businessmanager`.`market`;

insert  into `market`(`id`,`name`,`address_id`,`market_group_id`,`manager_name`,`manager_phone`) values (1,'Մարալիկ Կրպակ',1,NULL,'',NULL),(2,'Արմավիր Կրպակ',1,NULL,'',NULL),(3,'Կիրովական Կրպակ',1,NULL,'',NULL),(4,'Դիլիջան Կրպակ',1,NULL,'',NULL),(5,'Երևան Թումանյան',1,NULL,'',NULL),(6,'Երևան Տիգրան Մեծ',1,NULL,'',NULL),(7,'Երևան Ռայկոմ',1,NULL,'',NULL),(8,'Մասիս Կրպակ',1,NULL,'',NULL);
insert  into `product`(`id`,`name`,`unit_id`) values (1,'Իշխան',1),(2,'Թառափ',1),(3,'Խեցգետին',1),(4,'Սառեցված',1),(5,'Ապխտած',1);
insert  into `provider`(`id`,`name`,`address_id`,`manager_name`,`manager_phone`) values (1,'Չերքեզի ձոր',1,'Գևորգյան','091457896');
insert  into `business_market`(`business_id`,`market_id`) values (1,1),(1,2),(1,3),(1,4),(1,5),(1,6),(1,7),(1,8);
insert  into `business_product`(`business_id`,`product_id`) values (1,1),(1,2),(1,3),(1,4),(1,5);
insert  into `business_provider`(`business_id`,`provider_id`) values (1,1);


-- //@UNDO
-- SQL to undo the change goes here.
DELETE FROM `businessmanager`.`business_product`;
DELETE FROM `businessmanager`.`business_provider`;
DELETE FROM `businessmanager`.`business_market`;
DELETE FROM `businessmanager`.`provider`;
DELETE FROM `businessmanager`.`product`;
DELETE FROM `businessmanager`.`market`;

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


