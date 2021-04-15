# --- WireDatabaseBackup {"time":"2021-04-14 16:45:42","user":"","dbName":"primmat","description":"","tables":[],"excludeTables":["pages_drafts","pages_roles","permissions","roles","roles_permissions","users","users_roles","user","role","permission"],"excludeCreateTables":[],"excludeExportTables":["field_roles","field_permissions","field_email","field_pass","caches","session_login_throttle","page_path_history"]}

DROP TABLE IF EXISTS `caches`;
CREATE TABLE `caches` (
  `name` varchar(250) NOT NULL,
  `data` mediumtext NOT NULL,
  `expires` datetime NOT NULL,
  PRIMARY KEY (`name`),
  KEY `expires` (`expires`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `field_admin_theme`;
CREATE TABLE `field_admin_theme` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_email`;
CREATE TABLE `field_email` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `field_files`;
CREATE TABLE `field_files` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `filedata` mediumtext,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`),
  FULLTEXT KEY `filedata` (`filedata`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1044', '1804180907-a3horizontal.pdf', '2', '', '2021-03-16 15:05:51', '2021-03-16 15:05:51', '');
INSERT INTO `field_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1044', 'aktualizace-web_-sablony-ii-1-1.pdf', '1', '', '2021-03-16 15:05:51', '2021-03-16 15:05:51', '');
INSERT INTO `field_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1044', 'primmat-tour.pdf', '0', '', '2021-03-16 14:50:19', '2021-03-16 14:50:19', '');
INSERT INTO `field_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1083', 'edo-63-41-m-01-ekonomika-a-podnikani-_denni-studium_-nemcina-19-20.pdf', '3', '', '2021-03-17 16:12:38', '2021-03-17 16:12:38', '');
INSERT INTO `field_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1086', 'skolni-seznam-literarnich-del-k-maturite.pdf', '0', '', '2021-03-17 16:22:09', '2021-03-17 16:22:09', '');
INSERT INTO `field_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1083', 'zadost-o-mesicni-platbu-predpisu-skolneho.odt', '16', '', '2021-03-17 16:13:29', '2021-03-17 16:13:29', '');
INSERT INTO `field_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1083', 'pravidla-pro-hodnoceni-vysledku-vzdelavani.docx', '11', '', '2021-03-17 16:12:38', '2021-03-17 16:12:38', '');
INSERT INTO `field_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1083', 'predbezna-prihlaska-formular-a5.pdf', '12', '', '2021-03-17 16:12:38', '2021-03-17 16:12:38', '');
INSERT INTO `field_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1083', 'skolni-rad.docx', '13', '', '2021-03-17 16:12:38', '2021-03-17 16:12:38', '');
INSERT INTO `field_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1083', 'skolska-rada-primmat.docx', '14', '', '2021-03-17 16:12:38', '2021-03-17 16:12:38', '');
INSERT INTO `field_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1083', 'zadost-o-uvoleni-z-tv.odt', '15', '', '2021-03-17 16:13:29', '2021-03-17 16:13:29', '');
INSERT INTO `field_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1083', 'potvrzeni-o-studiu-urad-prace.pdf', '10', '', '2021-03-17 16:12:38', '2021-03-17 16:12:38', '');
INSERT INTO `field_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1083', 'potvrzeni-o-studiu-skolni.pdf', '9', '', '2021-03-17 16:12:38', '2021-03-17 16:12:38', '');
INSERT INTO `field_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1083', 'organizaci-skolniho-roku-2020-2021.docx', '8', '', '2021-03-17 16:12:38', '2021-03-17 16:12:38', '');
INSERT INTO `field_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1083', 'omlouvani_nepritomnosti_ve_vyucovani.pdf', '7', '', '2021-03-17 16:12:38', '2021-03-17 16:12:38', '');
INSERT INTO `field_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1083', 'maturitni_prace-pravidla_hodnoceni.docx', '6', '', '2021-03-17 16:12:38', '2021-03-17 16:12:38', '');
INSERT INTO `field_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1083', 'gdpr.pdf', '5', '', '2021-03-17 16:12:38', '2021-03-17 16:12:38', '');
INSERT INTO `field_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1083', 'anj_kriteria_hodnoceni_mz2021.docx', '4', '', '2021-03-17 16:12:38', '2021-03-17 16:12:38', '');
INSERT INTO `field_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1083', 'edo-63-41-m-01-ekonomika-a-podnikani-_denni-studium_-anglictina-19-20.pdf', '2', '', '2021-03-17 16:12:38', '2021-03-17 16:12:38', '');
INSERT INTO `field_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1083', 'dodatek-c.docx', '1', '', '2021-03-17 16:12:38', '2021-03-17 16:12:38', '');
INSERT INTO `field_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1083', 'edo-63-41-m-01-ekonomika-a-podnikani-_denni-studium_-cestina-19-20.pdf', '0', '', '2021-03-17 16:12:38', '2021-03-17 16:12:38', '');
INSERT INTO `field_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1087', 'topics-part-iii-2016.pdf', '0', '', '2021-03-17 16:26:39', '2021-03-17 16:26:39', '');
INSERT INTO `field_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1088', 'maruritni-okruhy-geografie-a-cestovni-ruch.pdf', '0', '', '2021-03-17 16:27:29', '2021-03-17 16:27:29', '');
INSERT INTO `field_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1089', 'maturitni-okruhy-isa.pdf', '0', '', '2021-03-17 16:28:01', '2021-03-17 16:28:01', '');
INSERT INTO `field_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1090', 'maturitni-temata-podnikatelstvi-intern_-sluzby-_1.pdf', '0', '', '2021-03-17 16:29:07', '2021-03-17 16:29:07', '');
INSERT INTO `field_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1091', 'maturitni-temata-podnikatelstvi-obchodnici-_2.pdf', '0', '', '2021-03-17 16:29:55', '2021-03-17 16:29:55', '');
INSERT INTO `field_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1092', 'pos-mat-okr-mich.pdf', '0', '', '2021-03-17 16:34:12', '2021-03-17 16:34:12', '');
INSERT INTO `field_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1084', 'prihlaska-k-mz-_1_-verze-2.docx', '12', '', '2021-03-23 13:38:26', '2021-03-23 13:38:26', '');
INSERT INTO `field_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1084', 'mz-cjl_1.docx', '9', '', '2021-03-23 13:38:26', '2021-03-23 13:38:26', '');
INSERT INTO `field_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1084', 'mz-cjl.docx', '10', '', '2021-03-23 13:38:26', '2021-03-23 13:38:26', '');
INSERT INTO `field_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1084', 'odvolani-mz-msmt.pdf', '11', '', '2021-03-23 13:38:26', '2021-03-23 13:38:26', '');
INSERT INTO `field_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1084', 'maturitni-prace-pravidla-hodnoceni.docx', '8', '', '2021-03-23 13:38:26', '2021-03-23 13:38:26', '');
INSERT INTO `field_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1084', 'maturitni-prace-pravidla-hodnoceni_2.docx', '7', '', '2021-03-23 13:38:26', '2021-03-23 13:38:26', '');
INSERT INTO `field_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1084', 'maturitni-prace-pravidla-hodnoceni_1.docx', '6', '', '2021-03-23 13:38:26', '2021-03-23 13:38:26', '');
INSERT INTO `field_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1084', 'kriteria-hodnoceni-ustni-zkousky-z-cjl_2.docx', '5', '', '2021-03-23 13:38:26', '2021-03-23 13:38:26', '');
INSERT INTO `field_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1084', 'anj-kriteria-hodnoceni-mz2021.docx', '2', '', '2021-03-23 13:38:26', '2021-03-23 13:38:26', '');
INSERT INTO `field_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1084', 'kriteria-hodnoceni-ustni-zkousky-z-cjl_1.docx', '3', '', '2021-03-23 13:38:26', '2021-03-23 13:38:26', '');
INSERT INTO `field_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1084', 'kriteria-hodnoceni-ustni-zkousky-z-cjl.docx', '4', '', '2021-03-23 13:38:26', '2021-03-23 13:38:26', '');
INSERT INTO `field_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1084', 'anj-kriteria-hodnoceni-mz2021_1.docx', '1', '', '2021-03-23 13:38:26', '2021-03-23 13:38:26', '');
INSERT INTO `field_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1084', 'anj-kriteria-hodnoceni-mz2021_2.docx', '0', '', '2021-03-23 13:38:26', '2021-03-23 13:38:26', '');

DROP TABLE IF EXISTS `field_ikony`;
CREATE TABLE `field_ikony` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(10) unsigned NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_ikony` (`pages_id`, `data`, `sort`) VALUES('1075', '15', '0');
INSERT INTO `field_ikony` (`pages_id`, `data`, `sort`) VALUES('1076', '17', '0');
INSERT INTO `field_ikony` (`pages_id`, `data`, `sort`) VALUES('1077', '9', '0');
INSERT INTO `field_ikony` (`pages_id`, `data`, `sort`) VALUES('1078', '32', '0');

DROP TABLE IF EXISTS `field_images`;
CREATE TABLE `field_images` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `filedata` mediumtext,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`),
  FULLTEXT KEY `filedata` (`filedata`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1031', '49_primmat_foto_eva_plutova.jpg', '0', '', '2021-03-05 11:45:11', '2021-03-05 11:45:11', '');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1032', '39_primmat_foto_eva_plutova.jpg', '0', '', '2021-03-05 11:47:11', '2021-03-05 11:47:11', '');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1037', '33_primmat_foto_eva_plutova.jpg', '0', '', '2021-03-05 12:11:17', '2021-03-05 12:11:17', '');

DROP TABLE IF EXISTS `field_language`;
CREATE TABLE `field_language` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_language` (`pages_id`, `data`, `sort`) VALUES('40', '1018', '0');
INSERT INTO `field_language` (`pages_id`, `data`, `sort`) VALUES('41', '1018', '0');

DROP TABLE IF EXISTS `field_language_files`;
CREATE TABLE `field_language_files` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `filedata` mediumtext,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`),
  FULLTEXT KEY `filedata` (`filedata`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--core--admin-php.json', '0', '', '2021-03-01 10:54:59', '2021-03-01 10:54:59', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--core--admintheme-php.json', '1', '', '2021-03-01 10:54:59', '2021-03-01 10:54:59', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--core--adminthemeframework-php.json', '2', '', '2021-03-01 10:54:59', '2021-03-01 10:54:59', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--core--field-php.json', '3', '', '2021-03-01 10:54:59', '2021-03-01 10:54:59', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--core--fieldgroups-php.json', '4', '', '2021-03-01 10:54:59', '2021-03-01 10:54:59', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--core--fields-php.json', '5', '', '2021-03-01 10:54:59', '2021-03-01 10:54:59', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--core--fieldselectorinfo-php.json', '6', '', '2021-03-01 10:54:59', '2021-03-01 10:54:59', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--core--fieldtype-php.json', '7', '', '2021-03-01 10:54:59', '2021-03-01 10:54:59', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--core--fieldtypemulti-php.json', '8', '', '2021-03-01 10:54:59', '2021-03-01 10:54:59', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--core--filecompiler-php.json', '9', '', '2021-03-01 10:54:59', '2021-03-01 10:54:59', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--core--filecompilermodule-php.json', '10', '', '2021-03-01 10:54:59', '2021-03-01 10:54:59', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--core--filevalidatormodule-php.json', '11', '', '2021-03-01 10:54:59', '2021-03-01 10:54:59', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--core--functions-php.json', '12', '', '2021-03-01 10:54:59', '2021-03-01 10:54:59', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--core--imagesizerengine-php.json', '13', '', '2021-03-01 10:54:59', '2021-03-01 10:54:59', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--core--imagesizerenginegd-php.json', '14', '', '2021-03-01 10:54:59', '2021-03-01 10:54:59', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--core--inputfield-php.json', '15', '', '2021-03-01 10:54:59', '2021-03-01 10:54:59', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--core--inputfieldwrapper-php.json', '16', '', '2021-03-01 10:54:59', '2021-03-01 10:54:59', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--core--interfaces-php.json', '17', '', '2021-03-01 10:54:59', '2021-03-01 10:54:59', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--core--languagefunctions-php.json', '18', '', '2021-03-01 10:54:59', '2021-03-01 10:54:59', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--core--markupqa-php.json', '19', '', '2021-03-01 10:54:59', '2021-03-01 10:54:59', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--core--modules-php.json', '20', '', '2021-03-01 10:54:59', '2021-03-01 10:54:59', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--core--modulesduplicates-php.json', '21', '', '2021-03-01 10:54:59', '2021-03-01 10:54:59', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--core--pageimage-php.json', '22', '', '2021-03-01 10:54:59', '2021-03-01 10:54:59', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--core--pageseditor-php.json', '23', '', '2021-03-01 10:54:59', '2021-03-01 10:54:59', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--core--pagesexportimport-php.json', '24', '', '2021-03-01 10:54:59', '2021-03-01 10:54:59', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--core--pagesnames-php.json', '25', '', '2021-03-01 10:54:59', '2021-03-01 10:54:59', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--core--paginatedarray-php.json', '26', '', '2021-03-01 10:54:59', '2021-03-01 10:54:59', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--core--password-php.json', '27', '', '2021-03-01 10:54:59', '2021-03-01 10:54:59', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--core--permissions-php.json', '28', '', '2021-03-01 10:54:59', '2021-03-01 10:54:59', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--core--process-php.json', '29', '', '2021-03-01 10:54:59', '2021-03-01 10:54:59', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--core--processcontroller-php.json', '30', '', '2021-03-01 10:54:59', '2021-03-01 10:54:59', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--core--processwire-php.json', '31', '', '2021-03-01 10:54:59', '2021-03-01 10:54:59', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--core--sanitizer-php.json', '32', '', '2021-03-01 10:54:59', '2021-03-01 10:54:59', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--core--session-php.json', '33', '', '2021-03-01 10:54:59', '2021-03-01 10:54:59', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--core--sessioncsrf-php.json', '34', '', '2021-03-01 10:54:59', '2021-03-01 10:54:59', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--core--templatefile-php.json', '35', '', '2021-03-01 10:54:59', '2021-03-01 10:54:59', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--core--tfa-php.json', '36', '', '2021-03-01 10:54:59', '2021-03-01 10:54:59', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--core--wire-php.json', '37', '', '2021-03-01 10:54:59', '2021-03-01 10:54:59', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--core--wirecache-php.json', '38', '', '2021-03-01 10:54:59', '2021-03-01 10:54:59', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--core--wiredatetime-php.json', '39', '', '2021-03-01 10:54:59', '2021-03-01 10:54:59', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--core--wirehttp-php.json', '40', '', '2021-03-01 10:54:59', '2021-03-01 10:54:59', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--core--wireshutdown-php.json', '41', '', '2021-03-01 10:54:59', '2021-03-01 10:54:59', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--core--wiretexttools-php.json', '42', '', '2021-03-01 10:54:59', '2021-03-01 10:54:59', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--core--wireupload-php.json', '43', '', '2021-03-01 10:54:59', '2021-03-01 10:54:59', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--admintheme--adminthemedefault--adminthemedefault-module.json', '44', '', '2021-03-01 10:54:59', '2021-03-01 10:54:59', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--admintheme--adminthemedefault--adminthemedefaulthelpers-php.json', '45', '', '2021-03-01 10:54:59', '2021-03-01 10:54:59', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--admintheme--adminthemedefault--default-php.json', '46', '', '2021-03-01 10:54:59', '2021-03-01 10:54:59', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--admintheme--adminthemereno--adminthemereno-module.json', '47', '', '2021-03-01 10:54:59', '2021-03-01 10:54:59', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--admintheme--adminthemereno--adminthemerenohelpers-php.json', '48', '', '2021-03-01 10:54:59', '2021-03-01 10:54:59', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--admintheme--adminthemereno--debug-inc.json', '49', '', '2021-03-01 10:54:59', '2021-03-01 10:54:59', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--admintheme--adminthemeuikit--_footer-php.json', '50', '', '2021-03-01 10:54:59', '2021-03-01 10:54:59', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--admintheme--adminthemeuikit--_masthead-php.json', '51', '', '2021-03-01 10:54:59', '2021-03-01 10:54:59', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--admintheme--adminthemeuikit--_sidenav-masthead-php.json', '52', '', '2021-03-01 10:54:59', '2021-03-01 10:54:59', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--admintheme--adminthemeuikit--adminthemeuikit-module.json', '53', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--admintheme--adminthemeuikit--config-php.json', '54', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--fieldtype--fieldtypecomments--commentfilterakismet-module.json', '55', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--fieldtype--fieldtypecomments--commentform-php.json', '56', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--fieldtype--fieldtypecomments--commentlist-php.json', '57', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--fieldtype--fieldtypecomments--commentnotifications-php.json', '58', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--fieldtype--fieldtypecomments--commentstars-php.json', '59', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--fieldtype--fieldtypecomments--fieldtypecomments-module.json', '60', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--fieldtype--fieldtypecomments--inputfieldcommentsadmin-module.json', '61', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--fieldtype--fieldtypedatetime-module.json', '62', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--fieldtype--fieldtypefieldsettabopen-module.json', '63', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--fieldtype--fieldtypefile-module.json', '64', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--fieldtype--fieldtypefloat-module.json', '65', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--fieldtype--fieldtypeinteger-module.json', '66', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--fieldtype--fieldtypemodule-module.json', '67', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--fieldtype--fieldtypeoptions--fieldtypeoptions-module.json', '68', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--fieldtype--fieldtypeoptions--selectableoptionconfig-php.json', '69', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--fieldtype--fieldtypeoptions--selectableoptionmanager-php.json', '70', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--fieldtype--fieldtypepage-module.json', '71', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--fieldtype--fieldtypepagetable-module.json', '72', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--fieldtype--fieldtyperepeater--config-php.json', '73', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--fieldtype--fieldtyperepeater--fieldsetpageinstructions-php.json', '74', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--fieldtype--fieldtyperepeater--fieldtypefieldsetpage-module.json', '75', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--fieldtype--fieldtyperepeater--fieldtyperepeater-module.json', '76', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--fieldtype--fieldtyperepeater--inputfieldrepeater-module.json', '77', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--fieldtype--fieldtypeselector-module.json', '78', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--fieldtype--fieldtypetext-module.json', '79', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--fieldtype--fieldtypetextareahelper-php.json', '80', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--fieldtype--fieldtypetoggle-module.json', '81', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--fieldtype--fieldtypeurl-module.json', '82', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--filecompilertags-module.json', '83', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--image--imagesizerengineanimatedgif--imagesizerengineanimatedgif-module.json', '84', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--image--imagesizerengineimagick--imagesizerengineimagick-module.json', '85', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--inputfield--inputfieldasmselect--inputfieldasmselect-module.json', '86', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--inputfield--inputfieldbutton-module.json', '87', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--inputfield--inputfieldcheckbox-module.json', '88', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--inputfield--inputfieldcheckboxes--inputfieldcheckboxes-module.json', '89', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--inputfield--inputfieldckeditor--inputfieldckeditor-module.json', '90', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--inputfield--inputfielddatetime--inputfielddatetime-module.json', '91', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--inputfield--inputfieldemail-module.json', '92', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--inputfield--inputfieldfieldset-module.json', '93', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--inputfield--inputfieldfile--inputfieldfile-module.json', '94', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--inputfield--inputfieldfloat-module.json', '95', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--inputfield--inputfieldform-module.json', '96', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--inputfield--inputfieldhidden-module.json', '97', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--inputfield--inputfieldicon--inputfieldicon-module.json', '98', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--inputfield--inputfieldimage--inputfieldimage-module.json', '99', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--inputfield--inputfieldinteger-module.json', '100', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--inputfield--inputfieldmarkup-module.json', '101', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--inputfield--inputfieldname-module.json', '102', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--inputfield--inputfieldpage--inputfieldpage-module.json', '103', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--inputfield--inputfieldpageautocomplete--inputfieldpageautocomplete-module.json', '104', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--inputfield--inputfieldpagelistselect--inputfieldpagelistselect-module.json', '105', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--inputfield--inputfieldpagelistselect--inputfieldpagelistselectmultiple-module.json', '106', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--inputfield--inputfieldpagename--inputfieldpagename-module.json', '107', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--inputfield--inputfieldpagetable--inputfieldpagetable-module.json', '108', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--inputfield--inputfieldpagetable--inputfieldpagetableajax-php.json', '109', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--inputfield--inputfieldpagetitle--inputfieldpagetitle-module.json', '110', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--inputfield--inputfieldpassword--inputfieldpassword-module.json', '111', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--inputfield--inputfieldradios--inputfieldradios-module.json', '112', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--inputfield--inputfieldselect-module.json', '113', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--inputfield--inputfieldselectmultiple-module.json', '114', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--inputfield--inputfieldselector--inputfieldselector-module.json', '115', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--inputfield--inputfieldsubmit--inputfieldsubmit-module.json', '116', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--inputfield--inputfieldtext-module.json', '117', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--inputfield--inputfieldtextarea-module.json', '118', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--inputfield--inputfieldtoggle--inputfieldtoggle-module.json', '119', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--inputfield--inputfieldurl-module.json', '120', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--jquery--jqueryui--jqueryui-module.json', '121', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--jquery--jquerywiretabs--jquerywiretabs-module.json', '122', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--languagesupport--languageparser-php.json', '123', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--languagesupport--languagesupport-module.json', '124', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--languagesupport--languagesupportfields-module.json', '125', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--languagesupport--languagesupportinstall-php.json', '126', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--languagesupport--languagesupportpagenames-module.json', '127', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--languagesupport--languagetabs-module.json', '128', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--languagesupport--languagetranslator-php.json', '129', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--languagesupport--processlanguage-module.json', '130', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--markup--markuppagefields-module.json', '131', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--markup--markuppagernav--markuppagernav-module.json', '132', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--page--pagefrontedit--pagefrontedit-module.json', '133', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--page--pagefrontedit--pagefronteditconfig-php.json', '134', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--pagepathhistory-module.json', '135', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--pagepaths-module.json', '136', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--pagerender-module.json', '137', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--process--processcommentsmanager--processcommentsmanager-module.json', '138', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--process--processfield--processfield-module.json', '139', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--process--processfield--processfieldexportimport-php.json', '140', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--process--processforgotpassword-module.json', '141', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--process--processhome-module.json', '142', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--process--processlist-module.json', '143', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--process--processlogger--processlogger-module.json', '144', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--process--processlogin--processlogin-module.json', '145', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--process--processmodule--processmodule-module.json', '146', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--process--processmodule--processmoduleinstall-php.json', '147', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--process--processpageadd--processpageadd-module.json', '148', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--process--processpageclone-module.json', '149', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--process--processpageedit--pagebookmarks-php.json', '150', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--process--processpageedit--processpageedit-module.json', '151', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--process--processpageeditimageselect--processpageeditimageselect-module.json', '152', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--process--processpageeditlink--processpageeditlink-module.json', '153', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--process--processpagelist--processpagelist-module.json', '154', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--process--processpagelist--processpagelistactions-php.json', '155', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--process--processpagelist--processpagelistrender-php.json', '156', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--process--processpagelist--processpagelistrenderjson-php.json', '157', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--process--processpagelister--processpagelister-module.json', '158', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--process--processpagelister--processpagelisterbookmarks-php.json', '159', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--process--processpagesearch--processpagesearch-module.json', '160', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--process--processpagesearch--processpagesearchlive-php.json', '161', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--process--processpagesexportimport--processpagesexportimport-module.json', '162', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--process--processpagesort-module.json', '163', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--process--processpagetrash-module.json', '164', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--process--processpagetype--processpagetype-module.json', '165', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--process--processpageview-module.json', '166', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--process--processpermission--processpermission-module.json', '167', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--process--processprofile--processprofile-module.json', '168', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--process--processrecentpages--processrecentpages-module.json', '169', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--process--processrole--processrole-module.json', '170', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--process--processtemplate--processtemplate-module.json', '171', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--process--processtemplate--processtemplateexportimport-php.json', '172', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--process--processuser--processuser-module.json', '173', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--process--processuser--processuserconfig-php.json', '174', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--session--sessionhandlerdb--processsessiondb-module.json', '175', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--session--sessionhandlerdb--sessionhandlerdb-module.json', '176', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--session--sessionloginthrottle--sessionloginthrottle-module.json', '177', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--system--systemnotifications--systemnotifications-module.json', '178', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--system--systemnotifications--systemnotificationsconfig-php.json', '179', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--system--systemupdater--systemupdater-module.json', '180', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--system--systemupdater--systemupdaterchecks-php.json', '181', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--textformatter--textformatterentities-module.json', '182', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--textformatter--textformattermarkdownextra--parsedown--parsedown-php.json', '183', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--textformatter--textformattermarkdownextra--textformattermarkdownextra-module.json', '184', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--textformatter--textformattersmartypants--textformattersmartypants-module.json', '185', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--templates-admin--debug-inc.json', '186', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--templates-admin--default-php.json', '187', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--templates-admin--topnav-inc.json', '188', '', '2021-03-01 10:55:00', '2021-03-01 10:55:00', '');

DROP TABLE IF EXISTS `field_language_files_site`;
CREATE TABLE `field_language_files_site` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `filedata` mediumtext,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`),
  FULLTEXT KEY `filedata` (`filedata`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_link`;
CREATE TABLE `field_link` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_link` (`pages_id`, `data`) VALUES('1021', 'https://www.primmat.cz/o-skole/studijni-obory/cestovni-ruch/');
INSERT INTO `field_link` (`pages_id`, `data`) VALUES('1022', 'https://www.primmat.cz/o-skole/studijni-obory/pozemni-stavitelstvi/');
INSERT INTO `field_link` (`pages_id`, `data`) VALUES('1023', 'https://www.primmat.cz/o-skole/studijni-obory/internetove-sluzby/');

DROP TABLE IF EXISTS `field_map`;
CREATE TABLE `field_map` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_map` (`pages_id`, `data`) VALUES('1093', 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d10327.720898997502!2d18.33935!3d49.674453!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4713f727048fbb41%3A0xfdcd1a0f34cdd16e!2zxIxlc2tvc2xvdmVuc2vDqSBhcm3DoWR5IDQ4MiwgTcOtc3RlaywgNzM4IDAxIEZyw71kZWstTcOtc3RlaywgxIxlc2vDoSByZXB1Ymxpa2E!5e0!3m2!1scs!2sus!4v1474792992269');

DROP TABLE IF EXISTS `field_mottoskoly`;
CREATE TABLE `field_mottoskoly` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_mottoskoly` (`pages_id`, `data`) VALUES('1', 'Rodinná atmosféra, individuální přístup, kvalitní výuka. Náročnost a vstřícnost od roku 1992.');

DROP TABLE IF EXISTS `field_pass`;
CREATE TABLE `field_pass` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` char(40) NOT NULL,
  `salt` char(32) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=ascii;

DROP TABLE IF EXISTS `field_permissions`;
CREATE TABLE `field_permissions` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `field_postimage`;
CREATE TABLE `field_postimage` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `filedata` mediumtext,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`),
  FULLTEXT KEY `filedata` (`filedata`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_postimage` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1031', '49_primmat_foto_eva_plutova-1.jpg', '0', '', '2021-03-05 12:49:38', '2021-03-05 12:49:38', '');
INSERT INTO `field_postimage` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1030', 'snimek_obrazovky_2021-03-07_v_11_32_46.png', '0', '', '2021-03-07 11:33:18', '2021-03-07 11:33:18', '');
INSERT INTO `field_postimage` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1033', 'snimek_obrazovky_2021-03-07_v_11_32_46.png', '0', '', '2021-03-07 11:34:04', '2021-03-07 11:34:04', '');

DROP TABLE IF EXISTS `field_pracovnik`;
CREATE TABLE `field_pracovnik` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(10) unsigned NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_pracovnik` (`pages_id`, `data`, `sort`) VALUES('1051', '1', '0');
INSERT INTO `field_pracovnik` (`pages_id`, `data`, `sort`) VALUES('1052', '2', '0');
INSERT INTO `field_pracovnik` (`pages_id`, `data`, `sort`) VALUES('1053', '1', '0');
INSERT INTO `field_pracovnik` (`pages_id`, `data`, `sort`) VALUES('1054', '1', '0');
INSERT INTO `field_pracovnik` (`pages_id`, `data`, `sort`) VALUES('1055', '1', '0');
INSERT INTO `field_pracovnik` (`pages_id`, `data`, `sort`) VALUES('1056', '1', '0');
INSERT INTO `field_pracovnik` (`pages_id`, `data`, `sort`) VALUES('1057', '1', '0');
INSERT INTO `field_pracovnik` (`pages_id`, `data`, `sort`) VALUES('1058', '1', '0');
INSERT INTO `field_pracovnik` (`pages_id`, `data`, `sort`) VALUES('1059', '1', '0');
INSERT INTO `field_pracovnik` (`pages_id`, `data`, `sort`) VALUES('1060', '1', '0');
INSERT INTO `field_pracovnik` (`pages_id`, `data`, `sort`) VALUES('1061', '1', '0');
INSERT INTO `field_pracovnik` (`pages_id`, `data`, `sort`) VALUES('1062', '1', '0');
INSERT INTO `field_pracovnik` (`pages_id`, `data`, `sort`) VALUES('1063', '1', '0');
INSERT INTO `field_pracovnik` (`pages_id`, `data`, `sort`) VALUES('1064', '1', '0');
INSERT INTO `field_pracovnik` (`pages_id`, `data`, `sort`) VALUES('1065', '1', '0');
INSERT INTO `field_pracovnik` (`pages_id`, `data`, `sort`) VALUES('1066', '1', '0');
INSERT INTO `field_pracovnik` (`pages_id`, `data`, `sort`) VALUES('1067', '1', '0');
INSERT INTO `field_pracovnik` (`pages_id`, `data`, `sort`) VALUES('1068', '1', '0');
INSERT INTO `field_pracovnik` (`pages_id`, `data`, `sort`) VALUES('1069', '2', '0');
INSERT INTO `field_pracovnik` (`pages_id`, `data`, `sort`) VALUES('1070', '2', '0');

DROP TABLE IF EXISTS `field_process`;
CREATE TABLE `field_process` (
  `pages_id` int(11) NOT NULL DEFAULT '0',
  `data` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_process` (`pages_id`, `data`) VALUES('6', '17');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('3', '12');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('8', '12');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('9', '14');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('10', '7');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('11', '47');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('16', '48');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('300', '104');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('21', '50');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('29', '66');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('23', '10');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('304', '138');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('31', '136');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('22', '76');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('30', '68');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('303', '129');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('2', '87');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('302', '121');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('301', '109');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('28', '76');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1007', '150');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1010', '159');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1012', '161');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1015', '164');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1017', '166');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1019', '167');

DROP TABLE IF EXISTS `field_rokabsolventa`;
CREATE TABLE `field_rokabsolventa` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_rokabsolventa` (`pages_id`, `data`) VALUES('1025', '2004');
INSERT INTO `field_rokabsolventa` (`pages_id`, `data`) VALUES('1026', '1999');
INSERT INTO `field_rokabsolventa` (`pages_id`, `data`) VALUES('1027', '2000');
INSERT INTO `field_rokabsolventa` (`pages_id`, `data`) VALUES('1028', '2004');
INSERT INTO `field_rokabsolventa` (`pages_id`, `data`) VALUES('1029', '2012');

DROP TABLE IF EXISTS `field_roles`;
CREATE TABLE `field_roles` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `field_secondarytitle`;
CREATE TABLE `field_secondarytitle` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_secondarytitle` (`pages_id`, `data`) VALUES('1040', '<p>PrimMat-Soukromá střední škola podnikatelská, s.r.o., byla zařazena do sítě středních škol od školního roku 1992/1993. Jako<strong> první soukromá střední odborná škola zahájila výuku vlastních studijních programů s netradiční vzdělávací náplní, která v regionu chyběla</strong>, v souvislosti s nástupem tržní ekonomiky.</p>');
INSERT INTO `field_secondarytitle` (`pages_id`, `data`) VALUES('1041', '<p>Cílová vize směřuje k tomu, aby střední škola PrimMat byla vnímána veřejností jako <strong>jedinečná střední odborná podnikatelská škola</strong> s absolventy, kteří jsou přínosem pro region.</p>');
INSERT INTO `field_secondarytitle` (`pages_id`, `data`) VALUES('1043', '<p>Každý pedagogický pracovník má mail ve tvaru <strong>prijmeni@primmat.cz</strong>.</p>');

DROP TABLE IF EXISTS `field_slider`;
CREATE TABLE `field_slider` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `filedata` mediumtext,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`),
  FULLTEXT KEY `filedata` (`filedata`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_slider` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1', '28_primmat_foto_eva_plutova.jpg', '2', '', '2021-03-03 12:05:49', '2021-03-03 12:05:49', '');
INSERT INTO `field_slider` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1', '26_primmat_foto_eva_plutova.jpg', '1', '', '2021-03-03 12:05:49', '2021-03-03 12:05:49', '');
INSERT INTO `field_slider` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1', '43_primmat_foto_eva_plutova.jpg', '0', '', '2021-03-03 12:05:49', '2021-03-03 12:05:49', '');

DROP TABLE IF EXISTS `field_subjectimage`;
CREATE TABLE `field_subjectimage` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `filedata` mediumtext,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`),
  FULLTEXT KEY `filedata` (`filedata`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_subjectimage` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1071', '33_primmat_foto_eva_plutova.jpg', '0', '', '2021-03-12 15:44:05', '2021-03-12 15:44:05', '');
INSERT INTO `field_subjectimage` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1072', '32_primmat_foto_eva_plutova.jpg', '0', '', '2021-03-12 15:53:38', '2021-03-12 15:53:38', '');
INSERT INTO `field_subjectimage` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1073', '09_primmat_foto_eva_plutova.jpg', '0', '', '2021-03-12 15:55:38', '2021-03-12 15:55:38', '');

DROP TABLE IF EXISTS `field_text`;
CREATE TABLE `field_text` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_text` (`pages_id`, `data`) VALUES('1025', '<p>„A jeden vzkaz pro studenty: „Učte se jazyky.\" Ne že bych měl momentálně s angličtinou potíže, ale biji se do hlavy při vzpomínkách na úžasného učitele Ondráčka a svou neochotu se cokoli učit. Nepravidelná slovesa, která mi úspěšně vtloukl do hlavy, používám velice pravidelně a úspěšně.“</p>');
INSERT INTO `field_text` (`pages_id`, `data`) VALUES('1026', '<p>„Češtinářce bych chtěla poděkovat, hodně mi pomohla, co se týče gramatiky. A myslím, že Vaši studenti to v budoucnu taky ocení. Hlavně diktáty, slohové práce, ty by měli studenti dostávat co dva týdny i jako domácí úkoly. Není nic horšího než napsat dopis na úřady a mít v něm plno chyb.“</p>');
INSERT INTO `field_text` (`pages_id`, `data`) VALUES('1027', '<p>„Znalosti, které jsem na této škole získala z různých ekonomických předmětů a jazyka, se mi v menší či větší míře podařilo a stále daří uplatňovat v profesním životě. A ty znalosti, které jsem si nechtěla osvojit, teď horko těžko po letech doháním a získávám.“</p>');
INSERT INTO `field_text` (`pages_id`, `data`) VALUES('1028', '<p>„Absolventi gymnázií třeba dodnes plavou v účetnictví, já jsem přednášky ani cvičení vůbec nemusela navštěvovat - tímto bych chtěla poděkovat paní Lednické! I matematika byla na střední škole vyučována dobře. Nejvíce mi ale pomohly odborné předměty vyučované paní Ryškovou.“</p>');
INSERT INTO `field_text` (`pages_id`, `data`) VALUES('1029', '<p>„Chtěla bych poděkovat své bývalé střední škole – protože právě ona mi otevřela dvěře s miliony možností a otevřenou budoucností. Děkuji!“</p>');
INSERT INTO `field_text` (`pages_id`, `data`) VALUES('1030', '<p>Co se u nás na škole odehrálo za poslední dobu</p>');
INSERT INTO `field_text` (`pages_id`, `data`) VALUES('1031', '<p>Pro rok 2020 bychom mohli najít spoustu přívlastků a jedním z nich by určitě bylo i to, že ať byl všelijaký, náročný, odolnost testující, ukázal nám, že i ty obyčejné věci, které nám běžně nepřišly výjimečné, jsou vzácné. Vidět se s kamarády, rodinou, zajít si do kina nebo na zmrzlinový pohár...<br />\nPřejeme vám především zdraví, splnění těch nejtajnějších snů a ať si i v dalším roce uchováte pocit neobyčejnosti i v těch nejobyčejnějších situacích.</p>');
INSERT INTO `field_text` (`pages_id`, `data`) VALUES('1032', '<p>Vánoční atmosféru jsme sdíleli společně s projektovými partnery v Belgii, Turecku, Rumunsku, Bulharsku. Více na: <a href=\"http://erasprim.eu/\">erasprim.eu</a>.</p>');
INSERT INTO `field_text` (`pages_id`, `data`) VALUES('1037', '<p><a href=\"https://www.youtube.com/watch?v=2gDZJ4j9uZs\">https://www.youtube.com/watch?v=2gDZJ4j9uZs</a></p>\n\n<p>Dne 19. 1. a 28. 1. bude možnost se prostřednictvím stránek <a href=\"https://veletrh-skol.msk.cz/\">Veletrh-skol.MSK.cz</a> připojit a online komunikovat s naší školou.</p>');
INSERT INTO `field_text` (`pages_id`, `data`) VALUES('1040', '<p>Odlišnost v pojetí vzdělávacího programu školy byla a dosud je v dvouprofesním vzdělávání žáků a tím i vyšší míře uplatnitelnosti absolventů v praxi. <strong>Čtyřletý studijní obor pro absolventy základních škol Ekonomika a podnikání</strong>, 63-41-M/01, nabízí zájemcům o studium volbu dalšího profesního zaměření.</p>');
INSERT INTO `field_text` (`pages_id`, `data`) VALUES('1041', '<p>Odlišení je hodnota, která nás vymezuje mezi ostatními školami. Nadstandardní vzdělávací servis je podpořen nestresujícím školním prostředím a vstřícností pedagogů. Přátelské vztahy mezi žáky školy zpříjemňují náladu v průběhu studia. Následná uplatnitelnost absolventů v profesním životě, zvládání VŠ studia a spokojenost v osobním životě je vizitkou naší školy.</p>');
INSERT INTO `field_text` (`pages_id`, `data`) VALUES('1045', '<p>atraktivní vzdělávací program, nové formy výuky s podporou ICT za účelem pestrosti výuky.</p>');
INSERT INTO `field_text` (`pages_id`, `data`) VALUES('1046', '<p>příprava žáků kvalitně a kultivovaně komunikovat, otevřenost školy vůči žákům, rodičům, i směrem k veřejnosti.</p>');
INSERT INTO `field_text` (`pages_id`, `data`) VALUES('1047', '<p>žáci i pedagogové realizují aktivity ve prospěch školy, reprezentují školu na veřejnosti.</p>');
INSERT INTO `field_text` (`pages_id`, `data`) VALUES('1048', '<p>pedagog neučí v klasickém smyslu, motivuje žáky, vede k porozumění souvislostí, aplikaci teoretických znalostí, srozumitelnému vyjadřování. Organizuje práci žáků a jejich přípravu tak, aby se uplatnili v profesním i osobním životě.</p>');
INSERT INTO `field_text` (`pages_id`, `data`) VALUES('1049', '<p>je neslučitelné s pedagogickou etikou být lhostejný k neúspěchu přijatého žáka. Pedagog volí vhodnou motivaci žáka a účinné prostředky za účelem pomoci žákovi.</p>');
INSERT INTO `field_text` (`pages_id`, `data`) VALUES('1050', '<p>chování a vystupování žáků vždy v souladu se stanovenými pravidly SŠ PrimMat, v souladu se zásadami morálních a mravních principů.</p>');
INSERT INTO `field_text` (`pages_id`, `data`) VALUES('1051', '<ul><li>ředitelka školy</li>\n	<li>český jazyk a literatura </li>\n	<li><a href=\"https://www.primmat.cz/dokumenty/skolni-metodik-prevence.pdf\">školní metodik prevence soc. pat. jevů</a>, výchovné poradenství</li>\n</ul>');
INSERT INTO `field_text` (`pages_id`, `data`) VALUES('1052', '<ul><li>zřizovatelka školy</li>\n	<li>jednatelka společnosti</li>\n	<li>konzultační a poradenská činnost</li>\n</ul>');
INSERT INTO `field_text` (`pages_id`, `data`) VALUES('1053', '<ul><li>hotelový provoz, geografie a cestovní ruch, ekonomika</li>\n	<li>třídní učitel P 1.A</li>\n</ul>');
INSERT INTO `field_text` (`pages_id`, `data`) VALUES('1054', '<ul><li>podnikatelství, aplikované podnikatelství, ekonomika, obchodní provoz, projektové řízení, bankovnictví </li>\n	<li>třídní učitelka P 3.A</li>\n</ul>');
INSERT INTO `field_text` (`pages_id`, `data`) VALUES('1055', '<ul><li>informační a komunikační technologie, programování, databázové systémy</li>\n	<li>správce VT</li>\n</ul>');
INSERT INTO `field_text` (`pages_id`, `data`) VALUES('1056', '<ul><li>informační a komunikační technologie, programování, databázové systémy</li>\n	<li>správce VT</li>\n</ul>');
INSERT INTO `field_text` (`pages_id`, `data`) VALUES('1057', '<ul><li>účetnictví, účetnictví na PC, obchodní korespondence</li>\n	<li>třídní učitelka P 2.B</li>\n</ul>');
INSERT INTO `field_text` (`pages_id`, `data`) VALUES('1058', '<ul><li>německý jazyk</li>\n	<li>třídní učitelka P 2.A</li>\n</ul>');
INSERT INTO `field_text` (`pages_id`, `data`) VALUES('1059', '<ul><li>český jazyk a literatura, základy společenských věd</li>\n	<li>třídní učitelka P 3.B</li>\n</ul>');
INSERT INTO `field_text` (`pages_id`, `data`) VALUES('1060', '<ul><li>architektura</li>\n</ul>');
INSERT INTO `field_text` (`pages_id`, `data`) VALUES('1061', '<ul><li>matematika, seminář z matematiky, cvičení z matematiky, tělesná výchova, základy přírodních věd</li>\n	<li>třídní učitel P 4.A</li>\n</ul>');
INSERT INTO `field_text` (`pages_id`, `data`) VALUES('1062', '<ul><li>anglický jazyk</li>\n</ul>');
INSERT INTO `field_text` (`pages_id`, `data`) VALUES('1063', '<ul><li>ekonomika, právní nauka, marketing, základy přírodních věd, tělesná výchova</li>\n</ul>');
INSERT INTO `field_text` (`pages_id`, `data`) VALUES('1064', '<ul><li>programování, databázové systémy, informační a komunikační technologie, e-marketing</li>\n</ul>');
INSERT INTO `field_text` (`pages_id`, `data`) VALUES('1065', '<ul><li>odborná angličtina, seminář z anglického jazyka</li>\n</ul>');
INSERT INTO `field_text` (`pages_id`, `data`) VALUES('1066', '<ul><li>programování, databázové systémy</li>\n</ul>');
INSERT INTO `field_text` (`pages_id`, `data`) VALUES('1067', '<ul><li>odborník z praxe, pozemní stavitelství, odborné kreslení</li>\n</ul>');
INSERT INTO `field_text` (`pages_id`, `data`) VALUES('1068', '<ul><li>tělesná výchova</li>\n</ul>');
INSERT INTO `field_text` (`pages_id`, `data`) VALUES('1069', '<ul><li>správní úsek</li>\n	<li>jednatel společnosti</li>\n</ul>');
INSERT INTO `field_text` (`pages_id`, `data`) VALUES('1070', '<ul><li>asistentka ředitelky, ekonomka školy</li>\n</ul>');
INSERT INTO `field_text` (`pages_id`, `data`) VALUES('1071', '<h1>Podnikání v euroregionu a služby v cestovním ruchu</h1>\n\n<p><strong>Studijní obor:</strong> 63-41-M/01 EKONOMIKA A PODNIKÁNÍ se zaměřením 01 - podnikání v euroregionu a služby v cestovním ruchu</p>\n\n<h2>Profilová maturitní zkouška</h2>\n\n<p><strong>Ústní maturitní zkouška</strong>: Podnikatelství - souhrnná  zkouška, Geografie a cestovní ruch </p>\n\n<p><strong>Praktická maturitní zkouška:</strong> vypracování souvislého účetního příkladu, obhajoba podnikatelského plánu, obhajoba itineráře zájezdu </p>\n\n<p> </p>\n\n<p><strong>Učební plán</strong></p>\n\n<table class=\"uk-table uk-table-divider uk-table-striped\"><tbody><tr><td colspan=\"2\" rowspan=\"2\">\n			<p> </p>\n\n			<p><strong>Předměty, jejich kategorie a zkratky</strong><br />\n			 </p>\n			</td>\n			<td colspan=\"4\"><strong>Počet týdně vyučovaných hodin v ročníku:</strong></td>\n			<td rowspan=\"2\"><strong>Celkem</strong></td>\n		</tr><tr><td><strong>1</strong></td>\n			<td><strong>2</strong></td>\n			<td><strong>3</strong></td>\n			<td><strong>4</strong></td>\n		</tr><tr><td colspan=\"2\"><strong>Všeobecně vzdělávací předměty</strong></td>\n			<td> </td>\n			<td> </td>\n			<td> </td>\n			<td> </td>\n			<td> </td>\n		</tr><tr><td>Český jazyk a literatura</td>\n			<td>ČJL</td>\n			<td>3</td>\n			<td>3</td>\n			<td>3</td>\n			<td>3</td>\n			<td>12</td>\n		</tr><tr><td>Anglický jazyk</td>\n			<td>AnJ</td>\n			<td>3</td>\n			<td>3</td>\n			<td>3</td>\n			<td>3</td>\n			<td>12</td>\n		</tr><tr><td>Německá jazyk</td>\n			<td>NeJ</td>\n			<td>3</td>\n			<td>3</td>\n			<td>3</td>\n			<td>3</td>\n			<td>12</td>\n		</tr><tr><td>Matematika</td>\n			<td>Mat</td>\n			<td>3</td>\n			<td>3</td>\n			<td>3</td>\n			<td>2</td>\n			<td>11</td>\n		</tr><tr><td>Maturitní seminář</td>\n			<td>Sma</td>\n			<td>-</td>\n			<td>-</td>\n			<td>-</td>\n			<td>1</td>\n			<td>1</td>\n		</tr><tr><td>Základy přírodních věd</td>\n			<td>ZPV</td>\n			<td>2</td>\n			<td>2</td>\n			<td>-</td>\n			<td>-</td>\n			<td>4</td>\n		</tr><tr><td>Základy společenský věd</td>\n			<td>ZSV</td>\n			<td>2</td>\n			<td>2</td>\n			<td>-</td>\n			<td>-</td>\n			<td>4</td>\n		</tr><tr><td>Tělesná výchova</td>\n			<td>TeV</td>\n			<td>2</td>\n			<td>2</td>\n			<td>2</td>\n			<td>2</td>\n			<td>8</td>\n		</tr><tr><td><strong>Všeobecné odborné předměty</strong></td>\n			<td> </td>\n			<td> </td>\n			<td> </td>\n			<td> </td>\n			<td> </td>\n			<td> </td>\n		</tr><tr><td>Informační a komunikační technologie</td>\n			<td>IKT</td>\n			<td>4</td>\n			<td>3</td>\n			<td>-</td>\n			<td>-</td>\n			<td>7</td>\n		</tr><tr><td>Obchodní korespondence</td>\n			<td>ObK</td>\n			<td>2</td>\n			<td>2</td>\n			<td>-</td>\n			<td>-</td>\n			<td>4</td>\n		</tr><tr><td>Ekonomika</td>\n			<td>Eko</td>\n			<td>2</td>\n			<td>2</td>\n			<td>-</td>\n			<td>-</td>\n			<td>4</td>\n		</tr><tr><td>Podnikatelství</td>\n			<td>Pod</td>\n			<td>-</td>\n			<td>1</td>\n			<td>4</td>\n			<td>5</td>\n			<td>10</td>\n		</tr><tr><td>Aplikované podnikatelství</td>\n			<td>ApP</td>\n			<td>-</td>\n			<td>-</td>\n			<td>2</td>\n			<td>-</td>\n			<td>2</td>\n		</tr><tr><td>Právní nauka</td>\n			<td>PrN</td>\n			<td>-</td>\n			<td>-</td>\n			<td>2</td>\n			<td>3</td>\n			<td>5</td>\n		</tr><tr><td>Marketing</td>\n			<td>Mar</td>\n			<td>-</td>\n			<td>-</td>\n			<td>2</td>\n			<td>-</td>\n			<td>2</td>\n		</tr><tr><td>Účetnictví</td>\n			<td>Uce</td>\n			<td>2</td>\n			<td>2</td>\n			<td>1</td>\n			<td>1</td>\n			<td>6</td>\n		</tr><tr><td>Účetnictví na PC</td>\n			<td>UPC</td>\n			<td>-</td>\n			<td>-</td>\n			<td>1</td>\n			<td>1</td>\n			<td>2</td>\n		</tr><tr><td><strong>Zaměření</strong></td>\n			<td> </td>\n			<td> </td>\n			<td> </td>\n			<td> </td>\n			<td> </td>\n			<td> </td>\n		</tr><tr><td>Odborná angličtina</td>\n			<td>OAJ</td>\n			<td>-</td>\n			<td>-</td>\n			<td>1(1)</td>\n			<td>-</td>\n			<td>1</td>\n		</tr><tr><td>Hotelový provoz</td>\n			<td>HoP</td>\n			<td>3</td>\n			<td>1</td>\n			<td>2</td>\n			<td>2</td>\n			<td>8</td>\n		</tr><tr><td>Geografie a cestovní ruch</td>\n			<td>GCR</td>\n			<td>2</td>\n			<td>2</td>\n			<td>3</td>\n			<td>3</td>\n			<td>10</td>\n		</tr><tr><td>Obchodní provoz</td>\n			<td>ObP</td>\n			<td>-</td>\n			<td>2</td>\n			<td>-</td>\n			<td>-</td>\n			<td>2</td>\n		</tr><tr><td>Bankovnictví</td>\n			<td>Ban</td>\n			<td>-</td>\n			<td>-</td>\n			<td>-</td>\n			<td>2</td>\n			<td>2</td>\n		</tr></tbody></table><p><strong>Absolvent je středoškolsky vzdělaný odborník, který si na základě studia všeobecně vzdělávacích a odborných předmětů osvojí:</strong></p>\n\n<ul><li>odborné znalosti a dovednosti ekonomicko-podnikatelské a z oblasti služeb CR</li>\n	<li>dovednosti a návyky umožňující přípravu na vysokoškolský typ studia nejenom ekonomického zaměření</li>\n	<li>dovednosti potřebné k dalšímu sebevzdělávání, schopnost analyzovat problémy, hledat způsoby jejich řešení, pohotově se rozhodovat, pracovat samostatně i v týmu</li>\n	<li>schopnost samostatného studia a práce s informačními zdroji</li>\n</ul><h3>Oblast všeobecného vzdělání</h3>\n\n<ul><li>Spolehlivá znalost českého jazyka a jeho kultivované užívání</li>\n	<li>Kulturní přehled, vztah ke kulturním, estetickým a humanitním hodnotám</li>\n	<li>Znalost dvou světových jazyků na úrovni samostatné všeobecné komunikace včetně využívání znalostí obchodní angličtiny při obchodních jednáních a obchodní korespondenci se zahraničním partnerem</li>\n	<li>Matematické vědomosti jak pro aplikaci v hospodářské, tak i ve finanční praxi</li>\n	<li>Znalost důležitých jevů, pojmů a zákonitostí fyziky a chemie a jejich aplikace</li>\n	<li>Poznání regionální, národní a světové historie, přehled v oblasti geografie EU s přihlédnut k ekonomickým souvislostem</li>\n</ul><h3>Oblast odborného vzdělání</h3>\n\n<ul><li>Znalost a pochopení ekonomických pojmů, principů a zákonitostí v tržní ekonomice a jejich aplikace v hospodářské praxi</li>\n	<li>Používání vědomostí a dovedností z informačních technologií pro zpracování informací včetně Internetu, znalost funkčních možností výpočetní techniky a jejich účelná aplikace</li>\n	<li>Znalost účetní a daňové problematiky včetně praktického využití</li>\n	<li>Znalosti z marketingu a managementu a jejich použití v praxi</li>\n	<li>Orientace v základních právních normách a jejich využití v obchodně-podnikatelské činnosti</li>\n	<li>Znalost metodiky založení a provozování vlastní firmy</li>\n	<li>Orientace v problematice podnikání v EU (účetní, daňové, právní ….)</li>\n	<li>Zpracování podnikatelských záměrů při zakládání firem i pro potřebu peněžních ústavů při žádostech o úvěr</li>\n	<li>Orientace ve standardech projektového řízení - výuka metodiky tvorby projektů na čerpání dotací z EU (výuka na středních školách není obvyklá)</li>\n	<li>Znalosti z problematiky mzdového účetnictví a personalistiky</li>\n	<li>Uzavírání smluv s dodavateli a odběrateli včetně leasingových</li>\n	<li>Provoz a řízení hotelů, gastronomických zařízení i pomocí softwaru na PC /SW Fidelio/</li>\n	<li>Provoz, řízení a služby cestovních kanceláří, poskytování služeb souvisejících s cestovním ruchem</li>\n	<li>Dovednost věcně, jazykově i formálně správně zpracovávat písemnosti spojené s obchodně-podnikatelskou činností v tuzemsku i v zahraničí s využitím výpočetní techniky</li>\n	<li>Praktické zkušenosti získané odbornou praxí, i praxí zahraniční</li>\n</ul><p>Absolvent <strong>PrimMat - Soukromé střední školy podnikatelské, s. r. o.</strong>, je školou vychováván vzhledem k budoucímu občanskému a profesnímu životu k odpovědnosti, čestnosti, důslednosti, pracovitosti, přesnosti, kreativitě a podnikavosti.</p>\n\n<p>Uplatnění absolventů se zaměřením 01 - podnikání v euroregionu a služby v cestovním ruchu (dvouprofesní vzdělávání):</p>\n\n<ul><li>V peněžních ústavech – banky, pojišťovny, spořitelny</li>\n	<li>Úřady státní a veřejné správy – asistent, referent, administrativní pracovník</li>\n	<li>Pracovník ekonomických a personálních útvarů, managementu malých i velkých firem</li>\n	<li>Hotely, restaurace, jídelny,ubytovny, lázně – recepční, provozní, služby související s CR, práce v managementu firem</li>\n	<li>Práce v cestovních kancelářích, cestovních agenturách,informačních střediscích</li>\n	<li>Realizace vlastních podnikatelských záměrů, asistent podnikatele</li>\n	<li>Pokračování ve studiu na VŠ nejen ekonomického směru</li>\n</ul><p>Studijní obor vychází z kvalifikačních a osobnostních požadavků, stanovených v projektu Integrovaný systém typových pozic (ISTP) Ministerstva práce a sociálních věcí.</p>\n\n<p><strong>Roční školné podle prospěchu: 0 – 13 000,- Kč</strong></p>');
INSERT INTO `field_text` (`pages_id`, `data`) VALUES('1072', '<h1>Podnikání v euroregionu a pozemní stavitelství</h1>\n\n<p><strong>Studijní obor:</strong> 63-41-M/01 EKONOMIKA A PODNIKÁNÍ se zaměřením 02 - podnikání v euroregionu a pozemní stavitelství</p>\n\n<h2>Profilová maturitní zkouška</h2>\n\n<p><strong>Ústní maturitní zkouška</strong>: Podnikatelství - souhrnná  zkouška, Pozemní stavitelství </p>\n\n<p><strong>Praktická maturitní zkouška</strong>: vypracování souvislého účetního příkladu, obhajoba podnikatelského plánu, obhajoba stavebního projektu </p>\n\n<p> </p>\n\n<p><strong>Učební plán</strong></p>\n\n<table class=\"uk-table uk-table-divider uk-table-striped\"><tbody><tr><td colspan=\"2\" rowspan=\"2\">\n			<p> </p>\n\n			<p><strong>Předměty, jejich kategorie a zkratky</strong><br />\n			 </p>\n			</td>\n			<td colspan=\"4\"><strong>Počet týdně vyučovaných hodin v ročníku:</strong></td>\n			<td rowspan=\"2\"><strong>Celkem</strong></td>\n		</tr><tr><td><strong>1</strong></td>\n			<td><strong>2</strong></td>\n			<td><strong>3</strong></td>\n			<td><strong>4</strong></td>\n		</tr><tr><td colspan=\"2\"><strong>Všeobecně vzdělávací předměty</strong></td>\n			<td> </td>\n			<td> </td>\n			<td> </td>\n			<td> </td>\n			<td> </td>\n		</tr><tr><td>Český jazyk a literatura</td>\n			<td>ČJL</td>\n			<td>3</td>\n			<td>3</td>\n			<td>3</td>\n			<td>3</td>\n			<td>12</td>\n		</tr><tr><td>Anglický jazyk</td>\n			<td>AnJ</td>\n			<td>3</td>\n			<td>3</td>\n			<td>3</td>\n			<td>3</td>\n			<td>12</td>\n		</tr><tr><td>Německá jazyk</td>\n			<td>NeJ</td>\n			<td>3</td>\n			<td>3</td>\n			<td>3</td>\n			<td>3</td>\n			<td>12</td>\n		</tr><tr><td>Matematika</td>\n			<td>Mat</td>\n			<td>3</td>\n			<td>3</td>\n			<td>3</td>\n			<td>2</td>\n			<td>11</td>\n		</tr><tr><td>Maturitní seminárř</td>\n			<td>Sma</td>\n			<td>-</td>\n			<td>-</td>\n			<td>-</td>\n			<td>1</td>\n			<td>1</td>\n		</tr><tr><td>Základy přírodních věd</td>\n			<td>ZPV</td>\n			<td>2</td>\n			<td>2</td>\n			<td>-</td>\n			<td>-</td>\n			<td>4</td>\n		</tr><tr><td>Základy společenský věd</td>\n			<td>ZSV</td>\n			<td>2</td>\n			<td>2</td>\n			<td>-</td>\n			<td>-</td>\n			<td>4</td>\n		</tr><tr><td>Tělesná výchova</td>\n			<td>TeV</td>\n			<td>2</td>\n			<td>2</td>\n			<td>2</td>\n			<td>2</td>\n			<td>8</td>\n		</tr><tr><td><strong>Všeobecné odborné předměty</strong></td>\n			<td> </td>\n			<td> </td>\n			<td> </td>\n			<td> </td>\n			<td> </td>\n			<td> </td>\n		</tr><tr><td>Informační a komunikační technologie</td>\n			<td>IKT</td>\n			<td>4</td>\n			<td>3</td>\n			<td>-</td>\n			<td>-</td>\n			<td>7</td>\n		</tr><tr><td>Obchodní korespondence</td>\n			<td>ObK</td>\n			<td>2</td>\n			<td>2</td>\n			<td>-</td>\n			<td>-</td>\n			<td>4</td>\n		</tr><tr><td>Ekonomika</td>\n			<td>Eko</td>\n			<td>2</td>\n			<td>2</td>\n			<td>-</td>\n			<td>-</td>\n			<td>4</td>\n		</tr><tr><td>Podnikatelství</td>\n			<td>Pod</td>\n			<td>-</td>\n			<td>1</td>\n			<td>4</td>\n			<td>5</td>\n			<td>10</td>\n		</tr><tr><td>Aplikované podnikatelství</td>\n			<td>ApP</td>\n			<td>-</td>\n			<td>-</td>\n			<td>2</td>\n			<td>-</td>\n			<td>2</td>\n		</tr><tr><td>Právní nauka</td>\n			<td>PrN</td>\n			<td>-</td>\n			<td>-</td>\n			<td>2</td>\n			<td>3</td>\n			<td>5</td>\n		</tr><tr><td>Marketing</td>\n			<td>Mar</td>\n			<td>-</td>\n			<td>-</td>\n			<td>2</td>\n			<td>-</td>\n			<td>2</td>\n		</tr><tr><td>Účetnictví</td>\n			<td>Uce</td>\n			<td>2</td>\n			<td>2</td>\n			<td>1</td>\n			<td>1</td>\n			<td>6</td>\n		</tr><tr><td>Účetnictví na PC</td>\n			<td>UPC</td>\n			<td>-</td>\n			<td>-</td>\n			<td>1</td>\n			<td>1</td>\n			<td>2</td>\n		</tr><tr><td><strong>Zaměření</strong></td>\n			<td> </td>\n			<td> </td>\n			<td> </td>\n			<td> </td>\n			<td> </td>\n			<td> </td>\n		</tr><tr><td>Odborná angličtina</td>\n			<td>OAJ</td>\n			<td>-</td>\n			<td>-</td>\n			<td>1(1)</td>\n			<td>-</td>\n			<td>1</td>\n		</tr><tr><td>Pozemní stavitelství</td>\n			<td>PoS</td>\n			<td>3</td>\n			<td>2</td>\n			<td>2</td>\n			<td>3</td>\n			<td>10</td>\n		</tr><tr><td>Odborné kreslení</td>\n			<td>OdK</td>\n			<td>-</td>\n			<td>1</td>\n			<td>3</td>\n			<td>2</td>\n			<td>6</td>\n		</tr><tr><td>Základy projektování a 3D modelování</td>\n			<td>ZPM</td>\n			<td>2</td>\n			<td>-</td>\n			<td>-</td>\n			<td>-</td>\n			<td>2</td>\n		</tr><tr><td>Mechanika</td>\n			<td>Mech</td>\n			<td>-</td>\n			<td>2</td>\n			<td>-</td>\n			<td>-</td>\n			<td>2</td>\n		</tr><tr><td>Architektura</td>\n			<td>Arch</td>\n			<td>-</td>\n			<td>-</td>\n			<td>-</td>\n			<td>2</td>\n			<td>2</td>\n		</tr></tbody></table><h2>Absolvent je středoškolsky vzdělaný odborník, který si na základě studia všeobecně vzdělávacích a odborných předmětů osvojí:</h2>\n\n<ul><li>odborné znalosti a dovednosti související s ekonomicko-podnikatelskou činností a současně s technickým zaměřením studijního oboru na pozemní stavitelství </li>\n	<li>dovednosti a návyky umožňující přípravu na vysokoškolský typ studia nejenom technického a ekonomického zaměření</li>\n	<li>dovednosti potřebné k dalšímu sebevzdělávání, schopnost analyzovat problémy, hledat způsoby jejich řešení, pohotově se rozhodovat, pracovat samostatně i v týmu</li>\n	<li>samostatné studium a práci s informačními zdroji</li>\n	<li>Oblast všeobecného vzdělání</li>\n</ul><h3>Spolehlivá znalost českého jazyka a jeho kultivované užívání</h3>\n\n<ul><li>Kulturní přehled, vztah ke kulturním, estetickým a humanitním hodnotám</li>\n	<li>Znalost dvou světových jazyků na úrovni samostatné všeobecné komunikace včetně využívání znalostí při obchodních jednáních a obchodní korespondenci se zahraničním partnerem</li>\n	<li>Matematické vědomosti jak pro aplikaci v hospodářské, tak i ve finanční praxi</li>\n	<li>Znalost důležitých jevů, pojmů a zákonitostí fyziky a chemie a jejich aplikace</li>\n	<li>Poznání regionální, národní a světové historie, přehled v oblasti geografie s přihlédnutímk ekonomickým souvislostem</li>\n</ul><h3>Oblast odborného vzdělání</h3>\n\n<ul><li>Znalost a pochopení ekonomických pojmů, principů a zákonitostí v tržní ekonomice a jejich aplikace v hospodářské praxi</li>\n	<li>Používání vědomostí a dovedností z informačních technologií pro zpracování informací včetně Internetu</li>\n	<li>Znalost účetní a daňové problematiky včetně praktického využití</li>\n	<li>Znalosti z marketingu a managementu a jejich použití v praxi</li>\n	<li>Orientace v základních právních normách a jejich aplikace na podmínky praxe</li>\n	<li>Znalost metodiky založení a provozování vlastní firmy</li>\n	<li>Orientace v problematice podnikání v EU (účetní, daňové, právní ….)</li>\n	<li>Zpracování podnikatelských záměrů při zakládání firem i pro potřebu peněžních ústavů při žádostech o úvěr</li>\n	<li>Orientace ve standardech projektového řízení - výuka metodiky tvorby projektů na čerpání dotací z EU (výuka na středních školách není obvyklá) </li>\n	<li>Znalosti z problematiky mzdového účetnictví a personalistiky</li>\n	<li>Uzavírání smluv s dodavateli a odběrateli včetně leasingových</li>\n	<li>Stěžejní znalosti odborných předmětů souvisejících s pozemním stavitelstvím - stavební materiály, betonové konstrukce, stroje a zařízení, geodézie, stavební mechanika, architektura, management ve stavebnictví, kalkulace stavebních prací a ceny staveb dle projektu v SW programu euro CALC (Callida), projektování na PC v SW programu PROGECAD, ArchiCAD.</li>\n	<li>Znalost technologické návaznosti stavebních prací</li>\n	<li>Schopnost zpracovat stavební projekt, vypracování dokumentace za účelem stavebního povolení</li>\n	<li>Vypracovat projekt nízkoenergetického a pasivního objektu (na SŠ není tato výuka běžná)</li>\n	<li>Čtení a posuzování stavebních projektů</li>\n	<li>Navrhování domů, bytů také formou 3D modelu</li>\n	<li>Zpracování projektů dle zadání partnerské stavební firmy</li>\n	<li>Praktické zkušenosti získané odbornou praxí nejenom ve stavební firmě, odborné dovednosti dle požadavků potenciálních zaměstnavatelů</li>\n</ul><p>Absolvent PrimMat - Soukromé střední školy podnikatelské, s. r. o. je školou vychováván vzhledem k budoucímu občanskému a profesnímu životu k odpovědnosti, čestnosti, důslednosti, pracovitosti, přesnosti, kreativitě a podnikavosti.</p>\n\n<h4>Uplatnění absolventů studijního oboru se zaměřením 02 - podnikání v euroregionu a pozemní stavitelství (dvouprofesní vzdělání):</h4>\n\n<ul><li>Stavební firmy, pojišťovny, stavební a katastrální úřady</li>\n	<li>Pracovník technických úseků firem a společností, práce v ekonomických a personálních útvarech</li>\n	<li>Pracovník managementu malých i velkých firem nejenom stavebního zaměření</li>\n	<li>Stavbyvedoucí</li>\n	<li>Práce v projekční kanceláři</li>\n	<li>Práce ve firmách poskytujících obchodní činnosti a služby</li>\n	<li>Realizace vlastních podnikatelských záměrů , asistent podnikatele</li>\n	<li>Pokračování ve studiu na VŠ nejen ekonomického směru</li>\n	<li>Studijní obor vychází z kvalifikačních a osobnostních požadavků, stanovených v projektu Integrovaný systém typových pozic (ISTP) Ministerstva práce a sociálních věcí.</li>\n</ul><p><strong>Roční školné podle prospěchu: 0 – 13 000,- Kč</strong></p>');
INSERT INTO `field_text` (`pages_id`, `data`) VALUES('1073', '<h1>Podnikání v euroregionu a internetové služby a aplikace (programování a webdesign)</h1>\n\n<p>Studijní obor: 63-41-M/01 EKONOMIKA A PODNIKÁNÍ se zaměřením 03 - podnikání v euroregionu a internetové služby a aplikace</p>\n\n<h2>Profilová maturitní zkouška</h2>\n\n<p><strong>Ústní maturitní zkouška</strong>: Podnikatelství - souhrnná  zkouška, Programování </p>\n\n<p><strong>Praktická maturitní zkouška</strong>: vypracování souvislého účetního příkladu, obhajoba podnikatelského plánu, obhajoba webového projektu </p>\n\n<p> </p>\n\n<h2>Proč zvolit toto zaměření?</h2>\n\n<ul><li>v <strong>prvním</strong> ročníku vytvoříte (a nastylujete) správný <strong>statický</strong> web</li>\n	<li>ve <strong>druhém</strong> ročníku vytvoříte <strong>dynamický</strong> web a poučeně jej propojíte s <strong>databázi</strong></li>\n	<li>ve <strong>třetím</strong> ročníku poučeně <strong>programujete</strong> a  umíte spravovat <strong>CMS</strong> (eshop, redakční systém ...) a propagovat je</li>\n	<li>ve <strong>čtvrtém</strong> ročníku umíte naplánovat a vytvořit <strong>vlastní CMS</strong>, umíte pracovat se <strong>sociálními</strong> systémy a dalšími <strong>marketingovými</strong> nástroji</li>\n	<li><strong>k maturitě si připravíte a obhájíte vlastní webový projekt</strong></li>\n</ul><h2>Učební plán</h2>\n\n<table class=\"uk-table uk-table-divider uk-table-striped\"><tbody><tr><td colspan=\"2\" rowspan=\"2\">\n			<p> </p>\n\n			<p><strong>Předměty, jejich kategorie a zkratky</strong></p>\n\n			<p> </p>\n			</td>\n			<td colspan=\"4\"><strong>Počet týdně vyučovaných hodin v ročníku:</strong></td>\n			<td rowspan=\"2\">\n			<p> </p>\n\n			<p><strong>Celkem</strong></p>\n\n			<p> </p>\n			</td>\n		</tr><tr><td><strong>1</strong></td>\n			<td><strong>2</strong></td>\n			<td><strong>3</strong></td>\n			<td><strong>4</strong></td>\n		</tr><tr><td colspan=\"2\"><strong>Všeobecně vzdělávací předmět</strong></td>\n			<td> </td>\n			<td> </td>\n			<td> </td>\n			<td> </td>\n			<td> </td>\n		</tr><tr><td>Český jazyk a literatura</td>\n			<td>ČJL</td>\n			<td>3</td>\n			<td>3</td>\n			<td>3</td>\n			<td>3</td>\n			<td>12</td>\n		</tr><tr><td>Anglický jazyk</td>\n			<td>AnJ</td>\n			<td>3</td>\n			<td>3</td>\n			<td>3</td>\n			<td>3</td>\n			<td>12</td>\n		</tr><tr><td>Německá jazyk</td>\n			<td>NeJ</td>\n			<td>3</td>\n			<td>3</td>\n			<td>3</td>\n			<td>3</td>\n			<td>12</td>\n		</tr><tr><td>Matematika</td>\n			<td>Mat</td>\n			<td>3</td>\n			<td>3</td>\n			<td>3</td>\n			<td>2</td>\n			<td>11</td>\n		</tr><tr><td>Maturitní seminář</td>\n			<td>Sma</td>\n			<td>-</td>\n			<td>-</td>\n			<td>-</td>\n			<td>1</td>\n			<td>1</td>\n		</tr><tr><td>Základy přírodních věd</td>\n			<td>ZPV</td>\n			<td>2</td>\n			<td>2</td>\n			<td>-</td>\n			<td>-</td>\n			<td>4</td>\n		</tr><tr><td>Základy společenský věd</td>\n			<td>ZSV</td>\n			<td>2</td>\n			<td>2</td>\n			<td>-</td>\n			<td>-</td>\n			<td>4</td>\n		</tr><tr><td>Tělesná výchova</td>\n			<td>TeV</td>\n			<td>2</td>\n			<td>2</td>\n			<td>2</td>\n			<td>2</td>\n			<td>8</td>\n		</tr><tr><td><strong>Všeobecné odborné předměty</strong></td>\n			<td> </td>\n			<td> </td>\n			<td> </td>\n			<td> </td>\n			<td> </td>\n			<td> </td>\n		</tr><tr><td>Informační a komunikační technologie</td>\n			<td>IKT</td>\n			<td>4</td>\n			<td>3</td>\n			<td>-</td>\n			<td>-</td>\n			<td>7</td>\n		</tr><tr><td>Obchodní korespondence</td>\n			<td>ObK</td>\n			<td>2</td>\n			<td>2</td>\n			<td>-</td>\n			<td>-</td>\n			<td>4</td>\n		</tr><tr><td>Ekonomika</td>\n			<td>Eko</td>\n			<td>2</td>\n			<td>2</td>\n			<td>-</td>\n			<td>-</td>\n			<td>4</td>\n		</tr><tr><td>Podnikatelství</td>\n			<td>Pod</td>\n			<td>-</td>\n			<td>1</td>\n			<td>4</td>\n			<td>5</td>\n			<td>10</td>\n		</tr><tr><td>Aplikované podnikatelství</td>\n			<td>ApP</td>\n			<td>-</td>\n			<td>-</td>\n			<td>2</td>\n			<td>-</td>\n			<td>2</td>\n		</tr><tr><td>Právní nauka</td>\n			<td>PrN</td>\n			<td>-</td>\n			<td>-</td>\n			<td>2</td>\n			<td>3</td>\n			<td>5</td>\n		</tr><tr><td>Marketing</td>\n			<td>Mar</td>\n			<td>-</td>\n			<td>-</td>\n			<td>2</td>\n			<td>-</td>\n			<td>2</td>\n		</tr><tr><td>Účetnictví</td>\n			<td>Uce</td>\n			<td>2</td>\n			<td>2</td>\n			<td>1</td>\n			<td>1</td>\n			<td>6</td>\n		</tr><tr><td>Účetnictví na PC</td>\n			<td>UPC</td>\n			<td>-</td>\n			<td>-</td>\n			<td>1</td>\n			<td>1</td>\n			<td>2</td>\n		</tr><tr><td><strong>Zaměření</strong></td>\n			<td> </td>\n			<td> </td>\n			<td> </td>\n			<td> </td>\n			<td> </td>\n			<td> </td>\n		</tr><tr><td>Odborná angličtina</td>\n			<td>OAJ</td>\n			<td>-</td>\n			<td>-</td>\n			<td>1</td>\n			<td>-</td>\n			<td>1</td>\n		</tr><tr><td>Programování</td>\n			<td>Pro</td>\n			<td>5</td>\n			<td>3</td>\n			<td>2</td>\n			<td>3</td>\n			<td>13</td>\n		</tr><tr><td>Databázové systémy</td>\n			<td>DaS</td>\n			<td>-</td>\n			<td>2</td>\n			<td>2</td>\n			<td>2</td>\n			<td>6</td>\n		</tr><tr><td>e-Marketing</td>\n			<td>eMa</td>\n			<td>-</td>\n			<td>-</td>\n			<td>1</td>\n			<td>2</td>\n			<td>3</td>\n		</tr></tbody></table><p><br /><strong>Absolvent je středoškolsky vzdělaný odborník, který si na základě studia všeobecně vzdělávacích a odborných předmětů osvojí:</strong></p>\n\n<ul><li>odborné znalosti a dovednosti ekonomicko-podnikatelské a z oblasti podnikání na internetu</li>\n	<li>dovednosti a návyky umožňující přípravu na vysokoškolský typ studia nejenom ekonomického zaměření</li>\n	<li>dovednosti potřebné k dalšímu sebevzdělávání, schopnost analyzovat problémy, hledat způsoby jejich řešení, pohotově se rozhodovat, pracovat samostatně i v týmu</li>\n	<li>schopnost samostatného studia a práce s informačními zdroji</li>\n</ul><h3>Oblast všeobecného vzdělání</h3>\n\n<ul><li>Spolehlivá znalost českého jazyka a jeho kultivované užívání</li>\n	<li>Kulturní přehled, vztah ke kulturním, estetickým a humanitním hodnotám</li>\n	<li>Znalost dvou světových jazyků na úrovni samostatné všeobecné komunikace včetně využívání znalostí obchodní angličtiny při obchodních jednáních a obchodní korespondenci se zahraničním partnerem</li>\n	<li>Matematické vědomosti jak pro aplikaci v hospodářské, tak i ve finanční praxi</li>\n	<li>Znalost důležitých jevů, pojmů a zákonitostí fyziky a chemie a jejich aplikace</li>\n	<li>Poznání regionální, národní a světové historie,</li>\n</ul><h3>Oblast odborného vzdělání</h3>\n\n<ul><li>Znalost a pochopení ekonomických pojmů, principů a zákonitostí v tržní ekonomice a jejich aplikace v hospodářské praxi</li>\n	<li>Používání vědomostí a dovedností z informačních technologií pro zpracování informací včetně Internetu, znalost funkčních možností výpočetní techniky a jejich účelná aplikace</li>\n	<li>Znalost účetní a daňové problematiky včetně praktického využití</li>\n	<li>Znalosti z marketingu a managementu a jejich použití v praxi</li>\n	<li>Orientace v základních právních normách a jejich využití v obchodně-podnikatelské činnosti</li>\n	<li>Znalost metodiky založení a provozování vlastní firmy</li>\n	<li>Orientace v problematice podnikání v EU (účetní, daňové, právní ….)</li>\n	<li>Zpracování podnikatelských záměrů při zakládání firem i pro potřebu peněžních ústavů při žádostech o úvěr</li>\n	<li>Orientace ve standardech projektového řízení - výuka metodiky tvorby projektů na čerpání dotací z EU (výuka na středních školách není obvyklá)</li>\n	<li>Znalosti z problematiky mzdového účetnictví a personalistiky</li>\n	<li>Uzavírání smluv s dodavateli a odběrateli včetně leasingových</li>\n	<li>Programování webových aplikací</li>\n	<li>Instalace, správa a práce s internetovými CMS a eshopy</li>\n	<li>Znalosti v oblasti eMarketingu a podnikání na internetu</li>\n	<li>Dovednost věcně, jazykově i formálně správně zpracovávat písemnosti spojené s obchodně-podnikatelskou činností v tuzemsku i v zahraničí s využitím výpočetní techniky</li>\n	<li>Praktické zkušenosti získané odbornou praxí, praxí v IT firmách, i vlastními podnikatelskými aktivitami již v průběhu studia</li>\n</ul><p>Absolvent PrimMat - Soukromé střední školy podnikatelské, s. r. o., je školou vychováván vzhledem k budoucímu občanskému a profesnímu životu k odpovědnosti, čestnosti, důslednosti, pracovitosti, přesnosti, kreativitě a podnikavosti.</p>\n\n<h3>Uplatnění absolventů se zaměřením 03 - podnikání v euroregionu a internetové služby a aplikace (dvouprofesní vzdělávání):</h3>\n\n<ul><li>V peněžních ústavech – banky, pojišťovny, spořitelny</li>\n	<li>Úřady státní a veřejné správy – asistent, referent, administrativní pracovník</li>\n	<li>Pracovník ekonomických a personálních útvarů, managementu malých i velkých firem</li>\n	<li>Programátor  webových systémů</li>\n	<li>Správce internetových řešení – eshopy, weby, marketing, sociální sítě</li>\n	<li>Realizace vlastních podnikatelských záměrů, asistent podnikatele</li>\n	<li>Pokračování ve studiu na VŠ - ekonomického, právního, humanitního …, i technického zaměření</li>\n</ul><p>Studijní obor vychází z kvalifikačních a osobnostních požadavků, stanovených v projektu Integrovaný systém typových pozic (ISTP) Ministerstva práce a sociálních věcí.</p>\n\n<p><strong>Roční školné podle prospěchu: 0 – 13 000,- Kč</strong></p>');
INSERT INTO `field_text` (`pages_id`, `data`) VALUES('1044', '<h3>Škola zkvalitňuje a podporuje výuku i za pomocí projektů spolufinancovaných Evropskou unií.</h3>\n\n<p><strong><a href=\"https://www.primmat.cz/dokumenty/aktualizace-web.-s%CC%8Cablony-ii-3-end.pdf\">Students Actively Learning Entrepreneurial Skills</a> </strong>- výměna osvědčených vzdělávacích postupů na podporu podnikatelského vzdělávání, podnikavosti, kreativity, kritického myšlení, digitální kompetence, jazykové a prezentační dovednosti, přispět k osobnímu a profesnímu rozvoji žáků, usnadnit porozumění světu podnikání. Více na PDF, ke stažení <a	href=\"/site/assets/files/1044/primmat-tour.pdf\">zde</a>.</p>\n\n<p><strong><a href=\"https://www.primmat.cz/dokumenty/aktualizace-web.-s%CC%8Cablony-ii-1-1.pdf\">PrimMat-praxe-budoucnost II</a> - </strong>Projekt je zaměřen na personální podporu, osobnostně profesní rozvoj pedagogů, rovný přístup ke vzdělávání, podporu aktivit rozvíjejících ICT, rozvoj kompetencí pedagogů v oblasti využívání nových výukových metod s podporou ICT, spolupráci školy se zaměstnavateli, zapojení odborníků z praxe do výuku, spolupráci s rodiči žáků, s veřejností. Více na PDF ke stažení <a	href=\"/site/assets/files/1044/aktualizace-web_-sablony-ii-1-1.pdf\">zde</a>.</p>\n\n<p><strong><a href=\"http://euprojekty.ssspfm.cz/\">Nové výzvy, nové příležitosti, nová škola</a></strong> - aktualizace ŠVP a vytvoření a elektronizace stovek výukových materiálu. Materiály jsou veřejně dostupné a dle potřeby aktualizované.</p>\n\n<p><strong><a href=\"http://www.sbirkaprikladu.eu/\">SbírkaPříkladů.EU</a></strong> - rozsáhlá webová sbírka tisíců příkladů z matematiky a generátorů náhodných příkladů. </p>\n\n<p><strong><a href=\"http://www.primmat.cz/\">ePRIMMAT</a></strong> - tvorba a elektronizace výukových materiálů, IT podpora výuky.</p>\n\n<p><strong><a href=\"http://www.primmat.cz/\">EUPRIMMAT</a></strong> - podpora jazykového vzdělávní prostřednictvím výjezdů do zahraničí.</p>\n\n<p><strong><a href=\"http://gebol.org/cs/\">GEBOL</a></strong> - mezinárodní projekt zaměřený na spolupráci škol a drobných podnikatelů.</p>\n\n<p><strong><a href=\"http://maple.theingots.org/cs/domu/\">MAPLE</a></strong> - mezinárodní projektové partnerství zaměřené na počítačové myšlení a měření přírůstku znalostí a dovedností.</p>\n\n<p><strong><a	href=\"/site/assets/files/1044/1804180907-a3horizontal.pdf\" target=\"_blank\" rel=\"noreferrer noopener\">PRIMMAT-PRAXE-BUDOUCNOST</a></strong> - cílem projektu je personální podpora, osobnostně profesní rozvoj pedagogů, společné vzdělávání žáků a studentů, podpora extrakurikulárních aktivit, aktivity rozvíjející ICT.</p>');
INSERT INTO `field_text` (`pages_id`, `data`) VALUES('1080', '<h1>Přijímání žáků ke studiu na PRIMMAT školní rok 2021/2022</h1>\n\n<h2>informace pro uchazeče ke studiu</h2>\n\n<p><strong>Dodatečné rozhodnutí ŘŠ o nekonání školní přijímací zkoušky.</strong></p>\n\n<p><strong>V návaznosti na opatření obecné povahy MŠMT ze dne 5. 1. 2021 ředitelka školy dodatečně rozhodla o nekonání školní přijímací zkoušky v rámci 1. kola přijímacího řízení pro školní rok 2021/2022.</strong></p>\n\n<p>Ve Frýdku – Místku dne 1. 3. 2021</p>\n\n<p>Mgr. Eva Zykmundová</p>\n\n<p>ředitelka školy</p>\n\n<p><br /><strong>Jednotná přijímací zkouška z jazyka českého a matematiky je na naší škole zrušena.</strong></p>\n\n<h2>Kritéria přijímacího řízení</h2>\n\n<h3>1. Stanovení kritérií přijímacího řízení</h3>\n\n<p><strong>Podmínky přijetí ke studiu do studijního oboru 6341M/01 Ekonomika a podnikání</strong>, studijní zaměření: 01 (služby v cestovním ruchu), 02 (pozemní stavitelství), 03 (internetové služby a aplikace - programování a webdesign).</p>\n\n<p>Všichni uchazeči konají pouze školní přijímací zkoušku v podobě testu z obecně studijních předpokladů.</p>\n\n<p><strong>Rozhodujícím kritériem pro přijetí ke vzdělávání je pořadí, které je určeno celkovým počtem získaných bodů u přijímacího řízení.</strong></p>\n\n<h3>Jak vyplnit přihlášku</h3>\n\n<p>- Formulář přihlášky uchazeči poskytne základní škola, popř. střední škola,<br />\n- lze také využít obecný tiskopis přihlášky MŠMT,<br />\n- čitelně vyplňte všechny základní identifikátory (jméno, příjmení, bydliště, kontakty<br />\natd.) Nutně vyplňte všechny dostupné kontakty (mobil, e-mail - vše čitelně !),<br />\n- lékařský posudek o zdravotní způsobilosti ke vzdělávání nevyžadujeme,<br />\n- nezapomeňte přihlášku podepsat (jak zákonný zástupce, tak i uchazeč),<br />\n- přihláška musí obsahovat vyplněné údaje ze ZŠ (hodnocení z 8. a 9. třídy ZŠ., podpis a<br />\nrazítko ZŠ), případně ověřené kopie vysvědčení z 8. a 9. třídy ZŠ,<br />\n- stále platí možnost podat přihlášky v rámci prvního kola na dvě střední školy,<br />\n- přihlášku musíte v termínu do<strong> 1. 3. 2021 </strong>doručit na obě vámi zvolené školy,<br />\n- přihlášku doručte osobně /sekretariát/ nebo zašlete poštou - adresa pro doručení poštou:<br /><strong>PrimMat – Soukromá střední škola podnikatelská, Československé armády 482, 73801 Frýdek –</strong><br /><strong>Místek,</strong><br />\n- pracovní doba pro odevzdání přihlášek v měsíci únoru 2021 : běžně 8,00 - 15,00 hodin,<br />\n- školní přijímací zkouška - 1. termín 13. duben 2021, určený školou, na přihlášku se uvádí jen<br />\njeden termín,<br />\n- školní přijímací zkouška – 2. termín 14. duben 2021, určený školou.</p>\n\n<p>Ve Frýdku – Místku dne 27. 1. 2021</p>\n\n<h3>2. Počet tříd</h3>\n\n<p>Do 1. ročníku školního roku 2021/2022 budeme z prostorových důvodů přijímat pouze <strong>jednu třídu</strong>.</p>\n\n<h4>2.1 Předpokládaný počet přijímaných uchazečů - studijní obor 6341M/01 Ekonomika a podnikání</h4>\n\n<p><strong>Studijní obor 6341M/01 Ekonomika a podnikání</strong></p>\n\n<p>- <strong>32 žáků </strong>dvou studijních zaměření (viz bod 1)</p>\n\n<p> </p>\n\n<h3>3. Postup výpočtu celkového bodového hodnocení</h3>\n\n<p>Maximální počet bodů, který může uchazeč dosáhnout, je 80.</p>\n\n<h4>3.1 Školní přijímací zkouška formou testu z obecně studijních předpokladů (v návaznosti na opatření obecné povahy MŠMT ze dne 5. 1. 2021 může ŘŠ dodatečně rozhodnout do 8. 3. 2021 o nekonání školní přijímací zkoušky)</h4>\n\n<p><strong>Parametry školní zkoušky z obecně studijních předpokladů (OSP)</strong></p>\n\n<p>zahájení testu z OSP– předběžně 8:30 h<br />\ntest uchazeči provádí písemnou formou<br />\ndélka testu – 60 minut<br />\nmaximální počet dosažených bodů je 30<br />\npozvánku ke zkoušce obdržíte od SŠ, kterou zvolíte na prvním místě, tam konáte zkoušku</p>\n\n<h4><br />\n3.2 Zjevná kreativita uchazeče (zapojení do soutěží, reprezentace ZŠ,) – maximální počet dosažených bodů je 20.</h4>\n\n<h4>3.3 Prospěchové výsledky ze ZŠ</h4>\n\n<p>* průměrný prospěch z 8. třídy ZŠ (první pololetí)</p>\n\n<p>* průměrný prospěch 1,00 – <strong>30 bodů </strong></p>\n\n<p>* za každou 0,1 v průměru prospěchu se strhává 1 bod (například: průměr 1, 1 =29 bodů, průměr 1,2 = 28 bodů, …, zaokrouhluje se dle matematických pravidel)</p>\n\n<p><strong>3.4 V případě rovnosti bodů dvou a více uchazečů rozhodují o jejich pořadí pomocná kritéria v následujícím pořadí:</strong></p>\n\n<p>Bodový výsledek zkoušky z OSP<br />\nV případě shody ve všech předchozích ukazatelích rozhoduje o  pořadí uchazeče hodnocení z preferovaných předmětů za 1. pololetí osmé třídy v tomto pořadí:<br />\na) Anglický jazyk<br />\nb) Matematika<br />\nc) Český jazyk</p>\n\n<h3><br />\n4. Roční školné činí 0 - 13 000,- Kč</h3>\n\n<p>Ve Frýdku-Místku dne 11. 1. 2021                                  </p>\n\n<p>Mgr. Eva Zykmundová, ředitelka školy, v. r.              </p>\n\n<h3>5. Další informace</h3>\n\n<ul><li>přihlášky - ředitelce střední školy do 1. března 2021 a to osobně nebo poštou,</li>\n	<li>není vyžadováno potvrzení lékaře o zdravotní způsobilosti,</li>\n	<li>jednotná přijímací zkouška z M a ČJL  <strong>se nekoná</strong>,</li>\n	<li>odvolání proti rozhodnutí o nepřijetí je nutné podat do 3 pracovních dnů od doručení rozhodnutí o nepřijetí k rukám ředitelky školy,</li>\n	<li>uchazeč/zákonný zástupce potvrdí zájem o školu odevzdáním<strong> zápisového  lístku do 10 pracovních dnů</strong> ode dne vyhlášení výsledků přijímacího řízení,</li>\n	<li><strong>rodiče přijatých žáků budou vyzváni k projednání a podpisu smlouvy o studiu a vzdělávání, která zavazuje smluvní strany k partnerské spolupráci po celou dobu studia (podmínka realizace studia),</strong></li>\n	<li>vzdělávání cizinců je poskytování v souladu se školským zákonem.</li>\n</ul><h4><br />\nPřijímání do vyššího ročníku vzdělávání ve střední škole:                     </h4>\n\n<p>§63 zákona č.561/2004 Sb., školský zákon, ve znění pozdějších předpisů,                    <br />\nředitel školy může uchazeče přijmout do vyššího než prvního ročníku vzdělávání ve střední škole. V rámci přijímacího řízení může ředitel školy po posouzení dokladů uchazeče o předchozím vzdělávání stanovit jako podmínku pro přijetí vykonání zkoušky, a určit její obsah, termín, formu a kritéria hodnocení, a to v souladu se vzdělávacím programem příslušného oboru vzdělání. V případě, že ředitel školy rozhodne o přijetí uchazeče, určí ročník, do něhož bude uchazeč zařazen.  <br />\nPrávní předpisy pro přijímání žáků a dalších uchazečů ke vzdělávání</p>\n\n<p>Zákona č. 561/2004 Sb. v platném znění, (školský zákon) <br />\nVyhlášky č. 671/2004 Sb., v platném znění, vyhláška č. 353/2016 Sb., § 1 odst.7 </p>\n\n<p>Zákon č. 500/2004 Sb. v platném znění (správní řád)    </p>\n\n<p>Nařízení vlády č. 211/2010 Sb. v platném znění</p>\n\n<h4>POTŘEBUJETE PORADIT?</h4>\n\n<p><strong>matulova@primmat.cz</strong> - zřizovatelka školy</p>\n\n<p><strong>zykmundova@primmat.cz </strong>- ředitelka školy   </p>\n\n<p><a href=\"https://www.cermat.cz/\">www.cermat.cz</a></p>');
INSERT INTO `field_text` (`pages_id`, `data`) VALUES('1097', '<p>Seznam přijatých uchazečů škola zveřejní nejdříve <ins><strong>19. května 2021</strong></ins> pod registračním číslem.</p>');
INSERT INTO `field_text` (`pages_id`, `data`) VALUES('1081', '<h1>Příprava na přijímací zkoušky</h1>\n\n<p>Vzhledem k aktuální situaci v ČR se přípravný kurz k přijímacím zkouškám z matematiky, který je každoročně naší školou realizován,  nekoná. </p>');
INSERT INTO `field_text` (`pages_id`, `data`) VALUES('1082', '<p>Vytváření bezpečného školního prostředí je nezbytným předpokladem poskytování vzdělávacích služeb.</p>\n\n<p>Průběžně sledujeme vzájemné vztahy mezi žáky školy, není nám lhostejné jejich chování, jednání a vystupování. Spolupráce pedagogů a rodičů je nezbytnou součástí preventivního programu školy, jehož cílem je chránit naše žáky a být připraveni pomoci v případě podezření na ubližování silnějších slabším.</p>\n\n<p>S tímto záměrem jsme vytvořili program proti šikanování. Vaší informací se vždy budeme zabývat. Pomoc vám poskytne třídní učitel, školní preventista, ředitelka školy.</p>\n\n<p> </p>\n\n<p><strong>Zákonní zástupci žáků by si měli všímat především těchto možných signálů šikanování:</strong></p>\n\n<p>- za dítětem nepřicházejí domů spolužáci nebo jiní kamarádi;</p>\n\n<p>- dítě nemá kamaráda, s nímž by trávilo volný čas, s nímž by si telefonovalo apod.;</p>\n\n<p>- dítě není zváno na návštěvu k jiným dětem;</p>\n\n<p>- nechuť dítěte jít ráno do školy (zvláště když dříve mělo dítě školu rádo). Dítě odkládá odchod z domova, případně je na něm možno pozorovat i strach;</p>\n\n<p>- ztráta chuti k jídlu;</p>\n\n<p>- dítě nechodí do školy a ze školy nejkratší cestou, případně střídá různé cesty, prosí o odvoz autem;</p>\n\n<p>- dítě chodí domů ze školy hladové (agresoři mu berou svačinu nebo peníze na svačinu);</p>\n\n<p>- usíná s pláčem, má neklidný spánek, křičí ze snu, např. \"Nechte mě!\";</p>\n\n<p>- dítě ztrácí zájem o učení a schopnost soustředit se na ně;</p>\n\n<p>- dítě bývá doma smutné či apatické nebo se objevují výkyvy nálad;</p>\n\n<p>- zmínky o možné sebevraždě;</p>\n\n<p>- odmítá svěřit se s tím, co ho trápí;</p>\n\n<p>- dítě žádá o peníze, přičemž udává nevěrohodné důvody (například opakovaně říká, že je ztratilo), případně doma krade peníze;</p>\n\n<p>- dítě nápadně často hlásí ztrátu osobních věcí;</p>\n\n<p>- dítě je neobvykle, nečekaně agresivní k sourozencům nebo jiným dětem, projevuje i zlobu vůči rodičům;</p>\n\n<p>- dítě si stěžuje na neurčité bolesti břicha nebo hlavy, možná ráno zvrací, snaží se zůstat doma;</p>\n\n<p>- své zdravotní obtíže může přehánět, případně i simulovat (manipulace s teploměrem apod.);</p>\n\n<p>- dítě se vyhýbá docházce do školy;</p>\n\n<p>- dítě se zdržuje doma více, než mělo ve zvyku.</p>\n\n<p> </p>\n\n<p><strong>Předpokladem úspěšného zvládání studijních nároků je pravidelná docházka žáka do školy.</strong></p>\n\n<p>Minimalizovat zbytečnou absence žáků ve vyučování lze dosáhnout pouze úzkou spoluprací školy a rodičů žáka.</p>\n\n<p> </p>\n\n<p><strong>Nezbytnou součástí školního řádu každé školy je prevence záškoláctví.</strong></p>\n\n<p> </p>\n\n<p><strong>Záškoláctví - typ rizikového chování</strong></p>\n\n<p>Za záškoláctví („chození za školu“) je považována neomluvená absence žáka základní či střední školy ve škole. Jedná se o přestupek, kterým žák úmyslně zanedbává školní docházku. Je chápáno jako porušení školního řádu (pravidel stanovených školou), současně jde o porušení školského zákona, který vymezuje povinnou školní docházku. Nezřídka je spojeno s dalšími typy rizikového chování, které obvykle negativně ovlivňují osobnostní vývoj jedince.</p>\n\n<p>Prevence záškoláctví je součástí školního řádu, školní docházku eviduje třídní učitel a v případě podezření na záškoláctví se obrací na zákonného zástupce nezletilého žáka, nebo může požádat o spolupráci věcně příslušný správní orgán.</p>\n\n<p>Prevence záškoláctví, způsob omlouvání nepřítomnosti žáků, řešení neomluvené nepřítomnosti a postup zúčastněných subjektů je ošetřen Metodickým pokynem MŠMT „K jednotnému postupu při uvolňování a omlouvání žáků z vyučování, prevenci a postihu záškoláctví“ vydaným pod č.j. 10 194/2002 –14.</p>\n\n<p>Školy si upravují postup pro případy záškoláctví interně, takže se liší v počtu neomluvených hodin, které jsou již vymezovány jako porušení školního řádu a jsou obvykle postihovány kázeňsky(např. napomenutí, důtky, podmínečné vyloučení, snížená známka z chování).</p>\n\n<p>„Záškoláctvím bývá označován přestupek žáka, který úmyslně zanedbává návštěvu školy“.</p>\n\n<p> </p>\n\n<p><strong>Kategorií záškoláctví:</strong></p>\n\n<p>Pravé záškoláctví – žák se ve škole neukazuje, ale rodiče si myslí, že do školy chodí</p>\n\n<p>Záškoláctví s vědomím rodičů – na této formě se podílí několik typůrodičů, jejichž hlavními charakteristikami je buď odmítavý postoj ke škole nebo přílišná slabost ve vztahu k dítěti či závislosti na pomoci a podpoře dítěte v domácnosti...</p>\n\n<p>Záškoláctví s klamáním rodičů - existují děti, které dokážou přesvědčit rodiče o svých zdravotních obtížích, pro které nemohou jít do školy a rodiče jim absenci omlouvají pro tyto zdravotní důvody, tento typ záškoláctví je však obtížně rozlišitelný od záškoláctví s vědomím rodičů.</p>\n\n<p>Útěky ze školy– někdy se tomuto typu říká interní záškoláctví, kdy žáci do školy přijdou, nechají si zapsat přítomnost a během vyučování na několik hodin odejdou, přičemž zůstávají v budově školy nebo ji na krátkou dobu opustí.</p>\n\n<p>Odmítání školy – některým typům žáků činí představa školní docházky psychické obtíže, např. v důsledku problémů ve škole.</p>');
INSERT INTO `field_text` (`pages_id`, `data`) VALUES('1083', '<p><strong>Školská rada -<a	href=\"/site/assets/files/1083/skolska-rada-primmat.docx\"> ke stažení zde</a>.</strong></p>\n\n<p><strong>Vedení distanční výuky - <a	href=\"/site/assets/files/1083/dodatek-c.docx\">ke stažení zde</a>.</strong></p>\n\n<p><strong>Organizace školního roku 2020/2021 - <a	href=\"/site/assets/files/1083/organizaci-skolniho-roku-2020-2021.docx\">ke stažení zde.</a></strong></p>\n\n<p><strong>Školní řád - <a	href=\"/site/assets/files/1083/skolni-rad.docx\" target=\"_blank\" rel=\"noreferrer noopener\">ke stažení zde</a>.</strong></p>\n\n<p><strong>Pravidla pro hodnocení vzdělávání na SŠ - <a	href=\"/site/assets/files/1083/pravidla-pro-hodnoceni-vysledku-vzdelavani.docx\">ke stažení zde</a>.</strong></p>\n\n<p><strong>Postup při omlouvání nepřítomnosti ve vyučování - <a	href=\"/site/assets/files/1083/omlouvani_nepritomnosti_ve_vyucovani.pdf\" target=\"_blank\" rel=\"noreferrer noopener\">ke stažení zde.</a></strong></p>\n\n<p><strong>Tiskopisy přihlášek ke studiu - <a href=\"http://www.msmt.cz/vzdelavani/stredni-vzdelavani/tiskopisy-prihlasek-ke-strednimu-vzdelavani-a-vzdelavani-v\" target=\"_blank\" rel=\"noreferrer noopener\">ke stažení ze stránek MŠMT.</a></strong></p>\n\n<p><strong>Europass - <a	href=\"/site/assets/files/1083/edo-63-41-m-01-ekonomika-a-podnikani-_denni-studium_-cestina-19-20.pdf\" target=\"_blank\" rel=\"noreferrer noopener\">Čeština</a>, <a	href=\"/site/assets/files/1083/edo-63-41-m-01-ekonomika-a-podnikani-_denni-studium_-anglictina-19-20.pdf\" target=\"_blank\" rel=\"noreferrer noopener\">Angličtina</a>, <a	href=\"/site/assets/files/1083/edo-63-41-m-01-ekonomika-a-podnikani-_denni-studium_-nemcina-19-20.pdf\" target=\"_blank\" rel=\"noreferrer noopener\">Němčina</a>.</strong></p>\n\n<p><strong>Informace o ochraně osobních údajů (GDPR) - <a	href=\"/site/assets/files/1083/gdpr.pdf\" target=\"_blank\" rel=\"noreferrer noopener\">ke stažení zde.</a></strong></p>\n\n<p><strong>Žádost o platbu školného - měsíčně - <a	href=\"/site/assets/files/1083/zadost-o-mesicni-platbu-predpisu-skolneho.odt\">ke stažení zde</a>.</strong></p>\n\n<p><strong>Potvrzeni o studiu - úřad práce - <a	href=\"/site/assets/files/1083/potvrzeni-o-studiu-urad-prace.pdf\">ke stažení zde</a>.</strong></p>\n\n<p><strong>Potvrzení o studiu - školní - <a	href=\"/site/assets/files/1083/potvrzeni-o-studiu-skolni.pdf\">ke stažení zde</a>.</strong></p>\n\n<p><strong>Žádost o uvolění z TV - <a	href=\"/site/assets/files/1083/zadost-o-uvoleni-z-tv.odt\">ke stažení zde</a>.</strong></p>\n\n<p><strong>Předběžná přihláška - <a	href=\"/site/assets/files/1083/predbezna-prihlaska-formular-a5.pdf\">ke stažení zde</a>.</strong></p>\n\n<p><strong>Doporučení Krajské hygienické stanice Moravskoslezského kraje se sídlem v Ostravě k aktuální epidemiologické situaci - <a href=\"https://www.primmat.cz/dokumenty/informace-ke-koronaviru-pro-%C5%A1koly-a-%C5%A1kolsk%C3%A1-za%C5%99%C3%ADzen%C3%AD-v-msk.pdf\" target=\"_blank\" rel=\"noreferrer noopener\">ke stažení zde</a>.</strong></p>');
INSERT INTO `field_text` (`pages_id`, `data`) VALUES('1084', '<h1>Maturitní zkouška ve školním roce 2020/21</h1>\n\n<p><strong>Obor:</strong></p>\n\n<p>63-41-M/01    Podnikání  v euroregionu a služby v cestovním ruchu (čtyřleté denní studium)</p>\n\n<p>63-41-M/02    Podnikání v euroregionu a pozemní stavitelství (čtyřleté denní studium)</p>\n\n<p>63-41-M/03    Podnikání v euroregionu a internetové služby a aplikace (čtyřleté denní studium)</p>\n\n<h2>Harmonogram maturitních zkoušek</h2>\n\n<p><strong>Jarní zkušební období</strong></p>\n\n<table><tbody><tr><td>Uzávěrka podání přihlášek žáky ředitelům škol</td>\n			<td>01. 12. 2020</td>\n		</tr><tr><td>Uzávěrka podání přihlášek řediteli škol do CZVV</td>\n			<td>15. 12. 2020</td>\n		</tr><tr><td>Dny volna k příprave na MZ</td>\n			<td>21. 05. 2021, 26. – 31. 05. 2021</td>\n		</tr><tr><td>Testové práce</td>\n			<td>24. 5. 2021/ M, ANJ<br />\n			25. 5. 2021/ ČJL<br />\n			7. 6. 2021 - výsledky DT</td>\n		</tr><tr><td>Písemné práce</td>\n			<td>se nekonají</td>\n		</tr><tr><td>Ústní maturitní zkouška, obhajoby P4.A</td>\n			<td>01. 06. 2021 – 07. 06. 2021</td>\n		</tr><tr><td>Praktická písemná zkouška z účetnictví</td>\n			<td>20. 05. 2021</td>\n		</tr><tr><td>Předávání maturitního vysvědčení</td>\n			<td>14. 06. 2021</td>\n		</tr></tbody></table><p><br /><strong>Podzimní zkušební období</strong></p>\n\n<table><tbody><tr><td>Uzávěrka podání přihlášek žáky ředitelům škol</td>\n			<td>23. 07. 2021</td>\n		</tr><tr><td>Uzávěrka podání přihlášek řediteli škol do CZVV</td>\n			<td>30. 07. 2021</td>\n		</tr><tr><td>Testové a písemné práce</td>\n			<td>01. 09. 2021 – 10. 09. 2021</td>\n		</tr><tr><td>Období konání zkoušek profilové části</td>\n			<td>září 2021</td>\n		</tr><tr><td>Období konání ústních zkoušek společné části</td>\n			<td>září 2021</td>\n		</tr></tbody></table><h2><br />\nPřihláška k maturitní zkoušce</h2>\n\n<p><br /><strong>Přihlášky se podávají do 1. prosince 2020</strong>. Přihlášky budete vyplňovat jednotně s třídním<br />\nučitelem po domluvě na termínu a hodině.<br /><br />\nPřihláška k <strong>ŘÁDNÉ, OPRAVNÉ</strong> maturitní zkoušce  - <a	href=\"/site/assets/files/1084/prihlaska-k-mz-_1_-verze-2.docx\">zde</a>.<br />\nTermín podání přihlášky pro opravný termín<strong> je 1. 12. 2020</strong>, zkoušky se budou konat v jarním<br />\nzkušebním období 2021. <strong>Přihlášku je nutno vytisknou, vyplnit, podepsat a poslat poštou</strong><br /><strong>(nikoli e-mailem).</strong></p>\n\n<h3><br />\nŽádost o přezkoumání</h3>\n\n<p><br />\n- zkoušky společné části maturitní zkoušky konané formou DIDAKTICKÉHO TESTU - <a	href=\"/site/assets/files/1084/odvolani-mz-msmt.pdf\">zde</a>.</p>\n\n<p><br /><strong>Společná část /státní/ maturitní zkoušky</strong></p>\n\n<p>Povinné zkoušky</p>\n\n<ol><li>   Český jazyk a literatura (didaktický test)</li>\n	<li>   Volitelná zkouška - Anglický jazyk (didaktický test) nebo Matematika (didaktický test)</li>\n</ol><p> </p>\n\n<p> </p>\n\n<p><strong>Profilová část maturitní zkoušky</strong></p>\n\n<p>Povinné zkoušky</p>\n\n<p><strong>Ekonomika a podnikání, 6341M/01, zaměření na podnikání v euroregionu a služby v cestovním ruchu</strong></p>\n\n<ol><li>Podnikatelství – souhrnná zkouška</li>\n	<li>Geografie a cestovní ruch</li>\n	<li>Český jazyk a literatura – ústní část - <a	href=\"/site/assets/files/1084/mz-cjl.docx\">zde</a>, zkouška dobrovolná</li>\n	<li>Kritéria hodnocení ústní profilové zkoušky z ČJL - <a	href=\"/site/assets/files/1084/kriteria-hodnoceni-ustni-zkousky-z-cjl.docx\">zde</a>.</li>\n	<li>Anglický jazyk – ústní část, pokud si žák nezvolil ve volitelném povinném předmětu matematiku, zkouška dobrovolná.</li>\n	<li>Kritéria hodnocení ústní profilové zkoušky z ANJ - <a	href=\"/site/assets/files/1084/anj-kriteria-hodnoceni-mz2021.docx\">zde</a>.</li>\n	<li>Praktická zkouška z odborných předmětů – obhajoba podnikatelského záměru, obhajoba itineráře zájezdu.</li>\n	<li>Kritéria hodnocení praktické zkoušky - <a	href=\"/site/assets/files/1084/maturitni-prace-pravidla-hodnoceni.docx\">zde</a>.</li>\n</ol><p> </p>\n\n<p><strong>Ekonomika a podnikání, 6341M/01, zaměření na podnikání v euroregionu a pozemní stavitelství</strong></p>\n\n<ol><li>Podnikatelství – souhrnná zkouška</li>\n	<li>Pozemní stavitelství</li>\n	<li>Český jazyk a literatura – ústní část - <a	href=\"/site/assets/files/1084/mz-cjl.docx\">zde</a>, zkouška dobrovolná.</li>\n	<li>Kritéria hodnocení ústní profilové zkoušky z ČJL - <a	href=\"/site/assets/files/1084/kriteria-hodnoceni-ustni-zkousky-z-cjl.docx\">zde</a>. </li>\n	<li>Anglický jazyk – ústní část, pokud si žák nezvolil ve volitelném povinném předmětu matematiku, zkouška dobrovolná.</li>\n	<li>Kritéria hodnocení ústní profilové zkoušky z ANJ - <a	href=\"/site/assets/files/1084/anj-kriteria-hodnoceni-mz2021.docx\">zde</a>.</li>\n	<li>Praktická zkouška z odborných předmětů – obhajoba podnikatelského záměru, obhajoba stavebního projektu.</li>\n	<li>Kritéria hodnocení praktické zkoušky - <a	href=\"/site/assets/files/1084/maturitni-prace-pravidla-hodnoceni.docx\">zde</a>.</li>\n</ol><p> </p>\n\n<p><strong>Ekonomika a podnikání, 6341M/01, zaměření na podnikání v euroregionu a internetové služby a aplikace</strong></p>\n\n<ol><li>Podnikatelství – souhrnná zkouška</li>\n	<li>Programování</li>\n	<li>Český jazyk a literatura – ústní část - <a	href=\"/site/assets/files/1084/mz-cjl.docx\">zde</a>, zkouška dobrovolná.</li>\n	<li>Kritéria hodnocení ústní profilové zkoušky z ČJL - <a	href=\"/site/assets/files/1084/kriteria-hodnoceni-ustni-zkousky-z-cjl.docx\">zde</a>.</li>\n	<li>Anglický jazyk – ústní část, pokud si žák nezvolil ve volitelném povinném předmětu matematiku, zkouška dobrovolná.</li>\n	<li>Kritéria hodnocení ústní profilové zkoušky z ANJ - <a	href=\"/site/assets/files/1084/anj-kriteria-hodnoceni-mz2021.docx\">zde</a>.</li>\n	<li>Praktická zkouška z odborných předmětů – obhajoba podnikatelského záměru, obhajoba webového projektu.</li>\n	<li>Kritéria hodnocení praktické zkoušky - <a	href=\"/site/assets/files/1084/maturitni-prace-pravidla-hodnoceni.docx\">zde</a>.</li>\n</ol>');
INSERT INTO `field_text` (`pages_id`, `data`) VALUES('1085', '<h1>Poradenské služby</h1>\n\n<p><strong>POTŘEBUJETE PORADIT?</strong></p>\n\n<p>ředitelka školy: Mgr. Eva Zykmundová, <a href=\"mailto:zykmundova@primmat.cz\">zykmundova@primmat.cz</a></p>\n\n<p>zřizovatelka, jednatelka školy: Mgr. Ivana Matulová, <a href=\"mailto:matulova@primmat.cz\">matulova@primmat.cz</a></p>\n\n<p> </p>\n\n<p><strong>KONZULTAČNÍ HODINY</strong></p>\n\n<p>pro školní rok 2020/2021 </p>\n\n<table><tbody><tr><td><strong>Pedagog</strong></td>\n			<td><strong>Den</strong></td>\n			<td><strong>Hodina</strong></td>\n		</tr><tr><td>Mgr. Tomáš Kopec</td>\n			<td>Pondělí</td>\n			<td>14:10</td>\n		</tr><tr><td>Ing. Přemysl Pilch</td>\n			<td>Středa </td>\n			<td>14:10</td>\n		</tr><tr><td>Mgr. Magda Kanalášová</td>\n			<td>Pondělí</td>\n			<td>14:05</td>\n		</tr><tr><td>Ing. Yvetta Ficková</td>\n			<td>Čtvrtek</td>\n			<td>14:05</td>\n		</tr><tr><td>Ing. Monika Kočvárová</td>\n			<td>Čtvrtek</td>\n			<td>14:05</td>\n		</tr><tr><td>Mgr. et Mgr. Romana Pinkavová</td>\n			<td>Pondělí</td>\n			<td>14:05</td>\n		</tr><tr><td>Ing., Mgr. Lenka Kotásková</td>\n			<td>Čtvrtek</td>\n			<td>14:05</td>\n		</tr><tr><td>p. Patrik Holiš</td>\n			<td>Úterý</td>\n			<td>14:05</td>\n		</tr><tr><td>Ing. Michaela Sic</td>\n			<td>Pondělí</td>\n			<td>14:05</td>\n		</tr><tr><td>Mgr. Eva Zykmundová</td>\n			<td>Středa</td>\n			<td>14:10</td>\n		</tr></tbody></table><p> </p>\n\n<p>Možnost individuální domluvy termínu.</p>\n\n<h3>Školní metodik prevence, výchovný poradce</h3>\n\n<p>Obě funkce na škole zastává Mgr. Eva Zykmundová</p>\n\n<p><strong>Konzultační hodiny ve školním roce 2020/2021:</strong></p>\n\n<p>          ŠMP                                VP<br />\npondělí 14:00 -16:00     pondělí 7:40 - 8:00<br />\nčtvrtek 7:40 - 8:00         čtvrtek 14:00 - 16:00</p>\n\n<p><strong>Konzultační hodiny pro žáky u jednotlivých pedagogů</strong></p>\n\n<p>Funkci školního metodika prevence na škole zastává Mgr. Eva Zykmundová.</p>\n\n<p> </p>\n\n<p>Konzultace po předchozí domluvě  v jinou dobu (telefonicky, emailem):<br /><strong>tel.: </strong> 558 436 312<br /><strong>email</strong>: zykmundova@primmat.cz<br />\n             sekretariat@primmat.cz </p>\n\n<h4>Můžete využít služeb:</h4>\n\n<ul><li>Pedagogicko-psychologická poradna Frýdek-Místek: <strong>www.pppfm.unas.cz</strong>, tel. 558 43 20 84</li>\n	<li>PČR - Územní odbory Frýdek-Místek: <strong>krfm@mvcr.cz</strong>, tel. 974 732 111</li>\n	<li>Preventivní a informační skupina: <strong>fmpis@mvcr.cz</strong>, 974 732 207</li>\n	<li>Krizová linka IPPP ČR - Krizová telefonní linka k šikaně pro učitele, žáky a jejich rodiče: tel. 286 881 059, mobil 774 089 181</li>\n	<li>Centrum nové naděje: <strong>www.cnnfm.cz</strong>, tel. 558 629 223</li>\n	<li>Renarkon: <strong>www.renarkon.cz</strong>, tel. 596 611 796.</li>\n</ul>');
INSERT INTO `field_text` (`pages_id`, `data`) VALUES('1093', '<p><strong>PrimMat - Soukromá střední škola podnikatelská, s.r.o. </strong></p>\n\n<p>Československé armády 482<br />\n738 01 Frýdek-Místek</p>\n\n<p>tel./fax: +420 558 436 312<br />\nmobil: +420 604 101 787<br />\nemail: <a href=\"mailto:sekretariat@PrimMat.cz\">sekretariat@PrimMat.cz</a><br />\nweb: www.PrimMat.cz</p>\n\n<p>Datová schránka: 3pcuq2h</p>\n\n<p>IČ: 25376357<br />\nDIČ: CZ25376357<br />\nIZO: 045 235 686<br />\nREDIZO: 600016358</p>\n\n<p>Číslo účtu školy: 101904105/2250</p>\n\n<p>Škola je vedena v obchodním rejstříku KS Ostrava, oddíl C, vložka 16294</p>');
INSERT INTO `field_text` (`pages_id`, `data`) VALUES('1074', '<p>Cílová vize směřuje k tomu, aby střední škola PrimMat byla vnímána veřejností jako jedinečná střední odborná podnikatelská škola s absolventy, kteří jsou přínosem pro region.</p>\n\n<p>Součástí vzdělávací koncepce školy jsou studentská řešení reálných zadání z praxe, jakož i praktická forma vzdělávání, která je realizována v průběhu 3. ročníku, ve cvičných studentských firmách. Škola tím podporuje rozvoj kreativity a podnikavosti svých žáků, jejich dovednosti praktických aplikací teoretických znalostí již v průběhu studia.</p>');
INSERT INTO `field_text` (`pages_id`, `data`) VALUES('1094', '<p>V návaznosti na opatření obecné povahy MŠMT ze dne 5. 1. 2021 ředitelka školy dodatečně rozhodla o nekonání školní přijímací zkoušky v rámci 1. kola přijímacího řízení pro školní rok 2021/2022.</p>\n\n<p><strong>Pokud nedojde ke změnám ze strany MŠMT, seznam přijatých uchazečů zveřejníme nejdříve 28. 4. 2021 na webových stránkách školy.</strong></p>\n\n<p>Mgr. Eva Zykmundová</p>\n\n<p>ředitelka školy</p>');
INSERT INTO `field_text` (`pages_id`, `data`) VALUES('1095', '<p>PrimMat – Soukromá střední škola podnikatelská, s.r.o., je za Českou republiku zapojena do realizace mezinárodního projektu v rámci programu Erasmus+ na podporu a rozvoj podnikatelského vzdělávání a myšlení žáků středních škol. Projekt je realizován pěti státy: Belgie, Česká republika, Turecko, Rumunsko, Bulharsko.</p>\n\n<p>Projekt je financován Evropskou unií v rámci programu Erasmus+.</p>\n\n<p>více na <a href=\"https://www.primmat.cz/o-skole/evropske-projekty/\">stránce s projekty</a>.</p>\n\n<p> </p>');

DROP TABLE IF EXISTS `field_text2`;
CREATE TABLE `field_text2` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_text2` (`pages_id`, `data`) VALUES('1040', '<p>Novátorství školy spočívalo také v zavedení <strong>vlastního odborného předmětu Podnikatelství</strong> (jeden z maturitních předmětů) do své středoškolské výuky, který má těsnou vazbu na ostatní odborné předměty. Součástí vzdělávací koncepce jsou studentská řešení reálných zadání z praxe, jakož i praktická forma vzdělávání, která je realizována v průběhu 3. ročníku, ve cvičných studentských firmách. Škola tím podporuje rozvoj kreativity a podnikavosti svých žáků, jejich dovednost prakticky aplikovat teoretické znalosti již v průběhu studia. Praktické dovednosti jsou dále rozvíjeny pětitýdenní praxí žáků v návaznosti na studijní obor a zvolené studijní zaměření v partnerských firmách. Za účelem zkvalitňování odborných i jazykových kompetencí žáků je pro zájemce zajišťována  souvislá zahraniční praxe v hotelovém komplexu u moře.</p>\n\n<p>Výuka na SŠ PrimMat je podpořena potřebným vybavením a zázemím – dvě učebny IT, dataprojektory a PC ve třídách, interaktivní tabule, přenosné notebooky pro pedagogy, mobilní zařízení  do výuky ve třídách …,  do všech předmětů vlastní studijní materiály, které žáci využívají také k domácí přípravě a samostudiu, odborníci z praxe ve výuce odborných předmětů, příprava zájemců na mezinárodní jazykové certifikáty, cvičení z matematiky pro zájemci o následné VŠ studium technického směru, spolupráce s vysokými školami v regionu, s partnerskými firmami. Jsou realizovány projekty na podporu modernizace výuky s popdporou ICT, kvalitního jazykového, matematického, odborného vzdělávání. Projekty jsou spolufinancovány Evropských sociálním fondem a státním rozpočtem České republiky.  </p>\n\n<p>Škola se může pochlubit řadou úspěchů v odborných, společenskovědních, jazykových i sportovních soutěžích na úrovni regionu, ČR, i v soutěžích mezinárodních. Neméně cenné je kladné hodnocení SŠ PrimMat jejími absolventy, kteří svým hlasováním umístili svoji „střední“ na čelní místo v Moravskoslezském kraji. Vážíme si toho, že naši absolventi svými podnikatelskými aktivitami vytvořili na trhu práce přes 250 pracovních míst a že šíří její dobré jméno také v zahraničí.</p>\n\n<p>Střední škola PrimMat sídlí ve vlastní budově, kde vládne pohodová a přítelská atmosféra, partnersví, respektováním osobnosti žáka, náročnost a vstřícnost pedagogů.</p>\n\n<h3>Hodnocení vzdělávání Českou školní inspekcí</h3>\n\n<p>Složení a zaujetí pedagogického sboru pro svou práci umožňuje nadstandardně podporovat všestranný rozvoj osobnosti žáků. Materiálně technické podmínky pro realizaci cílů vzdělávání jsou na standardní úrovni.</p>\n\n<p>Škola se zapojila do řady programů a projektů. V souladu s plánem rozvoje a vlastním hodnocením určovala finanční priority dle svých rozpočtových možností. Vhodně využívala projektů spolufinancovaných z ESF, grantů a dalších zdrojů k financování potřeb v hlavní činnosti.</p>\n\n<p>ŠVP zohledňují reálné podmínky a možnosti školy. Organizace vzdělávání, metody a formy výuky vytváří nadstandardní podmínky pro vzdělávání žáků.</p>\n\n<p>Výuka i realizované aktivity nadstandardně podporují rozvoj funkčních gramotností s důrazem na klíčové kompetence žáků.</p>');
INSERT INTO `field_text2` (`pages_id`, `data`) VALUES('1041', '<p><strong>NAŠE STRATEGIE</strong><br />\n1. Aktualizace vzdělávání v souladu s požadavky interními i s požadavky zvenčí.<br />\n2. Organizace výuky s důrazem na žáka.<br />\n3. Rozvoj kreativity žáka s podporou digitálních technologií.<br />\n4. Schopnost žáka pracovat s informacemi, rozvoj kritického myšlení, kreativity, logického uvažování, myšlení v souvislostech, digitální gramotnosti. Preference kvality nad kvantitou.<br />\n5. Promítat cizí jazyk do profesní připravenosti.<br />\n6. Zkvalitňovat ICT kompetence přesahem do jednotlivých předmětů.<br />\n7. Mnohem méně „memorovat“, mnohem více učit sbírat, třídit, vyhodnocovat, zpracovávat a využívat informace.<br />\n8. Pokračovat ve zlepšování technického zázemí.<br />\n9. Připravit absolventy být adaptabilní na změny trhu práce, naučit je dovednostem, které v budoucnu budou rozhodovat o kvalitě jejich života.</p>\n\n<p><strong>ORGANIZAČNÍ OPATŘENÍ</strong><br />\n1. Využívání on-line prostředí ve výuce, domácí přípravě, v realizaci progresivních forem výuky.<br />\n2. Aktivity na podporu výuky – exkurze, besedy, praxe ve firmách, spolupráce s odborníky z praxe, zahraniční stáž, řešení praktických úkolů z reálu.<br />\n3. Zapojení pedagogů do naplňování školní strategie:<br />\n3.1 Projektová a PR činnost<br />\n- organizace projektů, mimoškolní aktivity, spolupráce s partnery<br />\n- propagace školy, realizace aktivit na podporu šíření povědomí o škole<br />\n3.2 Spolupráce pedagogů, metodických sdružení, profesní vzdělávání<br />\n- aktualizace ŠVP se zohledněním vývoje školy, priorit ve výuce<br />\n- integrace všeobecné ICT do jednotlivých předmětů<br />\n- propojování styčných bodů různých předmětů ve výuce a jejich využívání k lepšímu pochopení širších logických celků a praktické uchopitelnosti pro žáka<br />\n4. Zapojení žáků do života školy<br />\n- žákovské projekty, propagace školy</p>\n\n<p><strong>LIDSKÉ ZDROJE</strong><br />\nPokud má být stanoveného cíle školy dosaženo, je nutností všech učitelů se s ním ztotožnit, realizovat a zkoordinovat požadované aktivity.<br />\nVedení školy má zájem podporovat učitele v jejich žádoucím profesním rozvoji.</p>\n\n<p>Od učitelů je vyžadován respekt k žákům, proces výuky je založen na partnerství, ve kterém žáci projevují přirozený respekt k učiteli a učitelé respektují jedinečnou osobnost žáka.<br />\nOd žáků je důsledně vyžadováno slušné jednání, chování, dodržování termínů, je kladen důraz na zodpovědnost, jsou uplatňovány potřebné nároky.</p>\n\n<p><strong>VÝUKOVÉ METODY za účelem naplnění vize školy</strong>:<br />\n1. Učitel motivuje a zapaluje žáky pro výuku, vzdělávání se.<br />\n2. Výuka je organizována s důrazem na žáka, na jeho individuální potřeby, rozvoj nadání a schopností, dovedností.<br />\n3. Výuka s podporou digitálních technologií.<br />\n4. Rozvoj kreativity při řešení úkolů a problému, samostatných prací.<br />\n5. Důraz na multimediální výstupy žáků a učitelů.<br />\n6. Dovednosti spojené s vyhledáváním informací, tříděním informací, jejich vyhodnocováním, zpracováváním, prezentací, archivováním pro pozdější použití.<br />\n7. Práce s informace v rámci nových forem výuky.<br />\n8. Vhodné zařazování cizího jazyka do výuky vybraných předmětů.<br />\n9. Důraz na individuální a kolektivní prezentaci získaných dovedností a znalostí multimediálními nástroji. Společné hodnocení výstupů.<br />\n10. Rozvoj kritického myšlení a jeho uplatňování ve výukovém procesu a každodenních životních situacích.</p>\n\n<p><strong>ZÁKLADNÍ ZÁSADY KODEXU UČITELE SŠ PrimMat</strong>:<br />\n1. Respektuje vizi zřizovatele.<br />\n2. Volí vzdělávací postupy a formy výuky k naplnění:<br />\na) vybavit žáky klíčovými kompetencemi,<br />\nb) vybavit žáky potřebným odborným vzdělávacím základem,<br />\ne) připravit žáky k celoživotnímu učení, profesnímu uplatnění,<br />\nd) vzdělávací a výchovný proces považuje za rovnocenný,<br />\ne) promýšlí motivaci žáků, je vzorem pro své žáky,<br />\nf) podporuje kreativitu žáků, rozvíjí jejich nadání, schopnosti a dovednosti.<br />\n3. Postupuje diferencovaně, zejména ke slabším žákům a těm, kteří z nejrůznějších<br />\ndůvodů zůstali pozadu. Těmto žákům se věnuje po výuce.<br />\n4. V maximální míře je loajální ke svému zaměstnavateli, jeho pokyny se řídí<br />\na to i v případech, kdy se s nimi zcela neztotožňuje.<br />\n5. Při výchovném a vzdělávacím procesu, dříve, nežli použije jakýkoli postih či sankci,<br />\nčerpá ze všech možností dostupných pozitivních motivačních stimulů.<br />\n6. Pedagogický pracovník přistupuje ke svému povolání profesionálně, ke své práci odpovědně,<br />\ns maximálním nasazením, je plně odpovědný za kvalitu výuky, výchovy, za bezpečnost svěřených žáků.<br />\n6. Pedagogický pracovník se neustále vzdělává.</p>');
INSERT INTO `field_text2` (`pages_id`, `data`) VALUES('1042', '<h2>Proč studovat na PrimMat - Soukromé střední škole podnikatelské, s.r.o.?</h2>\n\n<ul><li>kvalitní vzdělání = naše priorita, vaše správná volba</li>\n	<li>dvě profese = dvojnásobná míra uplatnění na trhu práce, výhoda při dalším výběru studia na VŠ</li>\n	<li>vzdělávací program PrimMat dle aktuálních požadavků a potřeby zaměstnavatelů, spolupráce školy s firmami</li>\n	<li>opakovaná úspěšnost žáků v odborných soutěžích (Olympiáda z účetnictví, Soutěže pro SŠ stavebního zaměření vyhlašované stav. firmami (např. firmou Ytong), opakovaná přední umístění v odborných soutěžích studentských cvičných firem na úrovni regionu, kraje, ČR, i s mezinárodní účastí ...)</li>\n	<li>důraz kladen na kvalitu výuky cizích jazyků (AJ/NJ), příprava žáků na mezinárodní certifikáty</li>\n	<li>informace pro rodiče o prospěchu žáka dostupné přes internet</li>\n	<li>tradice školy v ekonomicko-podnikatelském vzdělávání žáků od roku 1992</li>\n	<li>POHODOVÉ ŠKOLNÍ KLIMA</li>\n	<li>individuální přístup, pomoc pedagogů ... každý žák dostává od nás nadstandardní servis</li>\n	<li>roční školné podle prospěchových kritérií: 0 – 13 000 Kč, tj. pololetně 0 - 6.500,- Kč </li>\n	<li>Motivační prospěchová kritéria dle pololetního prospěchu žáka:\n	<ul><li>prospěch 1,00 - 1,20: 0 Kč</li>\n		<li>prospěch 1,21 - 1,30: 2.000 Kč</li>\n		<li>prospěch 1,31 - 1,40: 3.000 Kč</li>\n		<li>prospěch 1,41 - 1,50: 4.000 Kč</li>\n		<li>prospěch od 1,51 -  6.000 Kč / 6.500 Kč (6.500 Kč - 1. ročník nastupujíci od školního roku 2020/2021) </li>\n	</ul></li>\n	<li>vzhledem k mimořádným opratřením v souvislosti s výskytem epidemie COVID-19 se bude výše školného pro 1. pololetí školního roku 2020/2021 odvíjet od prospěchu za 1. pololetí školního roku 2019/2020</li>\n	<li>praktická spolupráce se soc. partnery (souvislá zahraniční praxe, návrhy žákovských stavebních projektů dle zadání proj. kanceláře, tvorba webových prezentací)</li>\n	<li>PrimMat patří mezi realizátory projektů v rámci Operačního programu Vzdělávání pro konkurenceschopnost, které pomáhají vytvářet zázemí pro efektivní moderní výuku a kvalitní vzdělávání žáků PrimMat</li>\n	<li>Konkurenční výhoda dvouprofesního vzdělání absolventů PrimMat na trhu práce - obecné ekonomické a účetní dovednosti rozšířené o zaměření (cestovní ruch, pozemní stavitelství, informatika) jakož i výhoda při volbě vysokoškolského studia a jeho zvládání.</li>\n	<li>Výborné hodnocení absolventy školy - <strong>3. nejlepší škola v rámci Moravskoslezského kraje</strong>.</li>\n</ul>');

DROP TABLE IF EXISTS `field_thirdtitle`;
CREATE TABLE `field_thirdtitle` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_thirdtitle` (`pages_id`, `data`) VALUES('1041', '<p>Co je u nás <strong>výhodou</strong>?</p>');

DROP TABLE IF EXISTS `field_title`;
CREATE TABLE `field_title` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_title` (`pages_id`, `data`) VALUES('11', 'Templates');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('16', 'Fields');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('22', 'Setup');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('3', 'Pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('6', 'Add Page');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('8', 'Tree');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('9', 'Save Sort');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('10', 'Edit');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('21', 'Modules');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('29', 'Users');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('30', 'Roles');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('2', 'Admin');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('7', 'Trash');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('27', '404 Not Found');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('302', 'Insert Link');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('23', 'Login');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('304', 'Profile');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('301', 'Empty Trash');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('300', 'Search');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('303', 'Insert Image');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('28', 'Access');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('31', 'Permissions');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('32', 'Edit pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('34', 'Delete pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('35', 'Move pages (change parent)');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('36', 'View pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('50', 'Sort child pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('51', 'Change templates on pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('52', 'Administer users');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('53', 'User can update profile/password');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('54', 'Lock or unlock a page');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1', 'Domů');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1006', 'Use Page Lister');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1007', 'Find');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1010', 'Recent');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1011', 'Can see recently edited pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1012', 'Logs');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1013', 'Can view system logs');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1014', 'Can manage system logs');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1015', 'Adminer');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1016', 'Administer languages and static translation files');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1017', 'Languages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1018', 'Default');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1019', 'Language Translator');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1020', 'obory-uvodni-stranka');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1021', 'Zajímá Vás podnikání a služby v cestovním ruchu?');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1022', 'Zajímá Vás podnikání a služby v pozemním stavitelství?');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1023', 'Zajímá Vás podnikání a internetové služby?');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1024', 'Reference na hlavní stránce');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1025', 'Jan Ryszawy');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1026', 'Petra Martynková');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1027', 'Pavla Rážová');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1028', 'Lenka Strausová');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1029', 'Andrea Demjanovičová');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1030', 'aktuality');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1031', 'PrimMat přeje šťastný nový rok 2021');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1032', 'Vánoční dny očima studentů 1. ročníku');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1033', 'důležité upozornění');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1037', 'Online veletrh Středních škol Moravskoslezského kraje');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1040', 'o škole');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1041', 'vize školy');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1042', 'studijní obory');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1043', 'pracovníci školy');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1044', 'evropské projekty');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1045', 'PROGRESIVITA VZDĚLÁVÁNÍ');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1046', 'KOMUNIKACE');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1047', 'SOUNÁLEŽITOST SE ŠKOLOU');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1048', 'PROFESIONALITA');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1049', 'PEDAGOGICKÁ ETIKA');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1050', 'RESPEKTOVÁNÍ PRAVIDEL');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1051', 'Mgr. Eva Zykmundová');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1052', 'Mgr. Ivana Matulová');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1053', 'Mgr., Ing. Lenka Kotásková');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1054', 'Ing. Yvetta Ficková');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1055', 'Mgr. Ondřej Marek');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1056', 'Mgr. Tomáš Franek');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1057', 'Ing. Monika Kočvarová');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1058', 'Mgr. et Mgr. Romana Pinkavová');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1059', 'Mgr. Magda Kanalášová');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1060', 'Ing. Antonín Koblížka');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1061', 'Mgr. Tomáš Kopec');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1062', 'Ing. Michaela Sic');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1063', 'Ing. Přemysl Pilch');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1064', 'Ing. Luděk Chovanec');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1065', 'Marie Komůrková');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1066', 'Pavel Tajduš');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1067', 'Ing. Radek Michalák Ph.D.');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1068', 'Mgr. Jiří Karásek');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1069', 'Mgr. Zdeněk Matula');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1070', 'Andrea Fajkusová');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1071', 'Cestovní ruch');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1072', 'Pozemní stavitelství');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1073', 'Internetové služby');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1074', 'Proč studovat PrimMat');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1075', 'Praktické znalosti');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1076', 'Individuální přístup');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1077', 'Široké uplatnění');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1078', 'Pohodové školní klima');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1079', 'Chci na PrimMat');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1080', 'Přijímací řízení');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1081', 'Příprava na přijímací zkoušky');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1082', 'Pro studenty a rodiče');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1083', 'Dokumenty');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1084', 'Maturita');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1085', 'Poradenské služby');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1086', 'Školní seznam literárních děl k maturitní zkoušce z českého jazyka a literatury');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1087', 'Okruhy pro MZ z anglického jazyka');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1088', 'Maruritní okruhy - Geografie a cestovní ruch');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1089', 'Maturitní okruhy - ISA');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1090', 'Maturitní témata podnikatelství intern. služby');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1091', 'Maturitní témata podnikatelství obchodníci');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1092', 'Maturitní temata z pozemního stavitelství');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1093', 'kontakt');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1094', 'Dodatečné rozhodnutí ŘŠ o nekonání školní přijímací zkoušky');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1095', 'V rámci projektu Erasmus+ se studenti naší školy zaměřují na aktivity cvičné cestovní kanceláře \"CK PrimMat TOURS\"');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1096', 'PrimMat, rodinná atmosféra, individuální přístup, kvalitní výuka. Náročnost a vstřícnost od roku 1992. Videoklip Zde.');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1097', 'Informace k seznamu přijatých uchazečů ke studiu.');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1098', 'Data z formuláře');

DROP TABLE IF EXISTS `field_uplnynazevskoly`;
CREATE TABLE `field_uplnynazevskoly` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_uplnynazevskoly` (`pages_id`, `data`) VALUES('1', 'PrimMat - Soukromá střední škola podnikatelská, s. r. o.');

DROP TABLE IF EXISTS `field_video`;
CREATE TABLE `field_video` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_video` (`pages_id`, `data`) VALUES('1096', 'https://www.youtube.com/watch?v=nQU0_XMVgTg');

DROP TABLE IF EXISTS `fieldgroups`;
CREATE TABLE `fieldgroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) CHARACTER SET ascii NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=112 DEFAULT CHARSET=utf8;

INSERT INTO `fieldgroups` (`id`, `name`) VALUES('2', 'admin');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('3', 'user');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('4', 'role');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('5', 'permission');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('1', 'home');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('83', 'onlyTitle');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('97', 'language');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('98', 'titleAndText');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('99', 'referenceAbsolvent');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('100', 'aktualita');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('101', 'aktuality');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('102', 'duleziteUpozorneni');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('103', 'duleziteUpozorneniPage');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('104', 'oskole');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('105', 'pracovnik');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('110', 'kontakt');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('107', 'obor');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('108', 'whyStudyUsPage');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('109', 'basicPage');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('111', 'formData');

DROP TABLE IF EXISTS `fieldgroups_fields`;
CREATE TABLE `fieldgroups_fields` (
  `fieldgroups_id` int(10) unsigned NOT NULL DEFAULT '0',
  `fields_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sort` int(11) unsigned NOT NULL DEFAULT '0',
  `data` text,
  PRIMARY KEY (`fieldgroups_id`,`fields_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('2', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '4', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('4', '5', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('5', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '97', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '102', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '100', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '99', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '98', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '92', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('2', '2', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '101', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '102', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '103', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '3', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '104', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '120', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '102', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '102', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '109', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('101', '109', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '116', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '118', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('103', '109', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('109', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '108', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '107', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '118', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('101', '102', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '102', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('103', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '102', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '110', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '108', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '112', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '111', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('105', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('105', '102', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('110', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('107', '102', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('101', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('107', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('107', '114', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('108', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('105', '113', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('108', '115', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('109', '116', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('109', '102', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('110', '102', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '109', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('110', '116', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '116', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('110', '117', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('107', '116', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '116', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('105', '116', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('108', '116', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('111', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('111', '92', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('111', '102', '2', NULL);

DROP TABLE IF EXISTS `fields`;
CREATE TABLE `fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(128) CHARACTER SET ascii NOT NULL,
  `name` varchar(250) CHARACTER SET ascii NOT NULL,
  `flags` int(11) NOT NULL DEFAULT '0',
  `label` varchar(250) NOT NULL DEFAULT '',
  `data` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `type` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=121 DEFAULT CHARSET=utf8;

INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('1', 'FieldtypePageTitle', 'title', '13', 'Title', '{\"required\":1,\"textformatters\":[\"TextformatterEntities\"],\"size\":0,\"maxlength\":255}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('2', 'FieldtypeModule', 'process', '25', 'Process', '{\"description\":\"The process that is executed on this page. Since this is mostly used by ProcessWire internally, it is recommended that you don\'t change the value of this unless adding your own pages in the admin.\",\"collapsed\":1,\"required\":1,\"moduleTypes\":[\"Process\"],\"permanent\":1}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('3', 'FieldtypePassword', 'pass', '24', 'Set Password', '{\"collapsed\":1,\"size\":50,\"maxlength\":128}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('5', 'FieldtypePage', 'permissions', '24', 'Permissions', '{\"derefAsPage\":0,\"parent_id\":31,\"labelFieldName\":\"title\",\"inputfield\":\"InputfieldCheckboxes\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('4', 'FieldtypePage', 'roles', '24', 'Roles', '{\"derefAsPage\":0,\"parent_id\":30,\"labelFieldName\":\"name\",\"inputfield\":\"InputfieldCheckboxes\",\"description\":\"User will inherit the permissions assigned to each role. You may assign multiple roles to a user. When accessing a page, the user will only inherit permissions from the roles that are also assigned to the page\'s template.\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('92', 'FieldtypeEmail', 'email', '9', 'E-Mail Address', '{\"size\":70,\"maxlength\":255}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('97', 'FieldtypeModule', 'admin_theme', '8', 'Admin Theme', '{\"moduleTypes\":[\"AdminTheme\"],\"labelField\":\"title\",\"inputfieldClass\":\"InputfieldRadios\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('98', 'FieldtypeFile', 'language_files_site', '24', 'Site Translation Files', '{\"extensions\":\"json csv\",\"maxFiles\":0,\"inputfieldClass\":\"InputfieldFile\",\"unzip\":1,\"description\":\"Use this field for translations specific to your site (like files in \\/site\\/templates\\/ for example).\",\"descriptionRows\":0,\"fileSchema\":6}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('99', 'FieldtypeFile', 'language_files', '24', 'Core Translation Files', '{\"extensions\":\"json csv\",\"maxFiles\":0,\"inputfieldClass\":\"InputfieldFile\",\"unzip\":1,\"description\":\"Use this field for [language packs](http:\\/\\/modules.processwire.com\\/categories\\/language-pack\\/). To delete all files, double-click the trash can for any file, then save.\",\"descriptionRows\":0,\"fileSchema\":6}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('100', 'FieldtypePage', 'language', '24', 'Language', '{\"derefAsPage\":1,\"parent_id\":1017,\"labelFieldName\":\"title\",\"inputfield\":\"InputfieldRadios\",\"required\":1}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('101', 'FieldtypeImage', 'slider', '0', 'obrázky ve slideru na úvodní stránce', '{\"extensions\":\"gif jpg jpeg png\",\"maxFiles\":0,\"outputFormat\":0,\"defaultValuePage\":0,\"useTags\":0,\"inputfieldClass\":\"InputfieldImage\",\"descriptionRows\":1,\"gridMode\":\"grid\",\"focusMode\":\"on\",\"resizeServer\":0,\"clientQuality\":90,\"maxReject\":0,\"dimensionsByAspectRatio\":0,\"fileSchema\":6}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('102', 'FieldtypeTextarea', 'text', '0', 'textové pole', '{\"inputfieldClass\":\"InputfieldCKEditor\",\"contentType\":1,\"collapsed\":0,\"minlength\":0,\"maxlength\":0,\"showCount\":0,\"rows\":5,\"toolbar\":\"Format, Styles, -, Bold, Italic, -, RemoveFormat\\nCkeLinkFiles, BulletedList, -, Blockquote\\nPWLink, Unlink, Anchor\\nPWImage, Table, HorizontalRule, SpecialChar\\nPasteText, PasteFromWord\\nScayt, -, Sourcedialog\",\"inlineMode\":0,\"useACF\":1,\"usePurifier\":1,\"formatTags\":\"p;h1;h2;h3;h4;h5;h6;pre;address\",\"extraPlugins\":[\"pwimage\",\"pwlink\",\"sourcedialog\"],\"removePlugins\":\"image,magicline\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('103', 'FieldtypeText', 'uplnyNazevSkoly', '0', 'Úplný název školy', '{\"collapsed\":0,\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('104', 'FieldtypeText', 'mottoSkoly', '0', 'Motto školy', '{\"collapsed\":0,\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('120', 'FieldtypeURL', 'link', '0', 'odkaz na stránku', '{\"noRelative\":0,\"allowIDN\":0,\"allowQuotes\":0,\"addRoot\":0,\"collapsed\":0,\"minlength\":0,\"maxlength\":1024,\"showCount\":0,\"size\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('107', 'FieldtypeInteger', 'rokAbsolventa', '0', 'rok absolventa', '{\"zeroNotEmpty\":0,\"collapsed\":0,\"inputType\":\"text\",\"size\":10,\"required\":1}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('108', 'FieldtypeImage', 'images', '0', 'obrázky', '{\"extensions\":\"gif jpg jpeg png\",\"maxFiles\":0,\"outputFormat\":0,\"defaultValuePage\":0,\"useTags\":0,\"inputfieldClass\":\"InputfieldImage\",\"descriptionRows\":1,\"gridMode\":\"grid\",\"focusMode\":\"on\",\"resizeServer\":0,\"clientQuality\":90,\"maxReject\":0,\"dimensionsByAspectRatio\":0,\"fileSchema\":6}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('109', 'FieldtypeImage', 'postImage', '0', 'obrázek aktuality', '{\"extensions\":\"gif jpg jpeg png\",\"maxFiles\":1,\"outputFormat\":0,\"defaultValuePage\":0,\"useTags\":0,\"inputfieldClass\":\"InputfieldImage\",\"descriptionRows\":1,\"gridMode\":\"grid\",\"focusMode\":\"on\",\"resizeServer\":0,\"clientQuality\":90,\"maxReject\":0,\"dimensionsByAspectRatio\":0,\"fileSchema\":6,\"collapsed\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('110', 'FieldtypeTextarea', 'text2', '0', 'další informace', '{\"inputfieldClass\":\"InputfieldCKEditor\",\"contentType\":1,\"collapsed\":0,\"minlength\":0,\"maxlength\":0,\"showCount\":0,\"rows\":5,\"toolbar\":\"Format, Styles, -, Bold, Italic, -, RemoveFormat\\nNumberedList, BulletedList, -, Blockquote\\nPWLink, Unlink, Anchor\\nPWImage, Table, HorizontalRule, SpecialChar\\nPasteText, PasteFromWord\\nScayt, -, Sourcedialog\",\"inlineMode\":0,\"useACF\":1,\"usePurifier\":1,\"formatTags\":\"p;h1;h2;h3;h4;h5;h6;pre;address\",\"extraPlugins\":[\"pwimage\",\"pwlink\",\"sourcedialog\"],\"removePlugins\":\"image,magicline\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('111', 'FieldtypeTextarea', 'secondaryTitle', '0', 'podnadpis stránky', '{\"inputfieldClass\":\"InputfieldCKEditor\",\"contentType\":1,\"collapsed\":0,\"minlength\":0,\"maxlength\":0,\"showCount\":0,\"rows\":5}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('112', 'FieldtypeTextarea', 'thirdTitle', '0', 'nadpis sekce', '{\"inputfieldClass\":\"InputfieldCKEditor\",\"contentType\":1,\"collapsed\":0,\"minlength\":0,\"maxlength\":0,\"showCount\":0,\"rows\":5}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('113', 'FieldtypeOptions', 'pracovnik', '0', 'o jakého pracovníka se jedná', '{\"inputfieldClass\":\"InputfieldSelect\",\"collapsed\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('114', 'FieldtypeImage', 'subjectImage', '0', 'obrázek oboru', '{\"extensions\":\"gif jpg jpeg png\",\"maxFiles\":1,\"outputFormat\":0,\"defaultValuePage\":0,\"useTags\":0,\"inputfieldClass\":\"InputfieldImage\",\"descriptionRows\":1,\"gridMode\":\"grid\",\"focusMode\":\"on\",\"resizeServer\":0,\"clientQuality\":90,\"maxReject\":0,\"dimensionsByAspectRatio\":0,\"fileSchema\":6}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('115', 'FieldtypeOptions', 'ikony', '0', 'vyberte ikonu', '{\"inputfieldClass\":\"InputfieldSelect\",\"collapsed\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('116', 'FieldtypeFile', 'files', '0', 'soubory', '{\"extensions\":\"pdf doc docx xls xlsx gif jpg jpeg png odt\",\"maxFiles\":0,\"outputFormat\":0,\"defaultValuePage\":0,\"useTags\":0,\"inputfieldClass\":\"InputfieldFile\",\"descriptionRows\":1,\"fileSchema\":6,\"collapsed\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('117', 'FieldtypeText', 'map', '0', 'google mapa primmatu', '');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('118', 'FieldtypeText', 'video', '0', 'vložte odkaz youtube videa', '{\"collapsed\":0,\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0}');

DROP TABLE IF EXISTS `fieldtype_options`;
CREATE TABLE `fieldtype_options` (
  `fields_id` int(10) unsigned NOT NULL,
  `option_id` int(10) unsigned NOT NULL,
  `title` text,
  `value` varchar(250) DEFAULT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`fields_id`,`option_id`),
  UNIQUE KEY `title` (`title`(250),`fields_id`),
  KEY `value` (`value`,`fields_id`),
  KEY `sort` (`sort`,`fields_id`),
  FULLTEXT KEY `title_value` (`title`,`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`) VALUES('113', '1', 'pedagogicky', '', '0');
INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`) VALUES('113', '2', 'nepedagogicky', '', '1');
INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`) VALUES('115', '1', 'email', '', '0');
INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`) VALUES('115', '2', 'mapaKolik', '', '1');
INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`) VALUES('115', '3', 'medaile', '', '2');
INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`) VALUES('115', '4', 'knihaOtevrena', '', '3');
INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`) VALUES('115', '5', 'knihaZavrena', '', '4');
INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`) VALUES('115', '6', 'zalozkaKnihy', '', '5');
INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`) VALUES('115', '7', 'ozubeneKolecko', '', '6');
INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`) VALUES('115', '8', 'lidi', '', '7');
INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`) VALUES('115', '9', 'mapa', '', '8');
INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`) VALUES('115', '10', 'kreditniKarta', '', '9');
INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`) VALUES('115', '11', 'dollar', '', '10');
INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`) VALUES('115', '12', 'popsanyPapir', '', '11');
INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`) VALUES('115', '13', 'cistyPapir', '', '12');
INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`) VALUES('115', '14', 'darek', '', '13');
INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`) VALUES('115', '15', 'hvezda', '', '14');
INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`) VALUES('115', '16', 'zakFajfka', '', '15');
INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`) VALUES('115', '17', 'zak', '', '16');
INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`) VALUES('115', '18', 'fotak', '', '17');
INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`) VALUES('115', '19', 'planeta', '', '18');
INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`) VALUES('115', '20', 'srdce', '', '19');
INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`) VALUES('115', '21', 'fajfka', '', '20');
INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`) VALUES('115', '22', 'zamknutyZamek', '', '21');
INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`) VALUES('115', '23', 'odemknutyZamek', '', '22');
INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`) VALUES('115', '24', 'bublinaTextu', '', '23');
INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`) VALUES('115', '25', 'navigace', '', '24');
INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`) VALUES('115', '26', 'plus', '', '25');
INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`) VALUES('115', '27', 'stit', '', '26');
INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`) VALUES('115', '28', 'mobil', '', '27');
INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`) VALUES('115', '29', 'palecNahoru', '', '28');
INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`) VALUES('115', '30', 'wifi', '', '29');
INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`) VALUES('115', '31', 'x', '', '30');
INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`) VALUES('115', '32', 'smajlik', '', '31');

DROP TABLE IF EXISTS `modules`;
CREATE TABLE `modules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `class` varchar(128) CHARACTER SET ascii NOT NULL,
  `flags` int(11) NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `class` (`class`)
) ENGINE=MyISAM AUTO_INCREMENT=172 DEFAULT CHARSET=utf8;

INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('1', 'FieldtypeTextarea', '0', '', '2021-03-01 10:11:23');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('2', 'FieldtypeNumber', '0', '', '2021-03-01 10:11:23');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('3', 'FieldtypeText', '0', '', '2021-03-01 10:11:23');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('4', 'FieldtypePage', '0', '', '2021-03-01 10:11:23');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('30', 'InputfieldForm', '0', '', '2021-03-01 10:11:23');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('6', 'FieldtypeFile', '0', '', '2021-03-01 10:11:23');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('7', 'ProcessPageEdit', '1', '', '2021-03-01 10:11:23');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('10', 'ProcessLogin', '0', '', '2021-03-01 10:11:23');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('12', 'ProcessPageList', '0', '{\"pageLabelField\":\"title\",\"paginationLimit\":25,\"limit\":50}', '2021-03-01 10:11:23');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('121', 'ProcessPageEditLink', '1', '', '2021-03-01 10:11:23');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('14', 'ProcessPageSort', '0', '', '2021-03-01 10:11:23');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('15', 'InputfieldPageListSelect', '0', '', '2021-03-01 10:11:23');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('117', 'JqueryUI', '1', '', '2021-03-01 10:11:23');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('17', 'ProcessPageAdd', '0', '', '2021-03-01 10:11:23');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('125', 'SessionLoginThrottle', '11', '', '2021-03-01 10:11:23');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('122', 'InputfieldPassword', '0', '', '2021-03-01 10:11:23');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('25', 'InputfieldAsmSelect', '0', '', '2021-03-01 10:11:23');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('116', 'JqueryCore', '1', '', '2021-03-01 10:11:23');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('27', 'FieldtypeModule', '0', '', '2021-03-01 10:11:23');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('28', 'FieldtypeDatetime', '0', '', '2021-03-01 10:11:23');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('29', 'FieldtypeEmail', '0', '', '2021-03-01 10:11:23');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('108', 'InputfieldURL', '0', '', '2021-03-01 10:11:23');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('32', 'InputfieldSubmit', '0', '', '2021-03-01 10:11:23');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('33', 'InputfieldWrapper', '0', '', '2021-03-01 10:11:23');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('34', 'InputfieldText', '0', '', '2021-03-01 10:11:23');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('35', 'InputfieldTextarea', '0', '', '2021-03-01 10:11:23');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('36', 'InputfieldSelect', '0', '', '2021-03-01 10:11:23');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('37', 'InputfieldCheckbox', '0', '', '2021-03-01 10:11:23');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('38', 'InputfieldCheckboxes', '0', '', '2021-03-01 10:11:23');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('39', 'InputfieldRadios', '0', '', '2021-03-01 10:11:23');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('40', 'InputfieldHidden', '0', '', '2021-03-01 10:11:23');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('41', 'InputfieldName', '0', '', '2021-03-01 10:11:23');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('43', 'InputfieldSelectMultiple', '0', '', '2021-03-01 10:11:23');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('45', 'JqueryWireTabs', '0', '', '2021-03-01 10:11:23');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('46', 'ProcessPage', '0', '', '2021-03-01 10:11:23');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('47', 'ProcessTemplate', '0', '', '2021-03-01 10:11:23');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('48', 'ProcessField', '32', '', '2021-03-01 10:11:23');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('50', 'ProcessModule', '0', '', '2021-03-01 10:11:23');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('114', 'PagePermissions', '3', '', '2021-03-01 10:11:23');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('97', 'FieldtypeCheckbox', '1', '', '2021-03-01 10:11:23');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('115', 'PageRender', '3', '{\"clearCache\":1}', '2021-03-01 10:11:23');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('55', 'InputfieldFile', '0', '', '2021-03-01 10:11:23');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('56', 'InputfieldImage', '0', '', '2021-03-01 10:11:23');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('57', 'FieldtypeImage', '0', '', '2021-03-01 10:11:23');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('60', 'InputfieldPage', '0', '{\"inputfieldClasses\":[\"InputfieldSelect\",\"InputfieldSelectMultiple\",\"InputfieldCheckboxes\",\"InputfieldRadios\",\"InputfieldAsmSelect\",\"InputfieldPageListSelect\",\"InputfieldPageListSelectMultiple\",\"InputfieldPageAutocomplete\"]}', '2021-03-01 10:11:23');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('61', 'TextformatterEntities', '0', '', '2021-03-01 10:11:23');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('66', 'ProcessUser', '0', '{\"showFields\":[\"name\",\"email\",\"roles\"]}', '2021-03-01 10:11:23');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('67', 'MarkupAdminDataTable', '0', '', '2021-03-01 10:11:23');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('68', 'ProcessRole', '0', '{\"showFields\":[\"name\"]}', '2021-03-01 10:11:23');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('76', 'ProcessList', '0', '', '2021-03-01 10:11:23');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('78', 'InputfieldFieldset', '0', '', '2021-03-01 10:11:23');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('79', 'InputfieldMarkup', '0', '', '2021-03-01 10:11:23');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('80', 'InputfieldEmail', '0', '', '2021-03-01 10:11:23');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('89', 'FieldtypeFloat', '1', '', '2021-03-01 10:11:23');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('83', 'ProcessPageView', '0', '', '2021-03-01 10:11:23');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('84', 'FieldtypeInteger', '0', '', '2021-03-01 10:11:23');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('85', 'InputfieldInteger', '0', '', '2021-03-01 10:11:23');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('86', 'InputfieldPageName', '0', '', '2021-03-01 10:11:23');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('87', 'ProcessHome', '0', '', '2021-03-01 10:11:23');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('90', 'InputfieldFloat', '0', '', '2021-03-01 10:11:23');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('94', 'InputfieldDatetime', '0', '', '2021-03-01 10:11:23');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('98', 'MarkupPagerNav', '0', '', '2021-03-01 10:11:23');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('129', 'ProcessPageEditImageSelect', '1', '', '2021-03-01 10:11:23');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('103', 'JqueryTableSorter', '1', '', '2021-03-01 10:11:23');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('104', 'ProcessPageSearch', '1', '{\"searchFields\":\"title\",\"displayField\":\"title path\"}', '2021-03-01 10:11:23');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('105', 'FieldtypeFieldsetOpen', '1', '', '2021-03-01 10:11:23');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('106', 'FieldtypeFieldsetClose', '1', '', '2021-03-01 10:11:23');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('107', 'FieldtypeFieldsetTabOpen', '1', '', '2021-03-01 10:11:23');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('109', 'ProcessPageTrash', '1', '', '2021-03-01 10:11:23');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('111', 'FieldtypePageTitle', '1', '', '2021-03-01 10:11:23');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('112', 'InputfieldPageTitle', '0', '', '2021-03-01 10:11:23');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('113', 'MarkupPageArray', '3', '', '2021-03-01 10:11:23');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('131', 'InputfieldButton', '0', '', '2021-03-01 10:11:23');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('133', 'FieldtypePassword', '1', '', '2021-03-01 10:11:23');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('134', 'ProcessPageType', '33', '{\"showFields\":[]}', '2021-03-01 10:11:23');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('135', 'FieldtypeURL', '1', '', '2021-03-01 10:11:23');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('136', 'ProcessPermission', '1', '{\"showFields\":[\"name\",\"title\"]}', '2021-03-01 10:11:23');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('137', 'InputfieldPageListSelectMultiple', '0', '', '2021-03-01 10:11:23');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('138', 'ProcessProfile', '1', '{\"profileFields\":[\"pass\",\"email\",\"admin_theme\",\"language\"]}', '2021-03-01 10:11:23');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('139', 'SystemUpdater', '1', '{\"systemVersion\":17,\"coreVersion\":\"3.0.148\"}', '2021-03-01 10:11:23');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('148', 'AdminThemeDefault', '10', '{\"colors\":\"classic\"}', '2021-03-01 10:11:23');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('149', 'InputfieldSelector', '42', '', '2021-03-01 10:11:23');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('150', 'ProcessPageLister', '32', '', '2021-03-01 10:11:23');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('151', 'JqueryMagnific', '1', '', '2021-03-01 10:11:23');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('155', 'InputfieldCKEditor', '0', '', '2021-03-01 10:11:23');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('156', 'MarkupHTMLPurifier', '0', '', '2021-03-01 10:11:23');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('159', 'ProcessRecentPages', '1', '', '2021-03-01 10:11:36');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('160', 'AdminThemeUikit', '10', '', '2021-03-01 10:11:37');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('161', 'ProcessLogger', '1', '', '2021-03-01 10:11:43');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('162', 'InputfieldIcon', '0', '', '2021-03-01 10:11:43');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('163', 'TracyDebugger', '3', '{\"enabled\":1,\"outputMode\":\"detect\",\"superuserForceDevelopment\":\"\",\"guestForceDevelopmentLocal\":\"\",\"ipAddress\":\"\",\"restrictSuperusers\":\"\",\"strictMode\":\"\",\"strictModeAjax\":\"\",\"forceScream\":\"\",\"showLocation\":[\"Tracy\\\\Dumper::LOCATION_SOURCE\",\"Tracy\\\\Dumper::LOCATION_LINK\",\"Tracy\\\\Dumper::LOCATION_CLASS\"],\"debugInfo\":1,\"maxDepth\":3,\"maxLength\":150,\"collapse\":14,\"collapse_count\":7,\"maxAjaxRows\":3,\"reservedMemorySize\":500000,\"showFireLogger\":1,\"referencePageEdited\":1,\"linksNewTab\":\"\",\"logSeverity\":[],\"fromEmail\":\"\",\"email\":\"\",\"clearEmailSent\":\"\",\"showDebugBar\":[\"frontend\",\"backend\"],\"hideDebugBarModals\":[],\"hideDebugBarFrontendTemplates\":[],\"hideDebugBarBackendTemplates\":[],\"hideDebugBar\":\"\",\"showPanelLabels\":\"\",\"barPosition\":\"bottom-right\",\"panelZindex\":100,\"frontendPanels\":[\"processwireInfo\",\"requestInfo\",\"processwireLogs\",\"tracyLogs\",\"methodsInfo\",\"debugMode\",\"console\",\"panelSelector\",\"tracyToggler\"],\"backendPanels\":[\"processwireInfo\",\"requestInfo\",\"processwireLogs\",\"tracyLogs\",\"methodsInfo\",\"debugMode\",\"console\",\"panelSelector\",\"tracyToggler\"],\"restrictedUserDisabledPanels\":[],\"nonToggleablePanels\":[],\"panelSelectorTracyTogglerButton\":1,\"editor\":\"vscode:\\/\\/file\\/%file:%line\",\"localRootPath\":\"\",\"useOnlineEditor\":[],\"onlineEditor\":\"tracy\",\"forceEditorLinksToTracy\":1,\"snippetsPath\":\"templates\",\"consoleBackupLimit\":25,\"consoleCodePrefix\":\"\",\"fileEditorBaseDirectory\":\"templates\",\"fileEditorAllowedExtensions\":\"php, module, js, css, txt, log, htaccess\",\"fileEditorExcludedDirs\":\"site\\/assets\",\"aceTheme\":\"tomorrow_night_bright\",\"codeFontSize\":14,\"codeLineHeight\":24,\"codeShowInvisibles\":\"1\",\"codeTabSize\":4,\"codeUseSoftTabs\":\"1\",\"pwAutocompletions\":1,\"codeShowDescription\":1,\"customSnippetsUrl\":\"\",\"processwireInfoPanelSections\":[\"versionsList\",\"adminLinks\",\"documentationLinks\",\"gotoId\",\"processWireWebsiteSearch\"],\"customPWInfoPanelLinks\":[\"\\/processwire\\/setup\\/template\\/\",\"\\/processwire\\/setup\\/field\\/\",\"\\/processwire\\/setup\\/\",\"\\/processwire\\/module\\/\",\"\\/processwire\\/access\\/users\\/\",\"\\/processwire\\/access\\/roles\\/\",\"\\/processwire\\/access\\/permissions\\/\",\"\\/processwire\\/profile\\/\"],\"showPWInfoPanelIconLabels\":1,\"pWInfoPanelLinksNewTab\":\"\",\"apiExplorerShowDescription\":1,\"apiExplorerToggleDocComment\":\"\",\"apiExplorerModuleClasses\":[],\"captainHookShowDescription\":1,\"captainHookToggleDocComment\":\"\",\"requestInfoPanelSections\":[\"moduleSettings\",\"templateSettings\",\"fieldSettings\",\"pageInfo\",\"pagePermissions\",\"languageInfo\",\"templateInfo\",\"fieldsListValues\",\"serverRequest\",\"inputGet\",\"inputPost\",\"inputCookie\",\"session\",\"editLinks\"],\"imagesInFieldListValues\":\"\",\"debugModePanelSections\":[\"pagesLoaded\",\"modulesLoaded\",\"hooks\",\"databaseQueries\",\"selectorQueries\",\"timers\",\"user\",\"cache\",\"autoload\"],\"alwaysShowDebugTools\":1,\"diagnosticsPanelSections\":[\"filesystemFolders\"],\"dumpPanelTabs\":[\"debugInfo\",\"fullObject\"],\"validatorUrl\":\"https:\\/\\/html5.validator.nu\\/\",\"todoIgnoreDirs\":\"git, svn, images, img, errors, sass-cache, node_modules\",\"todoAllowedExtensions\":\"php, module, inc, txt, latte, html, htm, md, css, scss, less, js\",\"todoScanModules\":\"\",\"todoScanAssets\":\"\",\"numLogEntries\":10,\"variablesShowPwObjects\":\"\",\"customPhpCode\":\"\",\"userSwitcherSelector\":\"\",\"userSwitcherRestricted\":[],\"userSwitcherIncluded\":[],\"requestMethods\":[\"GET\",\"POST\",\"PUT\",\"DELETE\",\"PATCH\"],\"requestLoggerMaxLogs\":10,\"requestLoggerReturnType\":\"array\",\"styleWhere\":[\"backend\",\"frontend\"],\"styleAdminColors\":\"local|#FF9933\\n*.local|#FF9933\\ndev.*|#FF9933\\n*.test|#FF9933\\nstaging.*|#8b0066\\n*.com|#009900\",\"styleAdminType\":[\"favicon\"],\"styleAdminElements\":\"body::before {\\n\\tcontent: \\\"[type]\\\";\\n\\tbackground: [color];\\n\\tposition: fixed;\\n\\tleft: 0;\\n\\tbottom: 100%;\\n\\tcolor: #ffffff;\\n\\twidth: 100vh;\\n\\tpadding: 0;\\n\\ttext-align: center;\\n\\tfont-weight: 600;\\n\\ttext-transform: uppercase;\\n\\ttransform: rotate(90deg);\\n\\ttransform-origin: bottom left;\\n\\tz-index: 999999;\\n\\tfont-family: sans-serif;\\n\\tfont-size: 11px;\\n\\theight: 13px;\\n\\tline-height: 13px;\\npointer-events: none;\\n}\",\"userDevTemplate\":\"\",\"userDevTemplateSuffix\":\"dev\",\"showUserBar\":\"\",\"showUserBarTracyUsers\":null,\"userBarFeatures\":[\"admin\",\"editPage\"],\"userBarCustomFeatures\":\"\",\"userBarTopBottom\":\"bottom\",\"userBarLeftRight\":\"left\",\"userBarBackgroundColor\":null,\"userBarBackgroundOpacity\":\"1\",\"userBarIconColor\":\"#666666\",\"enableShortcutMethods\":1,\"enabledShortcutMethods\":[\"addBreakpoint\",\"bp\",\"barDump\",\"bd\",\"barEcho\",\"be\",\"barDumpBig\",\"bdb\",\"debugAll\",\"da\",\"dump\",\"d\",\"dumpBig\",\"db\",\"fireLog\",\"fl\",\"l\",\"templateVars\",\"tv\",\"timer\",\"t\"],\"uninstall\":\"\",\"submit_save_module\":\"Submit\",\"apiDataVersion\":\"3.0.148\"}', '2021-03-01 10:50:21');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('164', 'ProcessTracyAdminer', '1', '', '2021-03-01 10:50:21');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('165', 'LanguageSupport', '35', '{\"languagesPageID\":1017,\"defaultLanguagePageID\":1018,\"otherLanguagePageIDs\":[],\"languageTranslatorPageID\":1019,\"uninstall\":\"\",\"submit_save_module\":\"Submit\"}', '2021-03-01 10:52:57');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('166', 'ProcessLanguage', '1', '', '2021-03-01 10:52:57');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('167', 'ProcessLanguageTranslator', '1', '', '2021-03-01 10:52:58');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('168', 'FieldtypeOptions', '1', '', '2021-03-10 16:48:25');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('169', 'CkeLinkFiles', '10', '{\"include_repeaters\":1,\"uninstall\":\"\",\"submit_save_module\":\"Odeslat\"}', '2021-03-16 14:53:33');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('170', 'InputfieldPageAutocomplete', '0', '', '2021-03-16 15:01:27');

