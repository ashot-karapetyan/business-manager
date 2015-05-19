-- // rename table destination
-- Migration SQL that makes the change goes here.
RENAME TABLE `businessmanager`.`destination` TO `businessmanager`.`market`;


-- //@UNDO
-- SQL to undo the change goes here.
RENAME TABLE `businessmanager`.`market` TO `businessmanager`.`destination`;

