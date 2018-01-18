CREATE TABLE `dipa_code` (
	`id` int(10) NOT NULL AUTO_INCREMENT,
	`fiscal_year` varchar(10) NOT NULL,
	`institution` varchar(100) NOT NULL,
	`organizational_unit` varchar(100) NOT NULL,
	`city` varchar(100) NOT NULL,
	`work_unit` varchar(100) NOT NULL,
	`document` varchar(100) NOT NULL,
	`dipa_number` varchar(50) NOT NULL,
	`date` date NOT NULL,
	`kppn` varchar(100) NOT NULL,
	`parent_id` int(10) DEFAULT NULL,
	`revisi` int(10) DEFAULT NULL,
	`active` tinyint(1) NOT NULL DEFAULT '1',
	PRIMARY KEY (`id`)
);

ALTER TABLE `sppd` ADD `dipa_id` int(10) NULL AFTER `report_created_date`;
ALTER TABLE `sppd` ADD `dipa_fiscal_year` VARCHAR(50) NULL AFTER `dipa_id`;
ALTER TABLE `sppd` ADD `dipa_date` VARCHAR(50) NULL AFTER `dipa_fiscal_year`;
ALTER TABLE `sppd` ADD `dipa_code_number` VARCHAR(50) NULL AFTER `dipa_date`;