DROP TABLE IF EXISTS `pages`;
CREATE TABLE `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) unsigned NOT NULL DEFAULT '0',
  `templates_id` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(128) CHARACTER SET ascii NOT NULL,
  `status` int(10) unsigned NOT NULL DEFAULT '1',
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_users_id` int(10) unsigned NOT NULL DEFAULT '2',
  `created` timestamp NOT NULL DEFAULT '2015-12-18 06:09:00',
  `created_users_id` int(10) unsigned NOT NULL DEFAULT '2',
  `published` datetime DEFAULT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_parent_id` (`name`,`parent_id`),
  KEY `parent_id` (`parent_id`),
  KEY `templates_id` (`templates_id`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  KEY `status` (`status`),
  KEY `published` (`published`)
) ENGINE=MyISAM AUTO_INCREMENT=1105 DEFAULT CHARSET=utf8;

INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1', '0', '1', 'home', '9', '2021-03-03 12:05:49', '41', '2021-03-01 10:11:23', '2', '2021-03-01 10:11:23', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('2', '1', '2', 'processwire', '1035', '2021-03-01 10:11:38', '40', '2021-03-01 10:11:23', '2', '2021-03-01 10:11:23', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('3', '2', '2', 'page', '21', '2021-03-01 10:11:23', '41', '2021-03-01 10:11:23', '2', '2021-03-01 10:11:23', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('6', '3', '2', 'add', '21', '2021-03-01 10:11:48', '40', '2021-03-01 10:11:23', '2', '2021-03-01 10:11:23', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('7', '1', '2', 'trash', '1039', '2021-03-01 10:11:23', '41', '2021-03-01 10:11:23', '2', '2021-03-01 10:11:23', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('8', '3', '2', 'list', '21', '2021-03-01 10:11:53', '41', '2021-03-01 10:11:23', '2', '2021-03-01 10:11:23', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('9', '3', '2', 'sort', '1047', '2021-03-01 10:11:23', '41', '2021-03-01 10:11:23', '2', '2021-03-01 10:11:23', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('10', '3', '2', 'edit', '1045', '2021-03-01 10:11:50', '41', '2021-03-01 10:11:23', '2', '2021-03-01 10:11:23', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('11', '22', '2', 'template', '21', '2021-03-01 10:11:23', '41', '2021-03-01 10:11:23', '2', '2021-03-01 10:11:23', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('16', '22', '2', 'field', '21', '2021-03-01 10:11:23', '41', '2021-03-01 10:11:23', '2', '2021-03-01 10:11:23', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('21', '2', '2', 'module', '21', '2021-03-01 10:11:23', '41', '2021-03-01 10:11:23', '2', '2021-03-01 10:11:23', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('22', '2', '2', 'setup', '21', '2021-03-01 10:11:23', '41', '2021-03-01 10:11:23', '2', '2021-03-01 10:11:23', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('23', '2', '2', 'login', '1035', '2021-03-01 10:11:23', '41', '2021-03-01 10:11:23', '2', '2021-03-01 10:11:23', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('27', '1', '29', 'http404', '1035', '2021-03-01 10:11:23', '41', '2021-03-01 10:11:23', '3', '2021-03-01 10:11:23', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('28', '2', '2', 'access', '13', '2021-03-01 10:11:23', '41', '2021-03-01 10:11:23', '2', '2021-03-01 10:11:23', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('29', '28', '2', 'users', '29', '2021-03-01 10:11:23', '41', '2021-03-01 10:11:23', '2', '2021-03-01 10:11:23', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('30', '28', '2', 'roles', '29', '2021-03-01 10:11:23', '41', '2021-03-01 10:11:23', '2', '2021-03-01 10:11:23', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('31', '28', '2', 'permissions', '29', '2021-03-01 10:11:23', '41', '2021-03-01 10:11:23', '2', '2021-03-01 10:11:23', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('32', '31', '5', 'page-edit', '25', '2021-03-01 10:11:23', '41', '2021-03-01 10:11:23', '2', '2021-03-01 10:11:23', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('34', '31', '5', 'page-delete', '25', '2021-03-01 10:11:23', '41', '2021-03-01 10:11:23', '2', '2021-03-01 10:11:23', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('35', '31', '5', 'page-move', '25', '2021-03-01 10:11:23', '41', '2021-03-01 10:11:23', '2', '2021-03-01 10:11:23', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('36', '31', '5', 'page-view', '25', '2021-03-01 10:11:23', '41', '2021-03-01 10:11:23', '2', '2021-03-01 10:11:23', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('37', '30', '4', 'guest', '25', '2021-03-01 10:11:23', '41', '2021-03-01 10:11:23', '2', '2021-03-01 10:11:23', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('38', '30', '4', 'superuser', '25', '2021-03-01 10:11:23', '41', '2021-03-01 10:11:23', '2', '2021-03-01 10:11:23', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('41', '29', '3', 'manager', '1', '2021-03-01 10:52:58', '41', '2021-03-01 10:11:23', '2', '2021-03-01 10:11:23', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('40', '29', '3', 'guest', '25', '2021-03-01 10:52:58', '41', '2021-03-01 10:11:23', '2', '2021-03-01 10:11:23', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('50', '31', '5', 'page-sort', '25', '2021-03-01 10:11:23', '41', '2021-03-01 10:11:23', '41', '2021-03-01 10:11:23', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('51', '31', '5', 'page-template', '25', '2021-03-01 10:11:23', '41', '2021-03-01 10:11:23', '41', '2021-03-01 10:11:23', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('52', '31', '5', 'user-admin', '25', '2021-03-01 10:11:23', '41', '2021-03-01 10:11:23', '41', '2021-03-01 10:11:23', '10');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('53', '31', '5', 'profile-edit', '1', '2021-03-01 10:11:23', '41', '2021-03-01 10:11:23', '41', '2021-03-01 10:11:23', '13');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('54', '31', '5', 'page-lock', '1', '2021-03-01 10:11:23', '41', '2021-03-01 10:11:23', '41', '2021-03-01 10:11:23', '8');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('300', '3', '2', 'search', '1045', '2021-03-01 10:11:23', '41', '2021-03-01 10:11:23', '2', '2021-03-01 10:11:23', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('301', '3', '2', 'trash', '1047', '2021-03-01 10:11:23', '41', '2021-03-01 10:11:23', '2', '2021-03-01 10:11:23', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('302', '3', '2', 'link', '1041', '2021-03-01 10:11:23', '41', '2021-03-01 10:11:23', '2', '2021-03-01 10:11:23', '7');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('303', '3', '2', 'image', '1041', '2021-03-01 10:11:23', '41', '2021-03-01 10:11:23', '2', '2021-03-01 10:11:23', '8');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('304', '2', '2', 'profile', '1025', '2021-03-01 10:11:23', '41', '2021-03-01 10:11:23', '41', '2021-03-01 10:11:23', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1006', '31', '5', 'page-lister', '1', '2021-03-01 10:11:23', '40', '2021-03-01 10:11:23', '40', '2021-03-01 10:11:23', '9');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1007', '3', '2', 'lister', '1', '2021-03-01 10:11:23', '40', '2021-03-01 10:11:23', '40', '2021-03-01 10:11:23', '9');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1010', '3', '2', 'recent-pages', '1', '2021-03-01 10:11:36', '40', '2021-03-01 10:11:36', '40', '2021-03-01 10:11:36', '10');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1011', '31', '5', 'page-edit-recent', '1', '2021-03-01 10:11:36', '40', '2021-03-01 10:11:36', '40', '2021-03-01 10:11:36', '10');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1012', '22', '2', 'logs', '1', '2021-03-01 10:11:43', '40', '2021-03-01 10:11:43', '40', '2021-03-01 10:11:43', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1013', '31', '5', 'logs-view', '1', '2021-03-01 10:11:43', '40', '2021-03-01 10:11:43', '40', '2021-03-01 10:11:43', '11');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1014', '31', '5', 'logs-edit', '1', '2021-03-01 10:11:43', '40', '2021-03-01 10:11:43', '40', '2021-03-01 10:11:43', '12');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1015', '22', '2', 'adminer', '1', '2021-03-01 10:50:21', '41', '2021-03-01 10:50:21', '41', '2021-03-01 10:50:21', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1016', '31', '5', 'lang-edit', '1', '2021-03-01 10:52:57', '41', '2021-03-01 10:52:57', '41', '2021-03-01 10:52:57', '13');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1017', '22', '2', 'languages', '16', '2021-03-01 10:52:58', '41', '2021-03-01 10:52:58', '41', '2021-03-01 10:52:58', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1018', '1017', '43', 'default', '16', '2021-03-01 10:55:44', '41', '2021-03-01 10:52:58', '41', '2021-03-01 10:52:58', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1019', '22', '2', 'language-translator', '1040', '2021-03-01 10:52:58', '41', '2021-03-01 10:52:58', '41', '2021-03-01 10:52:58', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1020', '1', '29', 'obory-uvodni-stranka', '1025', '2021-03-01 11:16:22', '41', '2021-03-01 11:15:40', '41', '2021-03-01 11:16:22', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1021', '1020', '44', 'zajima-vas-podnikani-a-sluzby-v-cestovnim-ruchu', '1', '2021-03-28 17:56:41', '41', '2021-03-01 11:27:33', '41', '2021-03-01 11:27:45', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1022', '1020', '44', 'zajima-vas-podnikani-a-sluzby-v-pozemnim-stavitelstvi', '1', '2021-03-28 17:56:53', '41', '2021-03-01 11:29:13', '41', '2021-03-01 11:29:21', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1023', '1020', '44', 'zajima-vas-podnikani-a-internetove-sluzby', '1', '2021-03-28 17:58:57', '41', '2021-03-01 11:29:36', '41', '2021-03-01 11:29:43', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1024', '1', '29', 'reference', '1025', '2021-03-03 16:19:36', '41', '2021-03-03 10:39:27', '41', '2021-03-03 10:42:24', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1025', '1024', '45', 'jan-ryszawy', '1', '2021-03-03 10:43:34', '41', '2021-03-03 10:43:06', '41', '2021-03-03 10:43:18', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1026', '1024', '45', 'petra-martynkova', '1', '2021-03-03 10:46:35', '41', '2021-03-03 10:45:11', '41', '2021-03-03 10:45:23', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1027', '1024', '45', 'pavla-razova', '1', '2021-03-03 10:47:05', '41', '2021-03-03 10:46:48', '41', '2021-03-03 10:46:59', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1028', '1024', '45', 'lenka-strausova', '1', '2021-03-03 10:47:48', '41', '2021-03-03 10:47:33', '41', '2021-03-03 10:47:48', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1029', '1024', '45', 'andrea-demjanovicova', '1', '2021-03-03 10:49:12', '41', '2021-03-03 10:48:54', '41', '2021-03-03 10:49:05', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1030', '1', '47', 'aktuality', '1', '2021-03-07 11:33:18', '41', '2021-03-03 15:42:14', '41', '2021-03-03 15:43:02', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1031', '1030', '46', 'primmat-preje-stastny-novy-rok-2021', '1', '2021-03-05 12:49:38', '41', '2021-03-05 11:43:32', '41', '2021-03-05 11:45:11', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1032', '1030', '46', 'vanocni-dny-ocima-studentu-1-rocniku', '1', '2021-03-05 11:47:11', '41', '2021-03-05 11:46:20', '41', '2021-03-05 11:47:11', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1033', '1', '49', 'dulezite-upozorneni', '1025', '2021-03-07 11:34:04', '41', '2021-03-05 11:47:54', '41', '2021-03-05 11:48:02', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1037', '1033', '48', 'online-veletrh-strednich-skol-moravskoslezskeho-kraje', '1', '2021-03-05 12:11:26', '41', '2021-03-05 12:10:12', '41', '2021-03-05 12:11:17', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1040', '1', '50', 'o-skole', '1', '2021-03-16 14:15:20', '41', '2021-03-10 11:49:59', '41', '2021-03-10 11:51:11', '7');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1041', '1040', '50', 'vize-skoly', '1', '2021-03-10 15:39:35', '41', '2021-03-10 11:53:41', '41', '2021-03-10 11:53:46', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1042', '1040', '50', 'studijni-obory', '1', '2021-03-12 17:48:07', '41', '2021-03-10 11:54:08', '41', '2021-03-10 11:54:11', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1043', '1040', '50', 'pracovnici-skoly', '1', '2021-03-10 17:49:19', '41', '2021-03-10 11:54:33', '41', '2021-03-10 11:54:37', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1044', '1040', '55', 'evropske-projekty', '1', '2021-03-16 15:22:30', '41', '2021-03-10 11:55:08', '41', '2021-03-10 11:55:12', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1045', '1041', '44', 'progresivita-vzdelavani', '1', '2021-03-10 15:23:56', '41', '2021-03-10 15:21:09', '41', '2021-03-10 15:21:28', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1046', '1041', '44', 'komunikace', '1', '2021-03-10 15:24:22', '41', '2021-03-10 15:24:15', '41', '2021-03-10 15:24:22', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1047', '1041', '44', 'sounalezitost-se-skolou', '1', '2021-03-10 15:24:51', '41', '2021-03-10 15:24:35', '41', '2021-03-10 15:24:45', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1048', '1041', '44', 'profesionalita', '1', '2021-03-10 15:25:15', '41', '2021-03-10 15:25:10', '41', '2021-03-10 15:25:15', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1049', '1041', '44', 'pedagogicka-etika', '1', '2021-03-10 15:25:42', '41', '2021-03-10 15:25:35', '41', '2021-03-10 15:25:42', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1050', '1041', '44', 'respektovani-pravidel', '1', '2021-03-10 15:26:22', '41', '2021-03-10 15:25:55', '41', '2021-03-10 15:26:01', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1051', '1043', '51', 'mgr-eva-zykmundova', '1', '2021-03-10 16:52:21', '41', '2021-03-10 16:51:20', '41', '2021-03-10 16:51:59', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1052', '1043', '51', 'mgr-ivana-matulova', '1', '2021-03-10 16:56:35', '41', '2021-03-10 16:52:49', '41', '2021-03-10 16:53:27', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1053', '1043', '51', 'mgr-ing-lenka-kotaskova', '1', '2021-03-10 18:23:29', '41', '2021-03-10 18:23:19', '41', '2021-03-10 18:23:29', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1054', '1043', '51', 'ing-yvetta-fickova', '1', '2021-03-10 18:23:57', '41', '2021-03-10 18:23:45', '41', '2021-03-10 18:23:57', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1055', '1043', '51', 'mgr-ondrej-marek', '1', '2021-03-10 18:24:25', '41', '2021-03-10 18:24:15', '41', '2021-03-10 18:24:25', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1056', '1043', '51', 'mgr-tomas-franek', '1', '2021-03-10 18:24:46', '41', '2021-03-10 18:24:38', '41', '2021-03-10 18:24:46', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1057', '1043', '51', 'ing-monika-kocvarova', '1', '2021-03-10 18:25:16', '41', '2021-03-10 18:25:09', '41', '2021-03-10 18:25:16', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1058', '1043', '51', 'mgr-et-mgr-romana-pinkavova', '1', '2021-03-10 18:25:41', '41', '2021-03-10 18:25:33', '41', '2021-03-10 18:25:41', '7');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1059', '1043', '51', 'mgr-magda-kanalasova', '1', '2021-03-10 18:26:10', '41', '2021-03-10 18:26:03', '41', '2021-03-10 18:26:10', '8');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1060', '1043', '51', 'ing-antonin-koblizka', '1', '2021-03-10 18:26:31', '41', '2021-03-10 18:26:24', '41', '2021-03-10 18:26:31', '9');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1061', '1043', '51', 'mgr-tomas-kopec', '1', '2021-03-10 18:26:56', '41', '2021-03-10 18:26:46', '41', '2021-03-10 18:26:56', '10');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1062', '1043', '51', 'ing-michaela-sic', '1', '2021-03-10 18:27:14', '41', '2021-03-10 18:27:07', '41', '2021-03-10 18:27:14', '11');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1063', '1043', '51', 'ing-premysl-pilch', '1', '2021-03-10 18:27:39', '41', '2021-03-10 18:27:31', '41', '2021-03-10 18:27:39', '12');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1064', '1043', '51', 'ing-ludek-chovanec', '1', '2021-03-10 18:28:00', '41', '2021-03-10 18:27:51', '41', '2021-03-10 18:28:00', '13');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1065', '1043', '51', 'marie-komurkova', '1', '2021-03-10 18:28:23', '41', '2021-03-10 18:28:14', '41', '2021-03-10 18:28:23', '14');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1066', '1043', '51', 'pavel-tajdus', '1', '2021-03-10 18:28:40', '41', '2021-03-10 18:28:34', '41', '2021-03-10 18:28:40', '15');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1067', '1043', '51', 'ing-radek-michalak-ph.d', '1', '2021-03-10 18:29:00', '41', '2021-03-10 18:28:52', '41', '2021-03-10 18:29:00', '16');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1068', '1043', '51', 'mgr-jiri-karasek', '1', '2021-03-10 18:29:23', '41', '2021-03-10 18:29:15', '41', '2021-03-10 18:29:23', '17');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1069', '1043', '51', 'mgr-zdenek-matula', '1', '2021-03-10 18:31:13', '41', '2021-03-10 18:31:04', '41', '2021-03-10 18:31:13', '18');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1070', '1043', '51', 'andrea-fajkusova', '1', '2021-03-10 18:31:33', '41', '2021-03-10 18:31:26', '41', '2021-03-10 18:31:33', '19');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1071', '1042', '53', 'cestovni-ruch', '1', '2021-03-16 14:08:09', '41', '2021-03-12 15:42:48', '41', '2021-03-12 15:44:05', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1072', '1042', '53', 'pozemni-stavitelstvi', '1', '2021-03-16 14:05:21', '41', '2021-03-12 15:52:49', '41', '2021-03-12 15:53:38', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1073', '1042', '53', 'internetove-sluzby', '1', '2021-03-29 15:18:43', '41', '2021-03-12 15:54:26', '41', '2021-03-12 15:55:38', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1074', '1', '44', 'whystudyus', '1025', '2021-03-23 16:11:31', '41', '2021-03-12 16:01:11', '41', '2021-03-12 16:01:23', '8');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1075', '1074', '54', 'prakticke-znalosti', '1', '2021-03-12 17:05:38', '41', '2021-03-12 17:05:26', '41', '2021-03-12 17:05:38', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1076', '1074', '54', 'individualni-pristup', '1', '2021-03-12 17:06:27', '41', '2021-03-12 17:05:57', '41', '2021-03-12 17:06:27', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1077', '1074', '54', 'siroke-uplatneni', '1', '2021-03-12 17:07:09', '41', '2021-03-12 17:06:51', '41', '2021-03-12 17:07:06', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1078', '1074', '54', 'pohodove-skolni-klima', '1', '2021-03-12 17:08:00', '41', '2021-03-12 17:07:43', '41', '2021-03-12 17:07:49', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1079', '1', '55', 'chci-na-primmat', '1', '2021-03-16 17:09:17', '41', '2021-03-16 16:54:05', '41', '2021-03-16 16:54:08', '9');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1080', '1079', '55', 'prijimaci-rizeni', '1', '2021-03-28 19:22:25', '41', '2021-03-16 17:11:35', '41', '2021-03-16 17:12:05', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1081', '1079', '55', 'priprava-na-prijimaci-zkousky', '1', '2021-03-16 17:35:05', '41', '2021-03-16 17:12:24', '41', '2021-03-16 17:12:38', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1082', '1', '55', 'pro-studenty-a-rodice', '1', '2021-03-17 16:06:30', '41', '2021-03-17 16:05:54', '41', '2021-03-17 16:06:30', '10');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1083', '1082', '55', 'dokumenty', '1', '2021-03-17 16:20:11', '41', '2021-03-17 16:06:45', '41', '2021-03-17 16:06:49', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1084', '1082', '55', 'maturita', '1', '2021-03-23 13:43:22', '41', '2021-03-17 16:07:03', '41', '2021-03-17 16:07:11', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1085', '1082', '55', 'poradenske-sluzby', '1', '2021-03-23 14:42:19', '41', '2021-03-17 16:07:24', '41', '2021-03-17 16:07:37', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1086', '1084', '55', 'skolni-seznam-literarnich-del-k-maturitni-zkousce-z-ceskeho-jazyka-a-literatury', '1', '2021-03-17 16:22:09', '41', '2021-03-17 16:21:38', '41', '2021-03-17 16:22:09', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1087', '1084', '55', 'okruhy-pro-mz-z-anglickeho-jazyka', '1', '2021-03-19 14:01:05', '41', '2021-03-17 16:26:31', '41', '2021-03-17 16:26:39', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1088', '1084', '55', 'maruritni-okruhy-geografie-a-cestovni-ruch', '1', '2021-03-17 16:27:29', '41', '2021-03-17 16:26:58', '41', '2021-03-17 16:27:29', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1089', '1084', '55', 'maturitni-okruhy-isa', '1', '2021-03-19 14:01:40', '41', '2021-03-17 16:27:48', '41', '2021-03-17 16:28:01', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1090', '1084', '55', 'maturitni-temata-podnikatelstvi-intern-sluzby', '1', '2021-03-19 14:01:23', '41', '2021-03-17 16:28:24', '41', '2021-03-17 16:29:07', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1091', '1084', '55', 'maturitni-temata-podnikatelstvi-obchodnici', '1', '2021-03-17 16:29:55', '41', '2021-03-17 16:29:45', '41', '2021-03-17 16:29:55', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1092', '1084', '55', 'maturitni-temata-z-pozemniho-stavitelstvi', '1', '2021-03-19 14:00:50', '41', '2021-03-17 16:30:19', '41', '2021-03-17 16:34:12', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1093', '1', '56', 'kontakt', '1', '2021-03-23 14:54:25', '41', '2021-03-23 14:53:47', '41', '2021-03-23 14:53:57', '11');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1094', '1030', '46', 'dodatecne-rozhodnuti-rs-o-nekonani-skolni-prijimaci-zkousky', '1', '2021-03-23 16:25:13', '41', '2021-03-23 16:24:48', '41', '2021-03-23 16:25:13', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1095', '1030', '46', 'v-ramci-projektu-erasmus-se-studenti-nasi-skoly-zameruji-na-aktivity-cvicne-cestovni-kancelare-ck-primmat-tours', '1', '2021-03-23 17:11:43', '41', '2021-03-23 16:25:52', '41', '2021-03-23 16:26:28', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1096', '1033', '48', 'primmat-rodinna-atmosfera-individualni-pristup-kvalitni-vyuka-narocnost-a-vstricnost-od-roku-1992-videoklip-zde', '1', '2021-03-28 19:46:46', '41', '2021-03-23 17:01:45', '41', '2021-03-23 17:02:41', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1097', '1030', '46', 'informace-k-seznamu-prijatych-uchazecu-ke-studiu', '1', '2021-03-28 19:41:50', '41', '2021-03-28 19:41:26', '41', '2021-03-28 19:41:50', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1098', '1', '29', 'data-z-formulare', '1025', '2021-04-06 15:37:15', '41', '2021-04-06 15:36:59', '41', '2021-04-06 15:37:15', '12');

DROP TABLE IF EXISTS `pages_access`;
CREATE TABLE `pages_access` (
  `pages_id` int(11) NOT NULL,
  `templates_id` int(11) NOT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pages_id`),
  KEY `templates_id` (`templates_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('37', '2', '2021-03-01 10:11:23');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('38', '2', '2021-03-01 10:11:23');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('32', '2', '2021-03-01 10:11:23');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('34', '2', '2021-03-01 10:11:23');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('35', '2', '2021-03-01 10:11:23');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('36', '2', '2021-03-01 10:11:23');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('50', '2', '2021-03-01 10:11:23');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('51', '2', '2021-03-01 10:11:23');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('52', '2', '2021-03-01 10:11:23');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('53', '2', '2021-03-01 10:11:23');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('54', '2', '2021-03-01 10:11:23');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1006', '2', '2021-03-01 10:11:23');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1011', '2', '2021-03-01 10:11:36');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1013', '2', '2021-03-01 10:11:43');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1014', '2', '2021-03-01 10:11:43');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1016', '2', '2021-03-01 10:52:57');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1018', '2', '2021-03-01 10:52:58');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1020', '1', '2021-03-01 11:15:40');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1021', '1', '2021-03-01 11:27:33');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1022', '1', '2021-03-01 11:29:13');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1023', '1', '2021-03-01 11:29:36');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1024', '1', '2021-03-03 10:39:27');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1025', '1', '2021-03-03 10:43:06');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1026', '1', '2021-03-03 10:45:11');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1027', '1', '2021-03-03 10:46:48');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1028', '1', '2021-03-03 10:47:33');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1029', '1', '2021-03-03 10:48:54');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1030', '1', '2021-03-03 15:42:14');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1031', '1', '2021-03-05 11:43:32');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1032', '1', '2021-03-05 11:46:20');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1033', '1', '2021-03-05 11:47:54');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1037', '1', '2021-03-05 12:10:12');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1040', '1', '2021-03-10 11:49:59');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1041', '1', '2021-03-10 11:53:41');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1042', '1', '2021-03-10 11:54:08');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1043', '1', '2021-03-10 11:54:33');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1044', '1', '2021-03-10 11:55:08');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1045', '1', '2021-03-10 15:21:09');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1046', '1', '2021-03-10 15:24:15');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1047', '1', '2021-03-10 15:24:35');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1048', '1', '2021-03-10 15:25:10');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1049', '1', '2021-03-10 15:25:35');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1050', '1', '2021-03-10 15:25:55');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1054', '1', '2021-03-10 18:23:45');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1053', '1', '2021-03-10 18:23:19');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1055', '1', '2021-03-10 18:24:16');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1056', '1', '2021-03-10 18:24:38');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1057', '1', '2021-03-10 18:25:09');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1058', '1', '2021-03-10 18:25:33');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1059', '1', '2021-03-10 18:26:03');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1060', '1', '2021-03-10 18:26:24');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1061', '1', '2021-03-10 18:26:46');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1062', '1', '2021-03-10 18:27:07');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1063', '1', '2021-03-10 18:27:31');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1064', '1', '2021-03-10 18:27:51');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1065', '1', '2021-03-10 18:28:14');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1066', '1', '2021-03-10 18:28:34');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1067', '1', '2021-03-10 18:28:52');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1068', '1', '2021-03-10 18:29:15');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1069', '1', '2021-03-10 18:31:04');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1070', '1', '2021-03-10 18:31:26');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1071', '1', '2021-03-12 15:42:48');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1072', '1', '2021-03-12 15:52:49');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1073', '1', '2021-03-12 15:54:26');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1074', '1', '2021-03-12 16:01:11');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1097', '1', '2021-03-28 19:41:26');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1096', '1', '2021-03-23 17:01:45');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1095', '1', '2021-03-23 16:25:52');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1094', '1', '2021-03-23 16:24:48');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1079', '1', '2021-03-16 16:54:05');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1080', '1', '2021-03-16 17:11:35');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1081', '1', '2021-03-16 17:12:24');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1082', '1', '2021-03-17 16:05:54');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1083', '1', '2021-03-17 16:06:45');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1084', '1', '2021-03-17 16:07:03');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1085', '1', '2021-03-17 16:07:24');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1086', '1', '2021-03-17 16:21:38');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1087', '1', '2021-03-17 16:26:31');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1088', '1', '2021-03-17 16:26:58');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1089', '1', '2021-03-17 16:27:48');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1090', '1', '2021-03-17 16:28:24');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1091', '1', '2021-03-17 16:29:46');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1092', '1', '2021-03-17 16:30:19');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1093', '1', '2021-03-23 14:53:47');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1098', '1', '2021-04-06 15:36:59');

DROP TABLE IF EXISTS `pages_parents`;
CREATE TABLE `pages_parents` (
  `pages_id` int(10) unsigned NOT NULL,
  `parents_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`parents_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('2', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('3', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('3', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('22', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('22', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('28', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('28', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('29', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('29', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('29', '28');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('30', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('30', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('30', '28');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('31', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('31', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('31', '28');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1017', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1017', '22');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1041', '1040');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1042', '1040');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1043', '1040');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1084', '1082');

DROP TABLE IF EXISTS `pages_sortfields`;
CREATE TABLE `pages_sortfields` (
  `pages_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sortfield` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`pages_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `session_login_throttle`;
CREATE TABLE `session_login_throttle` (
  `name` varchar(128) NOT NULL,
  `attempts` int(10) unsigned NOT NULL DEFAULT '0',
  `last_attempt` int(10) unsigned NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `templates`;
CREATE TABLE `templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) CHARACTER SET ascii NOT NULL,
  `fieldgroups_id` int(10) unsigned NOT NULL DEFAULT '0',
  `flags` int(11) NOT NULL DEFAULT '0',
  `cache_time` mediumint(9) NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `fieldgroups_id` (`fieldgroups_id`)
) ENGINE=MyISAM AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;

INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('2', 'admin', '2', '8', '0', '{\"useRoles\":1,\"parentTemplates\":[2],\"allowPageNum\":1,\"redirectLogin\":23,\"slashUrls\":1,\"noGlobal\":1,\"compile\":3,\"modified\":1577952376,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('3', 'user', '3', '8', '0', '{\"useRoles\":1,\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"pageClass\":\"User\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"nameContentTab\":1}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('4', 'role', '4', '8', '0', '{\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"pageClass\":\"Role\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"nameContentTab\":1}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('5', 'permission', '5', '8', '0', '{\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"guestSearchable\":1,\"pageClass\":\"Permission\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"nameContentTab\":1}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('1', 'home', '1', '0', '0', '{\"useRoles\":1,\"noParents\":1,\"slashUrls\":1,\"compile\":3,\"modified\":1616605019,\"ns\":\"\\\\\",\"roles\":[37]}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('29', 'onlyTitle', '83', '0', '0', '{\"slashUrls\":1,\"compile\":3,\"modified\":1615910193,\"ns\":\"\\\\\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('43', 'language', '97', '8', '0', '{\"parentTemplates\":[2],\"slashUrls\":1,\"pageClass\":\"Language\",\"pageLabelField\":\"name\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noChangeTemplate\":1,\"noUnpublish\":1,\"compile\":3,\"nameContentTab\":1,\"modified\":1614592378}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('44', 'titleAndText', '98', '0', '0', '{\"slashUrls\":1,\"compile\":3,\"modified\":1616603942}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('45', 'referenceAbsolvent', '99', '0', '0', '{\"slashUrls\":1,\"compile\":3,\"modified\":1614764529}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('46', 'aktualita', '100', '0', '0', '{\"parentTemplates\":[47,48],\"slashUrls\":1,\"compile\":3,\"modified\":1616517100,\"ns\":\"\\\\\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('47', 'aktuality', '101', '0', '0', '{\"childTemplates\":[46],\"slashUrls\":1,\"compile\":3,\"modified\":1615118323,\"ns\":\"\\\\\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('48', 'duleziteUpozorneni', '102', '0', '0', '{\"parentTemplates\":[49],\"slashUrls\":1,\"compile\":3,\"modified\":1616517105,\"ns\":\"\\\\\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('49', 'duleziteUpozorneniPage', '103', '0', '0', '{\"childTemplates\":[48],\"slashUrls\":1,\"compile\":3,\"modified\":1614942492}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('50', 'oskole', '104', '0', '0', '{\"slashUrls\":1,\"compile\":3,\"modified\":1615900401,\"ns\":\"\\\\\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('51', 'pracovnik', '105', '0', '0', '{\"slashUrls\":1,\"compile\":3,\"modified\":1615391438}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('56', 'kontakt', '110', '0', '0', '{\"slashUrls\":1,\"compile\":3,\"modified\":1617714444,\"ns\":\"\\\\\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('53', 'obor', '107', '0', '0', '{\"slashUrls\":1,\"compile\":3,\"modified\":1615819054,\"ns\":\"\\\\\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('54', 'whyStudyUsPage', '108', '0', '0', '{\"slashUrls\":1,\"compile\":3,\"modified\":1615561357}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('55', 'basicPage', '109', '0', '0', '{\"slashUrls\":1,\"compile\":3,\"modified\":1615911476,\"ns\":\"\\\\\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('57', 'formData', '111', '0', '0', '{\"slashUrls\":1,\"compile\":3,\"modified\":1617716192}');

UPDATE pages SET created_users_id=41, modified_users_id=41, created=NOW(), modified=NOW();

# --- /WireDatabaseBackup {"numTables":33,"numCreateTables":39,"numInserts":978,"numSeconds":0}