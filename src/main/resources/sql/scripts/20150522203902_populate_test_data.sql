-- // populate test data
-- Migration SQL that makes the change goes here.
UPDATE `businessmanager`.`business` SET `description` = 'Distributing fish produced by Fish Farm in Krpak supermarkets in regions and Yerevan.' WHERE `id` = '1';
UPDATE `businessmanager`.`business` SET `description` = 'Distribution caviar in Armenia. Specially in SAS and Krpak supermarkets in yerevan and regions.' WHERE `id` = '2';

-- //@UNDO
-- SQL to undo the change goes here.
UPDATE `businessmanager`.`business` SET `description` = '' WHERE `id` = '1';
UPDATE `businessmanager`.`business` SET `description` = '' WHERE `id` = '2';


