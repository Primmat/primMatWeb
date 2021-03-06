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

INSERT INTO `field_mottoskoly` (`pages_id`, `data`) VALUES('1', 'Rodinn?? atmosf??ra, individu??ln?? p????stup, kvalitn?? v??uka. N??ro??nost a vst????cnost od roku 1992.');

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

INSERT INTO `field_secondarytitle` (`pages_id`, `data`) VALUES('1040', '<p>PrimMat-Soukrom?? st??edn?? ??kola podnikatelsk??, s.r.o., byla za??azena do s??t?? st??edn??ch ??kol od ??koln??ho roku 1992/1993. Jako<strong>??prvn?? soukrom?? st??edn?? odborn?? ??kola zah??jila v??uku vlastn??ch studijn??ch program?? s netradi??n?? vzd??l??vac?? n??pln??, kter?? v regionu chyb??la</strong>, v souvislosti s n??stupem tr??n?? ekonomiky.</p>');
INSERT INTO `field_secondarytitle` (`pages_id`, `data`) VALUES('1041', '<p>C??lov?? vize sm????uje k tomu, aby st??edn?? ??kola PrimMat byla vn??m??na ve??ejnost?? jako??<strong>jedine??n?? st??edn?? odborn?? podnikatelsk?? ??kola</strong>??s absolventy, kte???? jsou p????nosem pro region.</p>');
INSERT INTO `field_secondarytitle` (`pages_id`, `data`) VALUES('1043', '<p>Ka??d?? pedagogick?? pracovn??k m?? mail ve tvaru??<strong>prijmeni@primmat.cz</strong>.</p>');

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

INSERT INTO `field_text` (`pages_id`, `data`) VALUES('1025', '<p>???A jeden vzkaz pro studenty: ???U??te se jazyky.\" Ne ??e bych m??l moment??ln?? s angli??tinou pot????e, ale biji se do hlavy p??i vzpom??nk??ch na ????asn??ho u??itele Ondr????ka a svou neochotu se cokoli u??it. Nepravideln?? slovesa, kter?? mi ??sp????n?? vtloukl do hlavy, pou????v??m velice pravideln?? a ??sp????n??.???</p>');
INSERT INTO `field_text` (`pages_id`, `data`) VALUES('1026', '<p>?????e??tin????ce bych cht??la pod??kovat, hodn?? mi pomohla, co se t????e gramatiky. A mysl??m, ??e Va??i studenti to v budoucnu taky ocen??. Hlavn?? dikt??ty, slohov?? pr??ce, ty by m??li studenti dost??vat co dva t??dny i jako dom??c?? ??koly. Nen?? nic hor????ho ne?? napsat dopis na ????ady a m??t v n??m plno chyb.???</p>');
INSERT INTO `field_text` (`pages_id`, `data`) VALUES('1027', '<p>???Znalosti, kter?? jsem na t??to ??kole z??skala z r??zn??ch ekonomick??ch p??edm??t?? a jazyka, se mi v men???? ??i v??t???? m????e poda??ilo a st??le da???? uplat??ovat v profesn??m ??ivot??. A ty znalosti, kter?? jsem si necht??la osvojit, te?? horko t????ko po letech doh??n??m a z??sk??v??m.???</p>');
INSERT INTO `field_text` (`pages_id`, `data`) VALUES('1028', '<p>???Absolventi gymn??zi?? t??eba dodnes plavou v ????etnictv??, j?? jsem p??edn????ky ani cvi??en?? v??bec nemusela nav??t??vovat - t??mto bych cht??la pod??kovat pan?? Lednick??! I matematika byla na st??edn?? ??kole vyu??ov??na dob??e. Nejv??ce mi ale pomohly odborn?? p??edm??ty vyu??ovan?? pan?? Ry??kovou.???</p>');
INSERT INTO `field_text` (`pages_id`, `data`) VALUES('1029', '<p>???Cht??la bych pod??kovat sv?? b??val?? st??edn?? ??kole ?????proto??e pr??v?? ona mi otev??ela dv????e??s miliony mo??nost????a otev??enou budoucnost??. D??kuji!???</p>');
INSERT INTO `field_text` (`pages_id`, `data`) VALUES('1030', '<p>Co se u n??s na ??kole odehr??lo za posledn?? dobu</p>');
INSERT INTO `field_text` (`pages_id`, `data`) VALUES('1031', '<p>Pro rok 2020 bychom mohli naj??t spoustu p????vlastk?? a jedn??m z nich by ur??it?? bylo i to, ??e a?? byl v??elijak??, n??ro??n??, odolnost testuj??c??, uk??zal n??m, ??e i ty oby??ejn?? v??ci, kter?? n??m b????n?? nep??i??ly v??jime??n??, jsou vz??cn??. Vid??t se s kamar??dy, rodinou, zaj??t si do kina nebo na zmrzlinov?? poh??r...<br />\nP??ejeme v??m p??edev????m zdrav??, spln??n?? t??ch nejtajn??j????ch sn?? a a?? si i v dal????m roce uchov??te pocit neoby??ejnosti i v t??ch nejoby??ejn??j????ch situac??ch.</p>');
INSERT INTO `field_text` (`pages_id`, `data`) VALUES('1032', '<p>V??no??n?? atmosf??ru??jsme sd??leli spole??n?? s projektov??mi partnery v Belgii, Turecku, Rumunsku, Bulharsku. V??ce na:??<a href=\"http://erasprim.eu/\">erasprim.eu</a>.</p>');
INSERT INTO `field_text` (`pages_id`, `data`) VALUES('1037', '<p><a href=\"https://www.youtube.com/watch?v=2gDZJ4j9uZs\">https://www.youtube.com/watch?v=2gDZJ4j9uZs</a></p>\n\n<p>Dne 19. 1. a 28. 1. bude mo??nost se prost??ednictv??m str??nek??<a href=\"https://veletrh-skol.msk.cz/\">Veletrh-skol.MSK.cz</a>??p??ipojit a online komunikovat s na???? ??kolou.</p>');
INSERT INTO `field_text` (`pages_id`, `data`) VALUES('1040', '<p>Odli??nost v pojet?? vzd??l??vac??ho programu ??koly byla a dosud je v dvouprofesn??m vzd??l??v??n?? ????k?? a t??m i vy?????? m????e uplatnitelnosti absolvent?? v praxi.??<strong>??ty??let?? studijn?? obor pro absolventy z??kladn??ch ??kol Ekonomika a podnik??n??</strong>, 63-41-M/01, nab??z?? z??jemc??m o studium volbu dal????ho profesn??ho zam????en??.</p>');
INSERT INTO `field_text` (`pages_id`, `data`) VALUES('1041', '<p>Odli??en?? je hodnota, kter?? n??s vymezuje mezi ostatn??mi ??kolami. Nadstandardn?? vzd??l??vac?? servis je podpo??en nestresuj??c??m ??koln??m prost??ed??m a vst????cnost?? pedagog??. P????telsk?? vztahy mezi ????ky ??koly zp????jem??uj?? n??ladu v pr??b??hu studia. N??sledn?? uplatnitelnost absolvent?? v profesn??m ??ivot??, zvl??d??n?? V?? studia a spokojenost v osobn??m ??ivot?? je vizitkou na???? ??koly.</p>');
INSERT INTO `field_text` (`pages_id`, `data`) VALUES('1045', '<p>atraktivn?? vzd??l??vac?? program, nov?? formy v??uky s podporou ICT za ????elem pestrosti v??uky.</p>');
INSERT INTO `field_text` (`pages_id`, `data`) VALUES('1046', '<p>p????prava ????k?? kvalitn?? a kultivovan?? komunikovat, otev??enost ??koly v????i ????k??m, rodi????m, i sm??rem k ve??ejnosti.</p>');
INSERT INTO `field_text` (`pages_id`, `data`) VALUES('1047', '<p>????ci i pedagogov?? realizuj?? aktivity ve prosp??ch ??koly, reprezentuj?? ??kolu na ve??ejnosti.</p>');
INSERT INTO `field_text` (`pages_id`, `data`) VALUES('1048', '<p>pedagog neu???? v klasick??m smyslu, motivuje ????ky, vede k porozum??n?? souvislost??, aplikaci teoretick??ch znalost??, srozumiteln??mu vyjad??ov??n??. Organizuje pr??ci ????k?? a jejich p????pravu tak, aby se uplatnili v profesn??m i osobn??m ??ivot??.</p>');
INSERT INTO `field_text` (`pages_id`, `data`) VALUES('1049', '<p>je neslu??iteln?? s pedagogickou etikou b??t lhostejn?? k ne??sp??chu p??ijat??ho ????ka. Pedagog vol?? vhodnou motivaci ????ka a ????inn?? prost??edky za ????elem pomoci ????kovi.</p>');
INSERT INTO `field_text` (`pages_id`, `data`) VALUES('1050', '<p>chov??n?? a vystupov??n?? ????k?? v??dy v souladu se stanoven??mi pravidly S?? PrimMat, v souladu se z??sadami mor??ln??ch a mravn??ch princip??.</p>');
INSERT INTO `field_text` (`pages_id`, `data`) VALUES('1051', '<ul><li>??editelka ??koly</li>\n	<li>??esk?? jazyk a literatura??</li>\n	<li><a href=\"https://www.primmat.cz/dokumenty/skolni-metodik-prevence.pdf\">??koln?? metodik prevence soc. pat. jev??</a>, v??chovn?? poradenstv??</li>\n</ul>');
INSERT INTO `field_text` (`pages_id`, `data`) VALUES('1052', '<ul><li>z??izovatelka ??koly</li>\n	<li>jednatelka spole??nosti</li>\n	<li>konzulta??n?? a poradensk?? ??innost</li>\n</ul>');
INSERT INTO `field_text` (`pages_id`, `data`) VALUES('1053', '<ul><li>hotelov?? provoz, geografie a cestovn?? ruch, ekonomika</li>\n	<li>t????dn?? u??itel P 1.A</li>\n</ul>');
INSERT INTO `field_text` (`pages_id`, `data`) VALUES('1054', '<ul><li>podnikatelstv??, aplikovan?? podnikatelstv??, ekonomika, obchodn?? provoz, projektov?? ????zen??, bankovnictv????</li>\n	<li>t????dn?? u??itelka P 3.A</li>\n</ul>');
INSERT INTO `field_text` (`pages_id`, `data`) VALUES('1055', '<ul><li>informa??n?? a komunika??n?? technologie, programov??n??, datab??zov?? syst??my</li>\n	<li>spr??vce VT</li>\n</ul>');
INSERT INTO `field_text` (`pages_id`, `data`) VALUES('1056', '<ul><li>informa??n?? a komunika??n?? technologie, programov??n??, datab??zov?? syst??my</li>\n	<li>spr??vce VT</li>\n</ul>');
INSERT INTO `field_text` (`pages_id`, `data`) VALUES('1057', '<ul><li>????etnictv??, ????etnictv?? na PC, obchodn?? korespondence</li>\n	<li>t????dn?? u??itelka P 2.B</li>\n</ul>');
INSERT INTO `field_text` (`pages_id`, `data`) VALUES('1058', '<ul><li>n??meck?? jazyk</li>\n	<li>t????dn?? u??itelka P 2.A</li>\n</ul>');
INSERT INTO `field_text` (`pages_id`, `data`) VALUES('1059', '<ul><li>??esk?? jazyk a literatura, z??klady spole??ensk??ch v??d</li>\n	<li>t????dn?? u??itelka P 3.B</li>\n</ul>');
INSERT INTO `field_text` (`pages_id`, `data`) VALUES('1060', '<ul><li>architektura</li>\n</ul>');
INSERT INTO `field_text` (`pages_id`, `data`) VALUES('1061', '<ul><li>matematika, semin???? z matematiky, cvi??en?? z matematiky, t??lesn?? v??chova, z??klady p????rodn??ch v??d</li>\n	<li>t????dn?? u??itel P 4.A</li>\n</ul>');
INSERT INTO `field_text` (`pages_id`, `data`) VALUES('1062', '<ul><li>anglick?? jazyk</li>\n</ul>');
INSERT INTO `field_text` (`pages_id`, `data`) VALUES('1063', '<ul><li>ekonomika, pr??vn?? nauka, marketing, z??klady p????rodn??ch v??d, t??lesn?? v??chova</li>\n</ul>');
INSERT INTO `field_text` (`pages_id`, `data`) VALUES('1064', '<ul><li>programov??n??,??datab??zov?? syst??my, informa??n?? a komunika??n?? technologie, e-marketing</li>\n</ul>');
INSERT INTO `field_text` (`pages_id`, `data`) VALUES('1065', '<ul><li>odborn?? angli??tina, semin???? z anglick??ho jazyka</li>\n</ul>');
INSERT INTO `field_text` (`pages_id`, `data`) VALUES('1066', '<ul><li>programov??n??, datab??zov?? syst??my</li>\n</ul>');
INSERT INTO `field_text` (`pages_id`, `data`) VALUES('1067', '<ul><li>odborn??k z praxe, pozemn?? stavitelstv??, odborn?? kreslen??</li>\n</ul>');
INSERT INTO `field_text` (`pages_id`, `data`) VALUES('1068', '<ul><li>t??lesn?? v??chova</li>\n</ul>');
INSERT INTO `field_text` (`pages_id`, `data`) VALUES('1069', '<ul><li>spr??vn?? ??sek</li>\n	<li>jednatel spole??nosti</li>\n</ul>');
INSERT INTO `field_text` (`pages_id`, `data`) VALUES('1070', '<ul><li>asistentka ??editelky, ekonomka ??koly</li>\n</ul>');
INSERT INTO `field_text` (`pages_id`, `data`) VALUES('1071', '<h1>Podnik??n?? v euroregionu a slu??by v cestovn??m ruchu</h1>\n\n<p><strong>Studijn?? obor:</strong>??63-41-M/01 EKONOMIKA A PODNIK??N????se zam????en??m 01 - podnik??n?? v euroregionu a slu??by v cestovn??m ruchu</p>\n\n<h2>Profilov?? maturitn?? zkou??ka</h2>\n\n<p><strong>??stn?? maturitn?? zkou??ka</strong>:??Podnikatelstv?? - souhrnn???? zkou??ka, Geografie a cestovn?? ruch??</p>\n\n<p><strong>Praktick?? maturitn?? zkou??ka:</strong>??vypracov??n?? souvisl??ho ????etn??ho p????kladu, obhajoba podnikatelsk??ho pl??nu, obhajoba itiner????e z??jezdu??</p>\n\n<p>??</p>\n\n<p><strong>U??ebn?? pl??n</strong></p>\n\n<table class=\"uk-table uk-table-divider uk-table-striped\"><tbody><tr><td colspan=\"2\" rowspan=\"2\">\n			<p>??</p>\n\n			<p><strong>P??edm??ty, jejich kategorie a zkratky</strong><br />\n			??</p>\n			</td>\n			<td colspan=\"4\"><strong>Po??et t??dn?? vyu??ovan??ch hodin v ro??n??ku:</strong></td>\n			<td rowspan=\"2\"><strong>Celkem</strong></td>\n		</tr><tr><td><strong>1</strong></td>\n			<td><strong>2</strong></td>\n			<td><strong>3</strong></td>\n			<td><strong>4</strong></td>\n		</tr><tr><td colspan=\"2\"><strong>V??eobecn?? vzd??l??vac?? p??edm??ty</strong></td>\n			<td>??</td>\n			<td>??</td>\n			<td>??</td>\n			<td>??</td>\n			<td>??</td>\n		</tr><tr><td>??esk?? jazyk a literatura</td>\n			<td>??JL</td>\n			<td>3</td>\n			<td>3</td>\n			<td>3</td>\n			<td>3</td>\n			<td>12</td>\n		</tr><tr><td>Anglick?? jazyk</td>\n			<td>AnJ</td>\n			<td>3</td>\n			<td>3</td>\n			<td>3</td>\n			<td>3</td>\n			<td>12</td>\n		</tr><tr><td>N??meck?? jazyk</td>\n			<td>NeJ</td>\n			<td>3</td>\n			<td>3</td>\n			<td>3</td>\n			<td>3</td>\n			<td>12</td>\n		</tr><tr><td>Matematika</td>\n			<td>Mat</td>\n			<td>3</td>\n			<td>3</td>\n			<td>3</td>\n			<td>2</td>\n			<td>11</td>\n		</tr><tr><td>Maturitn?? semin????</td>\n			<td>Sma</td>\n			<td>-</td>\n			<td>-</td>\n			<td>-</td>\n			<td>1</td>\n			<td>1</td>\n		</tr><tr><td>Z??klady p????rodn??ch v??d</td>\n			<td>ZPV</td>\n			<td>2</td>\n			<td>2</td>\n			<td>-</td>\n			<td>-</td>\n			<td>4</td>\n		</tr><tr><td>Z??klady spole??ensk?? v??d</td>\n			<td>ZSV</td>\n			<td>2</td>\n			<td>2</td>\n			<td>-</td>\n			<td>-</td>\n			<td>4</td>\n		</tr><tr><td>T??lesn?? v??chova</td>\n			<td>TeV</td>\n			<td>2</td>\n			<td>2</td>\n			<td>2</td>\n			<td>2</td>\n			<td>8</td>\n		</tr><tr><td><strong>V??eobecn?? odborn?? p??edm??ty</strong></td>\n			<td>??</td>\n			<td>??</td>\n			<td>??</td>\n			<td>??</td>\n			<td>??</td>\n			<td>??</td>\n		</tr><tr><td>Informa??n?? a komunika??n?? technologie</td>\n			<td>IKT</td>\n			<td>4</td>\n			<td>3</td>\n			<td>-</td>\n			<td>-</td>\n			<td>7</td>\n		</tr><tr><td>Obchodn?? korespondence</td>\n			<td>ObK</td>\n			<td>2</td>\n			<td>2</td>\n			<td>-</td>\n			<td>-</td>\n			<td>4</td>\n		</tr><tr><td>Ekonomika</td>\n			<td>Eko</td>\n			<td>2</td>\n			<td>2</td>\n			<td>-</td>\n			<td>-</td>\n			<td>4</td>\n		</tr><tr><td>Podnikatelstv??</td>\n			<td>Pod</td>\n			<td>-</td>\n			<td>1</td>\n			<td>4</td>\n			<td>5</td>\n			<td>10</td>\n		</tr><tr><td>Aplikovan?? podnikatelstv??</td>\n			<td>ApP</td>\n			<td>-</td>\n			<td>-</td>\n			<td>2</td>\n			<td>-</td>\n			<td>2</td>\n		</tr><tr><td>Pr??vn?? nauka</td>\n			<td>PrN</td>\n			<td>-</td>\n			<td>-</td>\n			<td>2</td>\n			<td>3</td>\n			<td>5</td>\n		</tr><tr><td>Marketing</td>\n			<td>Mar</td>\n			<td>-</td>\n			<td>-</td>\n			<td>2</td>\n			<td>-</td>\n			<td>2</td>\n		</tr><tr><td>????etnictv??</td>\n			<td>Uce</td>\n			<td>2</td>\n			<td>2</td>\n			<td>1</td>\n			<td>1</td>\n			<td>6</td>\n		</tr><tr><td>????etnictv?? na PC</td>\n			<td>UPC</td>\n			<td>-</td>\n			<td>-</td>\n			<td>1</td>\n			<td>1</td>\n			<td>2</td>\n		</tr><tr><td><strong>Zam????en??</strong></td>\n			<td>??</td>\n			<td>??</td>\n			<td>??</td>\n			<td>??</td>\n			<td>??</td>\n			<td>??</td>\n		</tr><tr><td>Odborn?? angli??tina</td>\n			<td>OAJ</td>\n			<td>-</td>\n			<td>-</td>\n			<td>1(1)</td>\n			<td>-</td>\n			<td>1</td>\n		</tr><tr><td>Hotelov?? provoz</td>\n			<td>HoP</td>\n			<td>3</td>\n			<td>1</td>\n			<td>2</td>\n			<td>2</td>\n			<td>8</td>\n		</tr><tr><td>Geografie a cestovn?? ruch</td>\n			<td>GCR</td>\n			<td>2</td>\n			<td>2</td>\n			<td>3</td>\n			<td>3</td>\n			<td>10</td>\n		</tr><tr><td>Obchodn?? provoz</td>\n			<td>ObP</td>\n			<td>-</td>\n			<td>2</td>\n			<td>-</td>\n			<td>-</td>\n			<td>2</td>\n		</tr><tr><td>Bankovnictv??</td>\n			<td>Ban</td>\n			<td>-</td>\n			<td>-</td>\n			<td>-</td>\n			<td>2</td>\n			<td>2</td>\n		</tr></tbody></table><p><strong>Absolvent je st??edo??kolsky vzd??lan?? odborn??k, kter?? si na z??klad?? studia v??eobecn?? vzd??l??vac??ch a odborn??ch p??edm??t?? osvoj??:</strong></p>\n\n<ul><li>odborn?? znalosti a dovednosti ekonomicko-podnikatelsk?? a z oblasti slu??eb CR</li>\n	<li>dovednosti a n??vyky umo????uj??c?? p????pravu na vysoko??kolsk?? typ studia nejenom ekonomick??ho zam????en??</li>\n	<li>dovednosti pot??ebn?? k dal????mu sebevzd??l??v??n??, schopnost analyzovat probl??my, hledat zp??soby jejich ??e??en??, pohotov?? se rozhodovat, pracovat samostatn?? i v t??mu</li>\n	<li>schopnost samostatn??ho studia a pr??ce s informa??n??mi zdroji</li>\n</ul><h3>Oblast v??eobecn??ho vzd??l??n??</h3>\n\n<ul><li>Spolehliv?? znalost ??esk??ho jazyka a jeho kultivovan?? u????v??n??</li>\n	<li>Kulturn?? p??ehled, vztah ke kulturn??m, estetick??m a humanitn??m hodnot??m</li>\n	<li>Znalost dvou sv??tov??ch jazyk?? na ??rovni samostatn?? v??eobecn?? komunikace v??etn?? vyu????v??n?? znalost?? obchodn?? angli??tiny p??i obchodn??ch jedn??n??ch a obchodn?? korespondenci se zahrani??n??m partnerem</li>\n	<li>Matematick?? v??domosti jak pro aplikaci v hospod????sk??, tak i ve finan??n?? praxi</li>\n	<li>Znalost d??le??it??ch jev??, pojm?? a z??konitost?? fyziky a chemie a jejich aplikace</li>\n	<li>Pozn??n?? region??ln??, n??rodn?? a sv??tov?? historie, p??ehled v oblasti geografie EU s p??ihl??dnut k ekonomick??m souvislostem</li>\n</ul><h3>Oblast odborn??ho vzd??l??n??</h3>\n\n<ul><li>Znalost a pochopen?? ekonomick??ch pojm??, princip?? a z??konitost?? v tr??n?? ekonomice a jejich aplikace v hospod????sk?? praxi</li>\n	<li>Pou????v??n?? v??domost?? a dovednost?? z informa??n??ch technologi?? pro zpracov??n?? informac?? v??etn?? Internetu, znalost funk??n??ch mo??nost?? v??po??etn?? techniky a jejich ????eln?? aplikace</li>\n	<li>Znalost ????etn?? a da??ov?? problematiky v??etn?? praktick??ho vyu??it??</li>\n	<li>Znalosti z marketingu a managementu a jejich pou??it?? v praxi</li>\n	<li>Orientace v z??kladn??ch pr??vn??ch norm??ch a jejich vyu??it?? v obchodn??-podnikatelsk?? ??innosti</li>\n	<li>Znalost metodiky zalo??en?? a provozov??n?? vlastn?? firmy</li>\n	<li>Orientace v problematice podnik??n?? v EU (????etn??, da??ov??, pr??vn?? ???.)</li>\n	<li>Zpracov??n?? podnikatelsk??ch z??m??r?? p??i zakl??d??n?? firem i pro pot??ebu pen????n??ch ??stav?? p??i ????dostech o ??v??r</li>\n	<li>Orientace ve standardech projektov??ho ????zen?? - v??uka metodiky tvorby projekt?? na ??erp??n?? dotac?? z EU (v??uka na st??edn??ch ??kol??ch nen?? obvykl??)</li>\n	<li>Znalosti z problematiky mzdov??ho ????etnictv?? a personalistiky</li>\n	<li>Uzav??r??n?? smluv s dodavateli a odb??rateli v??etn?? leasingov??ch</li>\n	<li>Provoz a ????zen?? hotel??, gastronomick??ch za????zen?? i pomoc?? softwaru na PC /SW Fidelio/</li>\n	<li>Provoz, ????zen?? a slu??by cestovn??ch kancel??????, poskytov??n?? slu??eb souvisej??c??ch s cestovn??m ruchem</li>\n	<li>Dovednost v??cn??, jazykov?? i form??ln?? spr??vn?? zpracov??vat p??semnosti spojen?? s obchodn??-podnikatelskou ??innost?? v tuzemsku i v zahrani???? s vyu??it??m v??po??etn?? techniky</li>\n	<li>Praktick?? zku??enosti z??skan?? odbornou prax??, i prax?? zahrani??n??</li>\n</ul><p>Absolvent??<strong>PrimMat - Soukrom?? st??edn?? ??koly podnikatelsk??, s. r. o.</strong>, je ??kolou vychov??v??n vzhledem k budouc??mu ob??ansk??mu a profesn??mu ??ivotu k odpov??dnosti, ??estnosti, d??slednosti, pracovitosti, p??esnosti, kreativit?? a podnikavosti.</p>\n\n<p>Uplatn??n?? absolvent?? se zam????en??m 01 - podnik??n?? v euroregionu a slu??by v cestovn??m ruchu (dvouprofesn?? vzd??l??v??n??):</p>\n\n<ul><li>V pen????n??ch ??stavech ??? banky, poji????ovny, spo??itelny</li>\n	<li>????ady st??tn?? a ve??ejn?? spr??vy ??? asistent, referent, administrativn?? pracovn??k</li>\n	<li>Pracovn??k ekonomick??ch a person??ln??ch ??tvar??, managementu mal??ch i velk??ch firem</li>\n	<li>Hotely, restaurace, j??delny,ubytovny, l??zn?? ??? recep??n??, provozn??, slu??by souvisej??c?? s CR, pr??ce v managementu firem</li>\n	<li>Pr??ce v cestovn??ch kancel??????ch, cestovn??ch agentur??ch,informa??n??ch st??edisc??ch</li>\n	<li>Realizace vlastn??ch podnikatelsk??ch z??m??r??, asistent podnikatele</li>\n	<li>Pokra??ov??n?? ve studiu na V?? nejen ekonomick??ho sm??ru</li>\n</ul><p>Studijn?? obor vych??z?? z kvalifika??n??ch a osobnostn??ch po??adavk??, stanoven??ch v projektu Integrovan?? syst??m typov??ch pozic (ISTP) Ministerstva pr??ce a soci??ln??ch v??c??.</p>\n\n<p><strong>Ro??n?? ??koln?? podle prosp??chu: 0 ??? 13 000,- K??</strong></p>');
INSERT INTO `field_text` (`pages_id`, `data`) VALUES('1072', '<h1>Podnik??n?? v euroregionu a pozemn?? stavitelstv??</h1>\n\n<p><strong>Studijn?? obor:</strong>??63-41-M/01 EKONOMIKA A PODNIK??N????se zam????en??m 02 - podnik??n?? v euroregionu a pozemn?? stavitelstv??</p>\n\n<h2>Profilov?? maturitn?? zkou??ka</h2>\n\n<p><strong>??stn?? maturitn?? zkou??ka</strong>:??Podnikatelstv?? - souhrnn???? zkou??ka, Pozemn?? stavitelstv????</p>\n\n<p><strong>Praktick?? maturitn?? zkou??ka</strong>:??vypracov??n?? souvisl??ho ????etn??ho p????kladu, obhajoba podnikatelsk??ho pl??nu, obhajoba stavebn??ho projektu??</p>\n\n<p>??</p>\n\n<p><strong>U??ebn?? pl??n</strong></p>\n\n<table class=\"uk-table uk-table-divider uk-table-striped\"><tbody><tr><td colspan=\"2\" rowspan=\"2\">\n			<p>??</p>\n\n			<p><strong>P??edm??ty, jejich kategorie a zkratky</strong><br />\n			??</p>\n			</td>\n			<td colspan=\"4\"><strong>Po??et t??dn?? vyu??ovan??ch hodin v ro??n??ku:</strong></td>\n			<td rowspan=\"2\"><strong>Celkem</strong></td>\n		</tr><tr><td><strong>1</strong></td>\n			<td><strong>2</strong></td>\n			<td><strong>3</strong></td>\n			<td><strong>4</strong></td>\n		</tr><tr><td colspan=\"2\"><strong>V??eobecn?? vzd??l??vac?? p??edm??ty</strong></td>\n			<td>??</td>\n			<td>??</td>\n			<td>??</td>\n			<td>??</td>\n			<td>??</td>\n		</tr><tr><td>??esk?? jazyk a literatura</td>\n			<td>??JL</td>\n			<td>3</td>\n			<td>3</td>\n			<td>3</td>\n			<td>3</td>\n			<td>12</td>\n		</tr><tr><td>Anglick?? jazyk</td>\n			<td>AnJ</td>\n			<td>3</td>\n			<td>3</td>\n			<td>3</td>\n			<td>3</td>\n			<td>12</td>\n		</tr><tr><td>N??meck?? jazyk</td>\n			<td>NeJ</td>\n			<td>3</td>\n			<td>3</td>\n			<td>3</td>\n			<td>3</td>\n			<td>12</td>\n		</tr><tr><td>Matematika</td>\n			<td>Mat</td>\n			<td>3</td>\n			<td>3</td>\n			<td>3</td>\n			<td>2</td>\n			<td>11</td>\n		</tr><tr><td>Maturitn?? semin??r??</td>\n			<td>Sma</td>\n			<td>-</td>\n			<td>-</td>\n			<td>-</td>\n			<td>1</td>\n			<td>1</td>\n		</tr><tr><td>Z??klady p????rodn??ch v??d</td>\n			<td>ZPV</td>\n			<td>2</td>\n			<td>2</td>\n			<td>-</td>\n			<td>-</td>\n			<td>4</td>\n		</tr><tr><td>Z??klady spole??ensk?? v??d</td>\n			<td>ZSV</td>\n			<td>2</td>\n			<td>2</td>\n			<td>-</td>\n			<td>-</td>\n			<td>4</td>\n		</tr><tr><td>T??lesn?? v??chova</td>\n			<td>TeV</td>\n			<td>2</td>\n			<td>2</td>\n			<td>2</td>\n			<td>2</td>\n			<td>8</td>\n		</tr><tr><td><strong>V??eobecn?? odborn?? p??edm??ty</strong></td>\n			<td>??</td>\n			<td>??</td>\n			<td>??</td>\n			<td>??</td>\n			<td>??</td>\n			<td>??</td>\n		</tr><tr><td>Informa??n?? a komunika??n?? technologie</td>\n			<td>IKT</td>\n			<td>4</td>\n			<td>3</td>\n			<td>-</td>\n			<td>-</td>\n			<td>7</td>\n		</tr><tr><td>Obchodn?? korespondence</td>\n			<td>ObK</td>\n			<td>2</td>\n			<td>2</td>\n			<td>-</td>\n			<td>-</td>\n			<td>4</td>\n		</tr><tr><td>Ekonomika</td>\n			<td>Eko</td>\n			<td>2</td>\n			<td>2</td>\n			<td>-</td>\n			<td>-</td>\n			<td>4</td>\n		</tr><tr><td>Podnikatelstv??</td>\n			<td>Pod</td>\n			<td>-</td>\n			<td>1</td>\n			<td>4</td>\n			<td>5</td>\n			<td>10</td>\n		</tr><tr><td>Aplikovan?? podnikatelstv??</td>\n			<td>ApP</td>\n			<td>-</td>\n			<td>-</td>\n			<td>2</td>\n			<td>-</td>\n			<td>2</td>\n		</tr><tr><td>Pr??vn?? nauka</td>\n			<td>PrN</td>\n			<td>-</td>\n			<td>-</td>\n			<td>2</td>\n			<td>3</td>\n			<td>5</td>\n		</tr><tr><td>Marketing</td>\n			<td>Mar</td>\n			<td>-</td>\n			<td>-</td>\n			<td>2</td>\n			<td>-</td>\n			<td>2</td>\n		</tr><tr><td>????etnictv??</td>\n			<td>Uce</td>\n			<td>2</td>\n			<td>2</td>\n			<td>1</td>\n			<td>1</td>\n			<td>6</td>\n		</tr><tr><td>????etnictv?? na PC</td>\n			<td>UPC</td>\n			<td>-</td>\n			<td>-</td>\n			<td>1</td>\n			<td>1</td>\n			<td>2</td>\n		</tr><tr><td><strong>Zam????en??</strong></td>\n			<td>??</td>\n			<td>??</td>\n			<td>??</td>\n			<td>??</td>\n			<td>??</td>\n			<td>??</td>\n		</tr><tr><td>Odborn?? angli??tina</td>\n			<td>OAJ</td>\n			<td>-</td>\n			<td>-</td>\n			<td>1(1)</td>\n			<td>-</td>\n			<td>1</td>\n		</tr><tr><td>Pozemn?? stavitelstv??</td>\n			<td>PoS</td>\n			<td>3</td>\n			<td>2</td>\n			<td>2</td>\n			<td>3</td>\n			<td>10</td>\n		</tr><tr><td>Odborn?? kreslen??</td>\n			<td>OdK</td>\n			<td>-</td>\n			<td>1</td>\n			<td>3</td>\n			<td>2</td>\n			<td>6</td>\n		</tr><tr><td>Z??klady projektov??n?? a 3D modelov??n??</td>\n			<td>ZPM</td>\n			<td>2</td>\n			<td>-</td>\n			<td>-</td>\n			<td>-</td>\n			<td>2</td>\n		</tr><tr><td>Mechanika</td>\n			<td>Mech</td>\n			<td>-</td>\n			<td>2</td>\n			<td>-</td>\n			<td>-</td>\n			<td>2</td>\n		</tr><tr><td>Architektura</td>\n			<td>Arch</td>\n			<td>-</td>\n			<td>-</td>\n			<td>-</td>\n			<td>2</td>\n			<td>2</td>\n		</tr></tbody></table><h2>Absolvent je st??edo??kolsky vzd??lan?? odborn??k, kter?? si na z??klad?? studia v??eobecn?? vzd??l??vac??ch a odborn??ch p??edm??t?? osvoj??:</h2>\n\n<ul><li>odborn?? znalosti a dovednosti souvisej??c?? s ekonomicko-podnikatelskou ??innost?? a sou??asn?? s technick??m zam????en??m studijn??ho oboru na pozemn?? stavitelstv????</li>\n	<li>dovednosti a n??vyky umo????uj??c?? p????pravu na vysoko??kolsk?? typ studia nejenom technick??ho a ekonomick??ho zam????en??</li>\n	<li>dovednosti pot??ebn?? k dal????mu sebevzd??l??v??n??, schopnost analyzovat probl??my, hledat zp??soby jejich ??e??en??, pohotov?? se rozhodovat, pracovat samostatn?? i v t??mu</li>\n	<li>samostatn?? studium a pr??ci s informa??n??mi zdroji</li>\n	<li>Oblast v??eobecn??ho vzd??l??n??</li>\n</ul><h3>Spolehliv?? znalost ??esk??ho jazyka a jeho kultivovan?? u????v??n??</h3>\n\n<ul><li>Kulturn?? p??ehled, vztah ke kulturn??m, estetick??m a humanitn??m hodnot??m</li>\n	<li>Znalost dvou sv??tov??ch jazyk?? na ??rovni samostatn?? v??eobecn?? komunikace v??etn?? vyu????v??n?? znalost?? p??i obchodn??ch jedn??n??ch a obchodn?? korespondenci se zahrani??n??m partnerem</li>\n	<li>Matematick?? v??domosti jak pro aplikaci v hospod????sk??, tak i ve finan??n?? praxi</li>\n	<li>Znalost d??le??it??ch jev??, pojm?? a z??konitost?? fyziky a chemie a jejich aplikace</li>\n	<li>Pozn??n?? region??ln??, n??rodn?? a sv??tov?? historie, p??ehled v oblasti geografie s p??ihl??dnut??mk ekonomick??m souvislostem</li>\n</ul><h3>Oblast odborn??ho vzd??l??n??</h3>\n\n<ul><li>Znalost a pochopen?? ekonomick??ch pojm??, princip?? a z??konitost?? v tr??n?? ekonomice a jejich aplikace v hospod????sk?? praxi</li>\n	<li>Pou????v??n?? v??domost?? a dovednost?? z informa??n??ch technologi?? pro zpracov??n?? informac?? v??etn?? Internetu</li>\n	<li>Znalost ????etn?? a da??ov?? problematiky v??etn?? praktick??ho vyu??it??</li>\n	<li>Znalosti z marketingu a managementu a jejich pou??it?? v praxi</li>\n	<li>Orientace v z??kladn??ch pr??vn??ch norm??ch a jejich aplikace na podm??nky praxe</li>\n	<li>Znalost metodiky zalo??en?? a provozov??n?? vlastn?? firmy</li>\n	<li>Orientace v problematice podnik??n?? v EU (????etn??, da??ov??, pr??vn?? ???.)</li>\n	<li>Zpracov??n?? podnikatelsk??ch z??m??r?? p??i zakl??d??n?? firem i pro pot??ebu pen????n??ch ??stav?? p??i ????dostech o ??v??r</li>\n	<li>Orientace ve standardech projektov??ho ????zen?? - v??uka metodiky tvorby projekt?? na ??erp??n?? dotac?? z EU (v??uka na st??edn??ch ??kol??ch nen?? obvykl??)??</li>\n	<li>Znalosti z problematiky mzdov??ho ????etnictv?? a personalistiky</li>\n	<li>Uzav??r??n?? smluv s dodavateli a odb??rateli v??etn?? leasingov??ch</li>\n	<li>St????ejn?? znalosti odborn??ch p??edm??t?? souvisej??c??ch s pozemn??m stavitelstv??m - stavebn?? materi??ly, betonov?? konstrukce, stroje a za????zen??, geod??zie, stavebn?? mechanika, architektura, management ve stavebnictv??, kalkulace stavebn??ch prac?? a ceny staveb dle projektu v SW programu euro CALC (Callida), projektov??n?? na PC v SW programu PROGECAD, ArchiCAD.</li>\n	<li>Znalost technologick?? n??vaznosti stavebn??ch prac??</li>\n	<li>Schopnost zpracovat stavebn?? projekt, vypracov??n?? dokumentace za ????elem stavebn??ho povolen??</li>\n	<li>Vypracovat projekt n??zkoenergetick??ho a pasivn??ho objektu (na S?? nen?? tato v??uka b????n??)</li>\n	<li>??ten?? a posuzov??n?? stavebn??ch projekt??</li>\n	<li>Navrhov??n?? dom??, byt?? tak?? formou 3D modelu</li>\n	<li>Zpracov??n?? projekt?? dle zad??n?? partnersk?? stavebn?? firmy</li>\n	<li>Praktick?? zku??enosti z??skan?? odbornou prax?? nejenom ve stavebn?? firm??, odborn?? dovednosti dle po??adavk?? potenci??ln??ch zam??stnavatel??</li>\n</ul><p>Absolvent PrimMat - Soukrom?? st??edn?? ??koly podnikatelsk??, s. r. o. je ??kolou vychov??v??n vzhledem k budouc??mu ob??ansk??mu a profesn??mu ??ivotu k odpov??dnosti, ??estnosti, d??slednosti, pracovitosti, p??esnosti, kreativit?? a podnikavosti.</p>\n\n<h4>Uplatn??n?? absolvent?? studijn??ho oboru se zam????en??m 02 - podnik??n?? v euroregionu a pozemn?? stavitelstv?? (dvouprofesn?? vzd??l??n??):</h4>\n\n<ul><li>Stavebn?? firmy, poji????ovny, stavebn?? a katastr??ln?? ????ady</li>\n	<li>Pracovn??k technick??ch ??sek?? firem a spole??nost??, pr??ce v ekonomick??ch a person??ln??ch ??tvarech</li>\n	<li>Pracovn??k managementu mal??ch i velk??ch firem nejenom stavebn??ho zam????en??</li>\n	<li>Stavbyvedouc??</li>\n	<li>Pr??ce v projek??n?? kancel????i</li>\n	<li>Pr??ce ve firm??ch poskytuj??c??ch obchodn?? ??innosti a slu??by</li>\n	<li>Realizace vlastn??ch podnikatelsk??ch z??m??r?? , asistent podnikatele</li>\n	<li>Pokra??ov??n?? ve studiu na V?? nejen ekonomick??ho sm??ru</li>\n	<li>Studijn?? obor vych??z?? z kvalifika??n??ch a osobnostn??ch po??adavk??, stanoven??ch v projektu Integrovan?? syst??m typov??ch pozic (ISTP) Ministerstva pr??ce a soci??ln??ch v??c??.</li>\n</ul><p><strong>Ro??n?? ??koln?? podle prosp??chu: 0 ??? 13 000,- K??</strong></p>');
INSERT INTO `field_text` (`pages_id`, `data`) VALUES('1073', '<h1>Podnik??n?? v euroregionu a internetov?? slu??by a aplikace (programov??n?? a webdesign)</h1>\n\n<p>Studijn?? obor:??63-41-M/01 EKONOMIKA A PODNIK??N????se zam????en??m 03 - podnik??n?? v euroregionu a internetov?? slu??by a aplikace</p>\n\n<h2>Profilov?? maturitn?? zkou??ka</h2>\n\n<p><strong>??stn?? maturitn?? zkou??ka</strong>:??Podnikatelstv?? - souhrnn???? zkou??ka, Programov??n????</p>\n\n<p><strong>Praktick?? maturitn?? zkou??ka</strong>:??vypracov??n?? souvisl??ho ????etn??ho p????kladu, obhajoba podnikatelsk??ho pl??nu, obhajoba webov??ho projektu??</p>\n\n<p>??</p>\n\n<h2>Pro?? zvolit toto zam????en???</h2>\n\n<ul><li>v??<strong>prvn??m</strong>??ro??n??ku vytvo????te (a nastylujete) spr??vn????<strong>statick??</strong>??web</li>\n	<li>ve??<strong>druh??m</strong>??ro??n??ku vytvo????te??<strong>dynamick??</strong>??web a pou??en?? jej propoj??te s??<strong>datab??zi</strong></li>\n	<li>ve??<strong>t??et??m</strong>??ro??n??ku pou??en????<strong>programujete</strong>??a?? um??te spravovat??<strong>CMS</strong>??(eshop, redak??n?? syst??m ...) a propagovat je</li>\n	<li>ve??<strong>??tvrt??m</strong>??ro??n??ku um??te napl??novat a vytvo??it??<strong>vlastn?? CMS</strong>, um??te pracovat se??<strong>soci??ln??mi</strong>??syst??my a dal????mi??<strong>marketingov??mi</strong>??n??stroji</li>\n	<li><strong>k maturit?? si p??iprav??te a obh??j??te vlastn?? webov?? projekt</strong></li>\n</ul><h2>U??ebn?? pl??n</h2>\n\n<table class=\"uk-table uk-table-divider uk-table-striped\"><tbody><tr><td colspan=\"2\" rowspan=\"2\">\n			<p>??</p>\n\n			<p><strong>P??edm??ty, jejich kategorie a zkratky</strong></p>\n\n			<p>??</p>\n			</td>\n			<td colspan=\"4\"><strong>Po??et t??dn?? vyu??ovan??ch hodin v ro??n??ku:</strong></td>\n			<td rowspan=\"2\">\n			<p>??</p>\n\n			<p><strong>Celkem</strong></p>\n\n			<p>??</p>\n			</td>\n		</tr><tr><td><strong>1</strong></td>\n			<td><strong>2</strong></td>\n			<td><strong>3</strong></td>\n			<td><strong>4</strong></td>\n		</tr><tr><td colspan=\"2\"><strong>V??eobecn?? vzd??l??vac?? p??edm??t</strong></td>\n			<td>??</td>\n			<td>??</td>\n			<td>??</td>\n			<td>??</td>\n			<td>??</td>\n		</tr><tr><td>??esk?? jazyk a literatura</td>\n			<td>??JL</td>\n			<td>3</td>\n			<td>3</td>\n			<td>3</td>\n			<td>3</td>\n			<td>12</td>\n		</tr><tr><td>Anglick?? jazyk</td>\n			<td>AnJ</td>\n			<td>3</td>\n			<td>3</td>\n			<td>3</td>\n			<td>3</td>\n			<td>12</td>\n		</tr><tr><td>N??meck?? jazyk</td>\n			<td>NeJ</td>\n			<td>3</td>\n			<td>3</td>\n			<td>3</td>\n			<td>3</td>\n			<td>12</td>\n		</tr><tr><td>Matematika</td>\n			<td>Mat</td>\n			<td>3</td>\n			<td>3</td>\n			<td>3</td>\n			<td>2</td>\n			<td>11</td>\n		</tr><tr><td>Maturitn?? semin????</td>\n			<td>Sma</td>\n			<td>-</td>\n			<td>-</td>\n			<td>-</td>\n			<td>1</td>\n			<td>1</td>\n		</tr><tr><td>Z??klady p????rodn??ch v??d</td>\n			<td>ZPV</td>\n			<td>2</td>\n			<td>2</td>\n			<td>-</td>\n			<td>-</td>\n			<td>4</td>\n		</tr><tr><td>Z??klady spole??ensk?? v??d</td>\n			<td>ZSV</td>\n			<td>2</td>\n			<td>2</td>\n			<td>-</td>\n			<td>-</td>\n			<td>4</td>\n		</tr><tr><td>T??lesn?? v??chova</td>\n			<td>TeV</td>\n			<td>2</td>\n			<td>2</td>\n			<td>2</td>\n			<td>2</td>\n			<td>8</td>\n		</tr><tr><td><strong>V??eobecn?? odborn?? p??edm??ty</strong></td>\n			<td>??</td>\n			<td>??</td>\n			<td>??</td>\n			<td>??</td>\n			<td>??</td>\n			<td>??</td>\n		</tr><tr><td>Informa??n?? a komunika??n?? technologie</td>\n			<td>IKT</td>\n			<td>4</td>\n			<td>3</td>\n			<td>-</td>\n			<td>-</td>\n			<td>7</td>\n		</tr><tr><td>Obchodn?? korespondence</td>\n			<td>ObK</td>\n			<td>2</td>\n			<td>2</td>\n			<td>-</td>\n			<td>-</td>\n			<td>4</td>\n		</tr><tr><td>Ekonomika</td>\n			<td>Eko</td>\n			<td>2</td>\n			<td>2</td>\n			<td>-</td>\n			<td>-</td>\n			<td>4</td>\n		</tr><tr><td>Podnikatelstv??</td>\n			<td>Pod</td>\n			<td>-</td>\n			<td>1</td>\n			<td>4</td>\n			<td>5</td>\n			<td>10</td>\n		</tr><tr><td>Aplikovan?? podnikatelstv??</td>\n			<td>ApP</td>\n			<td>-</td>\n			<td>-</td>\n			<td>2</td>\n			<td>-</td>\n			<td>2</td>\n		</tr><tr><td>Pr??vn?? nauka</td>\n			<td>PrN</td>\n			<td>-</td>\n			<td>-</td>\n			<td>2</td>\n			<td>3</td>\n			<td>5</td>\n		</tr><tr><td>Marketing</td>\n			<td>Mar</td>\n			<td>-</td>\n			<td>-</td>\n			<td>2</td>\n			<td>-</td>\n			<td>2</td>\n		</tr><tr><td>????etnictv??</td>\n			<td>Uce</td>\n			<td>2</td>\n			<td>2</td>\n			<td>1</td>\n			<td>1</td>\n			<td>6</td>\n		</tr><tr><td>????etnictv?? na PC</td>\n			<td>UPC</td>\n			<td>-</td>\n			<td>-</td>\n			<td>1</td>\n			<td>1</td>\n			<td>2</td>\n		</tr><tr><td><strong>Zam????en??</strong></td>\n			<td>??</td>\n			<td>??</td>\n			<td>??</td>\n			<td>??</td>\n			<td>??</td>\n			<td>??</td>\n		</tr><tr><td>Odborn?? angli??tina</td>\n			<td>OAJ</td>\n			<td>-</td>\n			<td>-</td>\n			<td>1</td>\n			<td>-</td>\n			<td>1</td>\n		</tr><tr><td>Programov??n??</td>\n			<td>Pro</td>\n			<td>5</td>\n			<td>3</td>\n			<td>2</td>\n			<td>3</td>\n			<td>13</td>\n		</tr><tr><td>Datab??zov?? syst??my</td>\n			<td>DaS</td>\n			<td>-</td>\n			<td>2</td>\n			<td>2</td>\n			<td>2</td>\n			<td>6</td>\n		</tr><tr><td>e-Marketing</td>\n			<td>eMa</td>\n			<td>-</td>\n			<td>-</td>\n			<td>1</td>\n			<td>2</td>\n			<td>3</td>\n		</tr></tbody></table><p><br /><strong>Absolvent je st??edo??kolsky vzd??lan?? odborn??k, kter?? si na z??klad?? studia v??eobecn?? vzd??l??vac??ch a odborn??ch p??edm??t?? osvoj??:</strong></p>\n\n<ul><li>odborn?? znalosti a dovednosti ekonomicko-podnikatelsk?? a z??oblasti podnik??n?? na internetu</li>\n	<li>dovednosti a n??vyky umo????uj??c?? p????pravu na vysoko??kolsk?? typ studia nejenom ekonomick??ho zam????en??</li>\n	<li>dovednosti pot??ebn?? k dal????mu sebevzd??l??v??n??, schopnost analyzovat probl??my, hledat zp??soby jejich ??e??en??, pohotov?? se rozhodovat, pracovat samostatn?? i v t??mu</li>\n	<li>schopnost samostatn??ho studia a pr??ce s informa??n??mi zdroji</li>\n</ul><h3>Oblast v??eobecn??ho vzd??l??n??</h3>\n\n<ul><li>Spolehliv?? znalost ??esk??ho jazyka a jeho kultivovan?? u????v??n??</li>\n	<li>Kulturn?? p??ehled, vztah ke kulturn??m, estetick??m a humanitn??m hodnot??m</li>\n	<li>Znalost dvou sv??tov??ch jazyk?? na ??rovni samostatn?? v??eobecn?? komunikace v??etn?? vyu????v??n?? znalost?? obchodn?? angli??tiny p??i obchodn??ch jedn??n??ch a obchodn????korespondenci se zahrani??n??m partnerem</li>\n	<li>Matematick?? v??domosti jak pro aplikaci v hospod????sk??, tak i ve finan??n?? praxi</li>\n	<li>Znalost d??le??it??ch jev??, pojm?? a z??konitost?? fyziky a chemie a jejich aplikace</li>\n	<li>Pozn??n?? region??ln??, n??rodn?? a sv??tov?? historie,</li>\n</ul><h3>Oblast odborn??ho vzd??l??n??</h3>\n\n<ul><li>Znalost a pochopen?? ekonomick??ch pojm??, princip?? a z??konitost?? v tr??n?? ekonomice a jejich aplikace v hospod????sk?? praxi</li>\n	<li>Pou????v??n?? v??domost?? a dovednost?? z informa??n??ch technologi?? pro zpracov??n?? informac?? v??etn?? Internetu, znalost funk??n??ch mo??nost?? v??po??etn?? techniky a jejich ????eln?? aplikace</li>\n	<li>Znalost ????etn?? a da??ov?? problematiky v??etn?? praktick??ho vyu??it??</li>\n	<li>Znalosti z marketingu a managementu a jejich pou??it?? v praxi</li>\n	<li>Orientace v z??kladn??ch pr??vn??ch norm??ch a jejich vyu??it?? v obchodn??-podnikatelsk?? ??innosti</li>\n	<li>Znalost metodiky zalo??en?? a provozov??n?? vlastn?? firmy</li>\n	<li>Orientace v problematice podnik??n?? v EU (????etn??, da??ov??, pr??vn?? ???.)</li>\n	<li>Zpracov??n?? podnikatelsk??ch z??m??r?? p??i zakl??d??n?? firem i pro pot??ebu pen????n??ch ??stav?? p??i ????dostech o ??v??r</li>\n	<li>Orientace ve standardech projektov??ho ????zen?? - v??uka metodiky tvorby projekt?? na ??erp??n?? dotac?? z EU (v??uka na st??edn??ch ??kol??ch nen?? obvykl??)</li>\n	<li>Znalosti z problematiky mzdov??ho ????etnictv?? a personalistiky</li>\n	<li>Uzav??r??n?? smluv s dodavateli a odb??rateli v??etn?? leasingov??ch</li>\n	<li>Programov??n?? webov??ch aplikac??</li>\n	<li>Instalace, spr??va a pr??ce s??internetov??mi CMS a eshopy</li>\n	<li>Znalosti v??oblasti eMarketingu a podnik??n?? na internetu</li>\n	<li>Dovednost v??cn??, jazykov?? i form??ln?? spr??vn?? zpracov??vat p??semnosti spojen?? s obchodn??-podnikatelskou ??innost?? v tuzemsku i v zahrani???? s vyu??it??m v??po??etn?? techniky</li>\n	<li>Praktick?? zku??enosti z??skan?? odbornou prax??, prax?? v IT firm??ch, i vlastn??mi podnikatelsk??mi aktivitami ji?? v pr??b??hu studia</li>\n</ul><p>Absolvent PrimMat - Soukrom?? st??edn?? ??koly podnikatelsk??, s. r. o., je ??kolou vychov??v??n vzhledem k budouc??mu ob??ansk??mu a profesn??mu ??ivotu k odpov??dnosti, ??estnosti, d??slednosti, pracovitosti, p??esnosti, kreativit?? a podnikavosti.</p>\n\n<h3>Uplatn??n?? absolvent?? se zam????en??m 03 - podnik??n?? v euroregionu a internetov?? slu??by a aplikace (dvouprofesn?? vzd??l??v??n??):</h3>\n\n<ul><li>V pen????n??ch ??stavech ??? banky, poji????ovny, spo??itelny</li>\n	<li>????ady st??tn?? a ve??ejn?? spr??vy ??? asistent, referent, administrativn?? pracovn??k</li>\n	<li>Pracovn??k ekonomick??ch a person??ln??ch ??tvar??, managementu mal??ch i velk??ch firem</li>\n	<li>Program??tor?? webov??ch syst??m??</li>\n	<li>Spr??vce internetov??ch ??e??en?? ??? eshopy, weby, marketing, soci??ln?? s??t??</li>\n	<li>Realizace vlastn??ch podnikatelsk??ch z??m??r??, asistent podnikatele</li>\n	<li>Pokra??ov??n?? ve studiu na V?? - ekonomick??ho, pr??vn??ho, humanitn??ho ???, i technick??ho zam????en??</li>\n</ul><p>Studijn?? obor vych??z?? z kvalifika??n??ch a osobnostn??ch po??adavk??, stanoven??ch v projektu Integrovan?? syst??m typov??ch pozic (ISTP) Ministerstva pr??ce a soci??ln??ch v??c??.</p>\n\n<p><strong>Ro??n?? ??koln?? podle prosp??chu: 0 ??? 13 000,- K??</strong></p>');
INSERT INTO `field_text` (`pages_id`, `data`) VALUES('1044', '<h3>??kola zkvalit??uje a podporuje v??uku i za pomoc?? projekt?? spolufinancovan??ch Evropskou uni??.</h3>\n\n<p><strong><a href=\"https://www.primmat.cz/dokumenty/aktualizace-web.-s%CC%8Cablony-ii-3-end.pdf\">Students Actively Learning Entrepreneurial Skills</a>??</strong>- v??m??na osv??d??en??ch vzd??l??vac??ch postup?? na podporu podnikatelsk??ho vzd??l??v??n??, podnikavosti, kreativity, kritick??ho my??len??, digit??ln?? kompetence, jazykov?? a prezenta??n?? dovednosti, p??isp??t k osobn??mu a profesn??mu rozvoji ????k??, usnadnit porozum??n?? sv??tu podnik??n??. V??ce na PDF, ke sta??en????<a	href=\"/site/assets/files/1044/primmat-tour.pdf\">zde</a>.</p>\n\n<p><strong><a href=\"https://www.primmat.cz/dokumenty/aktualizace-web.-s%CC%8Cablony-ii-1-1.pdf\">PrimMat-praxe-budoucnost II</a>??-??</strong>Projekt je zame??r??en na persona??lni?? podporu, osobnostne?? profesni?? rozvoj pedagogu??, rovny?? pr??i??stup ke vzde??la??va??ni??, podporu aktivit rozvi??jeji??ci??ch ICT, rozvoj kompetenci?? pedagogu?? v oblasti vyuz??i??va??ni?? novy??ch vy??ukovy??ch metod s podporou ICT, spolupra??ci s??koly se zame??stnavateli, zapojeni?? odborni??ku?? z praxe do vy??uku, spolupra??ci s rodic??i z??a??ku??, s ver??ejnosti??. V??ce na??PDF ke sta??en????<a	href=\"/site/assets/files/1044/aktualizace-web_-sablony-ii-1-1.pdf\">zde</a>.</p>\n\n<p><strong><a href=\"http://euprojekty.ssspfm.cz/\">Nov?? v??zvy, nov?? p????le??itosti, nov?? ??kola</a></strong>??- aktualizace ??VP a vytvo??en?? a elektronizace stovek v??ukov??ch materi??lu. Materi??ly jsou ve??ejn?? dostupn?? a dle pot??eby aktualizovan??.</p>\n\n<p><strong><a href=\"http://www.sbirkaprikladu.eu/\">Sb??rkaP????klad??.EU</a></strong>??- rozs??hl?? webov?? sb??rka tis??c?? p????klad?? z matematiky a gener??tor?? n??hodn??ch p????klad??.??</p>\n\n<p><strong><a href=\"http://www.primmat.cz/\">ePRIMMAT</a></strong>??- tvorba a elektronizace v??ukov??ch materi??l??, IT podpora v??uky.</p>\n\n<p><strong><a href=\"http://www.primmat.cz/\">EUPRIMMAT</a></strong>??- podpora jazykov??ho vzd??l??vn?? prost??ednictv??m v??jezd?? do zahrani????.</p>\n\n<p><strong><a href=\"http://gebol.org/cs/\">GEBOL</a></strong>??- mezin??rodn?? projekt zam????en?? na spolupr??ci ??kol a drobn??ch podnikatel??.</p>\n\n<p><strong><a href=\"http://maple.theingots.org/cs/domu/\">MAPLE</a></strong>??- mezin??rodn?? projektov?? partnerstv?? zam????en?? na po????ta??ov?? my??len?? a m????en?? p????r??stku znalost?? a dovednost??.</p>\n\n<p><strong><a	href=\"/site/assets/files/1044/1804180907-a3horizontal.pdf\" target=\"_blank\" rel=\"noreferrer noopener\">PRIMMAT-PRAXE-BUDOUCNOST</a></strong>??-??c??lem projektu je person??ln?? podpora, osobnostn?? profesn?? rozvoj pedagog??, spole??n?? vzd??l??v??n?? ????k?? a student??, podpora extrakurikul??rn??ch aktivit, aktivity rozv??jej??c?? ICT.</p>');
INSERT INTO `field_text` (`pages_id`, `data`) VALUES('1080', '<h1>P??ij??m??n?? ????k?? ke studiu na PRIMMAT ??koln?? rok 2021/2022</h1>\n\n<h2>informace pro uchaze??e ke studiu</h2>\n\n<p><strong>Dodate??n?? rozhodnut?? ???? o nekon??n?? ??koln?? p??ij??mac?? zkou??ky.</strong></p>\n\n<p><strong>V??n??vaznosti na opat??en?? obecn?? povahy M??MT ze dne 5. 1. 2021 ??editelka ??koly dodate??n?? rozhodla o nekon??n?? ??koln?? p??ij??mac?? zkou??ky v??r??mci 1. kola p??ij??mac??ho ????zen?? pro ??koln?? rok 2021/2022.</strong></p>\n\n<p>Ve Fr??dku ??? M??stku dne 1. 3. 2021</p>\n\n<p>Mgr. Eva Zykmundov??</p>\n\n<p>??editelka ??koly</p>\n\n<p><br /><strong>Jednotn?? p??ij??mac?? zkou??ka z??jazyka ??esk??ho a matematiky je na na???? ??kole zru??ena.</strong></p>\n\n<h2>Krit??ria p??ij??mac??ho ????zen??</h2>\n\n<h3>1. Stanoven?? krit??ri?? p??ij??mac??ho ????zen??</h3>\n\n<p><strong>Podm??nky p??ijet?? ke studiu do studijn??ho oboru 6341M/01 Ekonomika a podnik??n??</strong>, studijn?? zam????en??: 01 (slu??by v cestovn??m ruchu), 02 (pozemn?? stavitelstv??), 03 (internetov?? slu??by a aplikace - programov??n?? a webdesign).</p>\n\n<p>V??ichni uchaze??i konaj?? pouze ??koln?? p??ij??mac?? zkou??ku v??podob?? testu z??obecn?? studijn??ch p??edpoklad??.</p>\n\n<p><strong>Rozhoduj??c??m krit??riem pro p??ijet?? ke vzd??l??v??n?? je po??ad??, kter?? je ur??eno celkov??m po??tem z??skan??ch bod?? u p??ij??mac??ho ????zen??.</strong></p>\n\n<h3>Jak vyplnit p??ihl????ku</h3>\n\n<p>- Formul???? p??ihl????ky uchaze??i poskytne z??kladn?? ??kola, pop??. st??edn?? ??kola,<br />\n- lze tak?? vyu????t obecn?? tiskopis p??ihl????ky M??MT,<br />\n- ??iteln?? vypl??te v??echny z??kladn?? identifik??tory (jm??no, p????jmen??, bydli??t??, kontakty<br />\natd.) Nutn?? vypl??te v??echny dostupn?? kontakty (mobil, e-mail - v??e ??iteln?? !),<br />\n- l??ka??sk?? posudek o zdravotn?? zp??sobilosti ke vzd??l??v??n?? nevy??adujeme,<br />\n- nezapome??te p??ihl????ku podepsat (jak z??konn?? z??stupce, tak i uchaze??),<br />\n- p??ihl????ka mus?? obsahovat vypln??n?? ??daje ze Z?? (hodnocen?? z 8. a 9. t????dy Z??., podpis a<br />\nraz??tko Z??), p????padn?? ov????en?? kopie vysv??d??en?? z 8. a 9. t????dy Z??,<br />\n- st??le plat?? mo??nost podat p??ihl????ky v r??mci prvn??ho kola na dv?? st??edn?? ??koly,<br />\n- p??ihl????ku mus??te v term??nu do<strong>??1. 3. 2021??</strong>doru??it na ob?? v??mi zvolen?? ??koly,<br />\n- p??ihl????ku doru??te osobn?? /sekretari??t/ nebo za??lete po??tou - adresa pro doru??en?? po??tou:<br /><strong>PrimMat ??? Soukrom?? st??edn?? ??kola podnikatelsk??, ??eskoslovensk?? arm??dy 482, 73801 Fr??dek ???</strong><br /><strong>M??stek,</strong><br />\n- pracovn?? doba pro odevzd??n?? p??ihl????ek v m??s??ci ??noru 2021 : b????n?? 8,00 - 15,00 hodin,<br />\n- ??koln?? p??ij??mac?? zkou??ka - 1. term??n 13. duben 2021, ur??en?? ??kolou, na p??ihl????ku se uv??d?? jen<br />\njeden term??n,<br />\n- ??koln?? p??ij??mac?? zkou??ka ??? 2. term??n 14. duben 2021, ur??en?? ??kolou.</p>\n\n<p>Ve Fr??dku ??? M??stku dne 27. 1. 2021</p>\n\n<h3>2. Po??et t????d</h3>\n\n<p>Do 1. ro??n??ku ??koln??ho roku 2021/2022 budeme z prostorov??ch d??vod?? p??ij??mat pouze??<strong>jednu t????du</strong>.</p>\n\n<h4>2.1??P??edpokl??dan?? po??et p??ij??man??ch uchaze???? - studijn?? obor 6341M/01 Ekonomika a podnik??n??</h4>\n\n<p><strong>Studijn?? obor 6341M/01 Ekonomika a podnik??n??</strong></p>\n\n<p>-??<strong>32 ????k????</strong>dvou studijn??ch zam????en?? (viz bod 1)</p>\n\n<p>??</p>\n\n<h3>3. Postup v??po??tu celkov??ho bodov??ho hodnocen??</h3>\n\n<p>Maxim??ln?? po??et bod??, kter?? m????e uchaze?? dos??hnout, je 80.</p>\n\n<h4>3.1 ??koln?? p??ij??mac?? zkou??ka formou testu z obecn?? studijn??ch p??edpoklad?? (v n??vaznosti na opat??en?? obecn?? povahy M??MT ze dne 5. 1. 2021 m????e ???? dodate??n?? rozhodnout do 8. 3. 2021 o nekon??n?? ??koln?? p??ij??mac?? zkou??ky)</h4>\n\n<p><strong>Parametry ??koln?? zkou??ky z??obecn?? studijn??ch p??edpoklad?? (OSP)</strong></p>\n\n<p>zah??jen?? testu z OSP??? p??edb????n?? 8:30 h<br />\ntest uchaze??i prov??d?? p??semnou formou<br />\nd??lka testu ??? 60 minut<br />\nmaxim??ln?? po??et dosa??en??ch bod?? je 30<br />\npozv??nku ke zkou??ce obdr????te od S??, kterou zvol??te na prvn??m m??st??, tam kon??te zkou??ku</p>\n\n<h4><br />\n3.2??Zjevn?? kreativita uchaze??e (zapojen?? do sout??????, reprezentace Z??,) ??? maxim??ln?? po??et dosa??en??ch bod?? je 20.</h4>\n\n<h4>3.3 Prosp??chov?? v??sledky ze Z??</h4>\n\n<p>* pr??m??rn?? prosp??ch z??8. t????dy Z?? (prvn?? pololet??)</p>\n\n<p>* pr??m??rn?? prosp??ch 1,00 ?????<strong>30 bod????</strong></p>\n\n<p>* za ka??dou 0,1 v??pr??m??ru prosp??chu se strh??v?? 1 bod (nap????klad: pr??m??r 1, 1 =29 bod??, pr??m??r 1,2 = 28 bod??, ???, zaokrouhluje se dle matematick??ch pravidel)</p>\n\n<p><strong>3.4??V p????pad?? rovnosti bod?? dvou a v??ce uchaze??????rozhoduj?? o jejich po??ad?? pomocn?? krit??ria v??n??sleduj??c??m po??ad??:</strong></p>\n\n<p>Bodov?? v??sledek zkou??ky z OSP<br />\nV??p????pad?? shody ve v??ech p??edchoz??ch ukazatel??ch rozhoduje o?? po??ad?? uchaze??e hodnocen?? z??preferovan??ch p??edm??t?? za 1. pololet?? osm?? t????dy v??tomto po??ad??:<br />\na) Anglick?? jazyk<br />\nb) Matematika<br />\nc) ??esk?? jazyk</p>\n\n<h3><br />\n4.??Ro??n?? ??koln?? ??in?? 0 - 13 000,- K??</h3>\n\n<p>Ve Fr??dku-M??stku dne 11. 1. 2021?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ????</p>\n\n<p>Mgr. Eva Zykmundov??, ??editelka ??koly, v. r.????????????????????????????</p>\n\n<h3>5. Dal???? informace</h3>\n\n<ul><li>p??ihl????ky - ??editelce st??edn?? ??koly do??1. b??ezna 2021??a to osobn?? nebo po??tou,</li>\n	<li>nen?? vy??adov??no potvrzen?? l??ka??e o zdravotn?? zp??sobilosti,</li>\n	<li>jednotn?? p??ij??mac?? zkou??ka z??M a ??JL????<strong>se nekon??</strong>,</li>\n	<li>odvol??n?? proti rozhodnut?? o nep??ijet?? je nutn?? podat do 3 pracovn??ch dn?? od doru??en?? rozhodnut?? o nep??ijet?? k ruk??m ??editelky ??koly,</li>\n	<li>uchaze??/z??konn?? z??stupce potvrd?? z??jem o ??kolu odevzd??n??m<strong>??z??pisov??ho?? l??stku??do 10 pracovn??ch dn??</strong>??ode dne vyhl????en?? v??sledk?? p??ij??mac??ho ????zen??,</li>\n	<li><strong>rodi??e p??ijat??ch ????k?? budou vyzv??ni k projedn??n?? a podpisu smlouvy o studiu a vzd??l??v??n??, kter?? zavazuje smluvn?? strany k partnersk?? spolupr??ci po celou dobu studia (podm??nka realizace studia),</strong></li>\n	<li>vzd??l??v??n?? cizinc?? je poskytov??n?? v souladu se ??kolsk??m z??konem.</li>\n</ul><h4><br />\nP??ij??m??n?? do vy??????ho ro??n??ku vzd??l??v??n?? ve st??edn?? ??kole:?? ?? ?????? ?? ?? ?? ?? ?? ?? ??</h4>\n\n<p>??63 z??kona ??.561/2004 Sb., ??kolsk?? z??kon, ve zn??n?? pozd??j????ch p??edpis??,????????????????????????????????????????<br />\n??editel ??koly m????e uchaze??e p??ijmout do vy??????ho ne?? prvn??ho ro??n??ku vzd??l??v??n?? ve st??edn?? ??kole. V r??mci p??ij??mac??ho ????zen?? m????e ??editel ??koly po posouzen?? doklad?? uchaze??e o p??edchoz??m vzd??l??v??n?? stanovit jako podm??nku pro p??ijet?? vykon??n?? zkou??ky, a ur??it jej?? obsah, term??n, formu a krit??ria hodnocen??, a to v souladu se vzd??l??vac??m programem p????slu??n??ho oboru vzd??l??n??. V p????pad??, ??e ??editel ??koly rozhodne o p??ijet?? uchaze??e, ur???? ro??n??k, do n??ho?? bude uchaze?? za??azen.????<br />\nPr??vn?? p??edpisy pro p??ij??m??n?? ????k?? a dal????ch uchaze???? ke vzd??l??v??n??</p>\n\n<p>Z??kona ??. 561/2004 Sb. v platn??m zn??n??, (??kolsk?? z??kon)??<br />\nVyhl????ky ??. 671/2004 Sb., v??platn??m zn??n??, vyhl????ka ??. 353/2016 Sb., ?? 1 odst.7??</p>\n\n<p>Z??kon ??. 500/2004 Sb. v platn??m zn??n?? (spr??vn?? ????d)????????</p>\n\n<p>Na????zen?? vl??dy ??. 211/2010 Sb. v platn??m zn??n??</p>\n\n<h4>POT??EBUJETE PORADIT?</h4>\n\n<p><strong>matulova@primmat.cz</strong>??- z??izovatelka ??koly</p>\n\n<p><strong>zykmundova@primmat.cz??</strong>- ??editelka ??koly?? ??</p>\n\n<p><a href=\"https://www.cermat.cz/\">www.cermat.cz</a></p>');
INSERT INTO `field_text` (`pages_id`, `data`) VALUES('1097', '<p>Seznam p??ijat??ch uchaze???? ??kola zve??ejn?? nejd????ve??<ins><strong>19. kv??tna 2021</strong></ins>??pod registra??n??m ????slem.</p>');
INSERT INTO `field_text` (`pages_id`, `data`) VALUES('1081', '<h1>P????prava na p??ij??mac?? zkou??ky</h1>\n\n<p>Vzhledem k aktu??ln?? situaci v ??R se p????pravn?? kurz k p??ij??mac??m zkou??k??m z matematiky, kter?? je ka??doro??n?? na???? ??kolou realizov??n,?? nekon??.??</p>');
INSERT INTO `field_text` (`pages_id`, `data`) VALUES('1082', '<p>Vytv????en?? bezpe??n??ho ??koln??ho prost??ed?? je nezbytn??m p??edpokladem poskytov??n?? vzd??l??vac??ch slu??eb.</p>\n\n<p>Pr??b????n?? sledujeme vz??jemn?? vztahy mezi ????ky ??koly, nen?? n??m lhostejn?? jejich chov??n??, jedn??n?? a vystupov??n??. Spolupr??ce pedagog?? a rodi???? je nezbytnou sou????st?? preventivn??ho programu ??koly, jeho?? c??lem je chr??nit na??e ????ky a b??t p??ipraveni pomoci v p????pad?? podez??en?? na ubli??ov??n?? siln??j????ch slab????m.</p>\n\n<p>S t??mto z??m??rem jsme vytvo??ili program proti ??ikanov??n??. Va???? informac?? se v??dy budeme zab??vat. Pomoc v??m poskytne t????dn?? u??itel, ??koln?? preventista, ??editelka ??koly.</p>\n\n<p>??</p>\n\n<p><strong>Z??konn?? z??stupci ????k?? by si m??li v????mat p??edev????m t??chto mo??n??ch sign??l?? ??ikanov??n??:</strong></p>\n\n<p>- za d??t??tem nep??ich??zej?? dom?? spolu????ci nebo jin?? kamar??di;</p>\n\n<p>- d??t?? nem?? kamar??da, s n??m?? by tr??vilo voln?? ??as, s n??m?? by si telefonovalo apod.;</p>\n\n<p>- d??t?? nen?? zv??no na n??v??t??vu k jin??m d??tem;</p>\n\n<p>- nechu?? d??t??te j??t r??no do ??koly (zvl????t?? kdy?? d????ve m??lo d??t?? ??kolu r??do). D??t?? odkl??d?? odchod z domova, p????padn?? je na n??m mo??no pozorovat i strach;</p>\n\n<p>- ztr??ta chuti k j??dlu;</p>\n\n<p>- d??t?? nechod?? do ??koly a ze ??koly nejkrat???? cestou, p????padn?? st????d?? r??zn?? cesty, pros?? o odvoz autem;</p>\n\n<p>- d??t?? chod?? dom?? ze ??koly hladov?? (agreso??i mu berou sva??inu nebo pen??ze na sva??inu);</p>\n\n<p>- us??n?? s pl????em, m?? neklidn?? sp??nek, k??i???? ze snu, nap??. \"Nechte m??!\";</p>\n\n<p>- d??t?? ztr??c?? z??jem o u??en?? a schopnost soust??edit se na n??;</p>\n\n<p>- d??t?? b??v?? doma smutn?? ??i apatick?? nebo se objevuj?? v??kyvy n??lad;</p>\n\n<p>- zm??nky o mo??n?? sebevra??d??;</p>\n\n<p>- odm??t?? sv????it se s t??m, co ho tr??p??;</p>\n\n<p>- d??t?? ????d?? o pen??ze, p??i??em?? ud??v?? nev??rohodn?? d??vody (nap????klad opakovan?? ????k??, ??e je ztratilo), p????padn?? doma krade pen??ze;</p>\n\n<p>- d??t?? n??padn?? ??asto hl??s?? ztr??tu osobn??ch v??c??;</p>\n\n<p>- d??t?? je neobvykle, ne??ekan?? agresivn?? k sourozenc??m nebo jin??m d??tem, projevuje i zlobu v????i rodi????m;</p>\n\n<p>- d??t?? si st????uje na neur??it?? bolesti b??icha nebo hlavy, mo??n?? r??no zvrac??, sna???? se z??stat doma;</p>\n\n<p>- sv?? zdravotn?? obt????e m????e p??eh??n??t, p????padn?? i simulovat (manipulace s teplom??rem apod.);</p>\n\n<p>- d??t?? se vyh??b?? doch??zce do ??koly;</p>\n\n<p>- d??t?? se zdr??uje doma v??ce, ne?? m??lo ve zvyku.</p>\n\n<p>??</p>\n\n<p><strong>P??edpokladem ??sp????n??ho zvl??d??n?? studijn??ch n??rok?? je pravideln?? doch??zka ????ka do ??koly.</strong></p>\n\n<p>Minimalizovat zbyte??nou absence ????k?? ve vyu??ov??n?? lze dos??hnout pouze ??zkou spoluprac?? ??koly a rodi???? ????ka.</p>\n\n<p>??</p>\n\n<p><strong>Nezbytnou sou????st?? ??koln??ho ????du ka??d?? ??koly je prevence z????kol??ctv??.</strong></p>\n\n<p>??</p>\n\n<p><strong>Z????kol??ctv?? - typ rizikov??ho chov??n??</strong></p>\n\n<p>Za z????kol??ctv?? (???chozen?? za ??kolu???) je pova??ov??na neomluven?? absence ????ka z??kladn?? ??i st??edn?? ??koly ve ??kole. Jedn?? se o p??estupek, kter??m ????k ??mysln?? zanedb??v?? ??koln?? doch??zku. Je ch??p??no jako poru??en?? ??koln??ho ????du (pravidel stanoven??ch ??kolou), sou??asn?? jde o poru??en?? ??kolsk??ho z??kona, kter?? vymezuje povinnou ??koln?? doch??zku. Nez????dka je spojeno s dal????mi typy rizikov??ho chov??n??, kter?? obvykle negativn?? ovliv??uj?? osobnostn?? v??voj jedince.</p>\n\n<p>Prevence z????kol??ctv?? je sou????st?? ??koln??ho ????du, ??koln?? doch??zku eviduje t????dn?? u??itel a v p????pad?? podez??en?? na z????kol??ctv?? se obrac?? na z??konn??ho z??stupce nezletil??ho ????ka, nebo m????e po????dat o spolupr??ci v??cn?? p????slu??n?? spr??vn?? org??n.</p>\n\n<p>Prevence z????kol??ctv??, zp??sob omlouv??n?? nep????tomnosti ????k??, ??e??en?? neomluven?? nep????tomnosti a postup z????astn??n??ch subjekt?? je o??et??en Metodick??m pokynem M??MT ???K jednotn??mu postupu p??i uvol??ov??n?? a omlouv??n?? ????k?? z vyu??ov??n??, prevenci a postihu z????kol??ctv????? vydan??m pod ??.j. 10 194/2002 ???14.</p>\n\n<p>??koly si upravuj?? postup pro p????pady z????kol??ctv?? intern??, tak??e se li???? v po??tu neomluven??ch hodin, kter?? jsou ji?? vymezov??ny jako poru??en?? ??koln??ho ????du a jsou obvykle postihov??ny k??ze??sky(nap??. napomenut??, d??tky, podm??ne??n?? vylou??en??, sn????en?? zn??mka z chov??n??).</p>\n\n<p>???Z????kol??ctv??m b??v?? ozna??ov??n p??estupek ????ka, kter?? ??mysln?? zanedb??v?? n??v??t??vu ??koly???.</p>\n\n<p>??</p>\n\n<p><strong>Kategori?? z????kol??ctv??:</strong></p>\n\n<p>Prav?? z????kol??ctv??????? ????k se ve ??kole neukazuje, ale rodi??e si mysl??, ??e do ??koly chod??</p>\n\n<p>Z????kol??ctv?? s v??dom??m rodi????????? na t??to form?? se pod??l?? n??kolik typ??rodi????, jejich?? hlavn??mi charakteristikami je bu?? odm??tav?? postoj ke ??kole nebo p????li??n?? slabost ve vztahu k d??t??ti ??i z??vislosti na pomoci a podpo??e d??t??te v dom??cnosti...</p>\n\n<p>Z????kol??ctv?? s klam??n??m rodi??????- existuj?? d??ti, kter?? dok????ou p??esv??d??it rodi??e o sv??ch zdravotn??ch obt??????ch, pro kter?? nemohou j??t do ??koly a rodi??e jim absenci omlouvaj?? pro tyto zdravotn?? d??vody, tento typ z????kol??ctv?? je v??ak obt????n?? rozli??iteln?? od z????kol??ctv?? s v??dom??m rodi????.</p>\n\n<p>??t??ky ze ??koly??? n??kdy se tomuto typu ????k?? intern?? z????kol??ctv??, kdy ????ci do ??koly p??ijdou, nechaj?? si zapsat p????tomnost a b??hem vyu??ov??n?? na n??kolik hodin odejdou, p??i??em?? z??st??vaj?? v budov?? ??koly nebo ji na kr??tkou dobu opust??.</p>\n\n<p>Odm??t??n?? ??koly????? n??kter??m typ??m ????k?? ??in?? p??edstava ??koln?? doch??zky psychick?? obt????e, nap??. v d??sledku probl??m?? ve ??kole.</p>');
INSERT INTO `field_text` (`pages_id`, `data`) VALUES('1083', '<p><strong>??kolsk?? rada -<a	href=\"/site/assets/files/1083/skolska-rada-primmat.docx\">??ke sta??en?? zde</a>.</strong></p>\n\n<p><strong>Veden?? distan??n?? v??uky -??<a	href=\"/site/assets/files/1083/dodatek-c.docx\">ke sta??en?? zde</a>.</strong></p>\n\n<p><strong>Organizace ??koln??ho roku 2020/2021 -??<a	href=\"/site/assets/files/1083/organizaci-skolniho-roku-2020-2021.docx\">ke sta??en?? zde.</a></strong></p>\n\n<p><strong>??koln?? ????d??-??<a	href=\"/site/assets/files/1083/skolni-rad.docx\" target=\"_blank\" rel=\"noreferrer noopener\">ke sta??en?? zde</a>.</strong></p>\n\n<p><strong>Pravidla pro hodnocen?? vzd??l??v??n?? na S?? -??<a	href=\"/site/assets/files/1083/pravidla-pro-hodnoceni-vysledku-vzdelavani.docx\">ke sta??en?? zde</a>.</strong></p>\n\n<p><strong>Postup p??i omlouv??n?? nep????tomnosti ve vyu??ov??n?? -??<a	href=\"/site/assets/files/1083/omlouvani_nepritomnosti_ve_vyucovani.pdf\" target=\"_blank\" rel=\"noreferrer noopener\">ke sta??en?? zde.</a></strong></p>\n\n<p><strong>Tiskopisy p??ihl????ek ke studiu -??<a href=\"http://www.msmt.cz/vzdelavani/stredni-vzdelavani/tiskopisy-prihlasek-ke-strednimu-vzdelavani-a-vzdelavani-v\" target=\"_blank\" rel=\"noreferrer noopener\">ke sta??en?? ze str??nek M??MT.</a></strong></p>\n\n<p><strong>Europass -??<a	href=\"/site/assets/files/1083/edo-63-41-m-01-ekonomika-a-podnikani-_denni-studium_-cestina-19-20.pdf\" target=\"_blank\" rel=\"noreferrer noopener\">??e??tina</a>,??<a	href=\"/site/assets/files/1083/edo-63-41-m-01-ekonomika-a-podnikani-_denni-studium_-anglictina-19-20.pdf\" target=\"_blank\" rel=\"noreferrer noopener\">Angli??tina</a>,??<a	href=\"/site/assets/files/1083/edo-63-41-m-01-ekonomika-a-podnikani-_denni-studium_-nemcina-19-20.pdf\" target=\"_blank\" rel=\"noreferrer noopener\">N??m??ina</a>.</strong></p>\n\n<p><strong>Informace o ochran?? osobn??ch ??daj?? (GDPR) -??<a	href=\"/site/assets/files/1083/gdpr.pdf\" target=\"_blank\" rel=\"noreferrer noopener\">ke sta??en?? zde.</a></strong></p>\n\n<p><strong>????dost o platbu ??koln??ho - m??s????n?? -??<a	href=\"/site/assets/files/1083/zadost-o-mesicni-platbu-predpisu-skolneho.odt\">ke sta??en?? zde</a>.</strong></p>\n\n<p><strong>Potvrzeni o studiu - ????ad pr??ce -??<a	href=\"/site/assets/files/1083/potvrzeni-o-studiu-urad-prace.pdf\">ke sta??en?? zde</a>.</strong></p>\n\n<p><strong>Potvrzen?? o studiu - ??koln????-??<a	href=\"/site/assets/files/1083/potvrzeni-o-studiu-skolni.pdf\">ke sta??en?? zde</a>.</strong></p>\n\n<p><strong>????dost o uvol??n?? z TV??-??<a	href=\"/site/assets/files/1083/zadost-o-uvoleni-z-tv.odt\">ke sta??en?? zde</a>.</strong></p>\n\n<p><strong>P??edb????n?? p??ihl????ka -??<a	href=\"/site/assets/files/1083/predbezna-prihlaska-formular-a5.pdf\">ke sta??en?? zde</a>.</strong></p>\n\n<p><strong>Doporu??en?? Krajsk?? hygienick?? stanice Moravskoslezsk??ho kraje se s??dlem v Ostrav?? k aktu??ln?? epidemiologick?? situaci -??<a href=\"https://www.primmat.cz/dokumenty/informace-ke-koronaviru-pro-%C5%A1koly-a-%C5%A1kolsk%C3%A1-za%C5%99%C3%ADzen%C3%AD-v-msk.pdf\" target=\"_blank\" rel=\"noreferrer noopener\">ke sta??en?? zde</a>.</strong></p>');
INSERT INTO `field_text` (`pages_id`, `data`) VALUES('1084', '<h1>Maturitn?? zkou??ka ve ??koln??m roce 2020/21</h1>\n\n<p><strong>Obor:</strong></p>\n\n<p>63-41-M/01?????? Podnik??n???? v??euroregionu a slu??by v??cestovn??m ruchu??(??ty??let?? denn?? studium)</p>\n\n<p>63-41-M/02?????? Podnik??n?? v??euroregionu a pozemn?? stavitelstv????(??ty??let?? denn?? studium)</p>\n\n<p>63-41-M/03?????? Podnik??n?? v??euroregionu a internetov?? slu??by a aplikace (??ty??let?? denn?? studium)</p>\n\n<h2>Harmonogram maturitn??ch zkou??ek</h2>\n\n<p><strong>Jarn?? zku??ebn?? obdob??</strong></p>\n\n<table><tbody><tr><td>Uz??v??rka pod??n?? p??ihl????ek ????ky ??editel??m ??kol</td>\n			<td>01. 12. 2020</td>\n		</tr><tr><td>Uz??v??rka pod??n?? p??ihl????ek ??editeli ??kol do CZVV</td>\n			<td>15. 12. 2020</td>\n		</tr><tr><td>Dny volna k p????prave na MZ</td>\n			<td>21. 05. 2021, 26. ??? 31. 05. 2021</td>\n		</tr><tr><td>Testov?? pr??ce</td>\n			<td>24. 5. 2021/ M, ANJ<br />\n			25. 5. 2021/ ??JL<br />\n			7. 6. 2021 - v??sledky DT</td>\n		</tr><tr><td>P??semn?? pr??ce</td>\n			<td>se nekonaj??</td>\n		</tr><tr><td>??stn?? maturitn?? zkou??ka, obhajoby P4.A</td>\n			<td>01. 06. 2021 ??? 07. 06. 2021</td>\n		</tr><tr><td>Praktick?? p??semn?? zkou??ka z ????etnictv??</td>\n			<td>20. 05. 2021</td>\n		</tr><tr><td>P??ed??v??n?? maturitn??ho vysv??d??en??</td>\n			<td>14. 06. 2021</td>\n		</tr></tbody></table><p><br /><strong>Podzimn?? zku??ebn?? obdob??</strong></p>\n\n<table><tbody><tr><td>Uz??v??rka pod??n?? p??ihl????ek ????ky ??editel??m ??kol</td>\n			<td>23. 07. 2021</td>\n		</tr><tr><td>Uz??v??rka pod??n?? p??ihl????ek ??editeli ??kol do CZVV</td>\n			<td>30. 07. 2021</td>\n		</tr><tr><td>Testov?? a p??semn?? pr??ce</td>\n			<td>01. 09. 2021 ??? 10. 09. 2021</td>\n		</tr><tr><td>Obdob?? kon??n?? zkou??ek profilov?? ????sti</td>\n			<td>z?????? 2021</td>\n		</tr><tr><td>Obdob?? kon??n?? ??stn??ch zkou??ek spole??n?? ????sti</td>\n			<td>z?????? 2021</td>\n		</tr></tbody></table><h2><br />\nP??ihl????ka k maturitn?? zkou??ce</h2>\n\n<p><br /><strong>P??ihl????ky se pod??vaj?? do 1. prosince 2020</strong>. P??ihl????ky budete vypl??ovat jednotn?? s??t????dn??m<br />\nu??itelem po domluv?? na term??nu a hodin??.<br /><br />\nP??ihl????ka k??<strong>????DN??, OPRAVN??</strong>??maturitn?? zkou??ce?? -??<a	href=\"/site/assets/files/1084/prihlaska-k-mz-_1_-verze-2.docx\">zde</a>.<br />\nTerm??n pod??n?? p??ihl????ky??pro opravn?? term??n<strong>??je 1. 12. 2020</strong>, zkou??ky se budou konat v??jarn??m<br />\nzku??ebn??m obdob?? 2021.??<strong>P??ihl????ku??je nutno vytisknou, vyplnit, podepsat a poslat po??tou</strong><br /><strong>(nikoli e-mailem).</strong></p>\n\n<h3><br />\n????dost o p??ezkoum??n??</h3>\n\n<p><br />\n- zkou??ky spole??n?? ????sti maturitn?? zkou??ky konan?? formou DIDAKTICK??HO TESTU -??<a	href=\"/site/assets/files/1084/odvolani-mz-msmt.pdf\">zde</a>.</p>\n\n<p><br /><strong>Spole??n?? ????st /st??tn??/ maturitn?? zkou??ky</strong></p>\n\n<p>Povinn?? zkou??ky</p>\n\n<ol><li>?? ????esk?? jazyk a literatura (didaktick?? test)</li>\n	<li>?? ??Voliteln?? zkou??ka - Anglick?? jazyk (didaktick?? test) nebo Matematika (didaktick?? test)</li>\n</ol><p>??</p>\n\n<p>??</p>\n\n<p><strong>Profilov?? ????st maturitn?? zkou??ky</strong></p>\n\n<p>Povinn?? zkou??ky</p>\n\n<p><strong>Ekonomika a podnik??n??, 6341M/01, zam????en?? na podnik??n?? v??euroregionu a slu??by v cestovn??m ruchu</strong></p>\n\n<ol><li>Podnikatelstv?? ??? souhrnn?? zkou??ka</li>\n	<li>Geografie a cestovn?? ruch</li>\n	<li>??esk?? jazyk a literatura ??? ??stn?? ????st -??<a	href=\"/site/assets/files/1084/mz-cjl.docx\">zde</a>, zkou??ka dobrovoln??</li>\n	<li>Krit??ria hodnocen?? ??stn?? profilov?? zkou??ky z ??JL -??<a	href=\"/site/assets/files/1084/kriteria-hodnoceni-ustni-zkousky-z-cjl.docx\">zde</a>.</li>\n	<li>Anglick?? jazyk ??? ??stn?? ????st, pokud si ????k nezvolil ve voliteln??m povinn??m p??edm??tu matematiku, zkou??ka dobrovoln??.</li>\n	<li>Krit??ria hodnocen?? ??stn?? profilov?? zkou??ky z ANJ -??<a	href=\"/site/assets/files/1084/anj-kriteria-hodnoceni-mz2021.docx\">zde</a>.</li>\n	<li>Praktick?? zkou??ka z odborn??ch p??edm??t?? ??? obhajoba podnikatelsk??ho z??m??ru, obhajoba itiner????e z??jezdu.</li>\n	<li>Krit??ria hodnocen?? praktick?? zkou??ky -??<a	href=\"/site/assets/files/1084/maturitni-prace-pravidla-hodnoceni.docx\">zde</a>.</li>\n</ol><p>??</p>\n\n<p><strong>Ekonomika a podnik??n??, 6341M/01, zam????en?? na podnik??n?? v??euroregionu a pozemn?? stavitelstv??</strong></p>\n\n<ol><li>Podnikatelstv?? ??? souhrnn?? zkou??ka</li>\n	<li>Pozemn?? stavitelstv??</li>\n	<li>??esk?? jazyk a literatura ??? ??stn?? ????st -??<a	href=\"/site/assets/files/1084/mz-cjl.docx\">zde</a>, zkou??ka dobrovoln??.</li>\n	<li>Krit??ria hodnocen?? ??stn?? profilov?? zkou??ky z ??JL -??<a	href=\"/site/assets/files/1084/kriteria-hodnoceni-ustni-zkousky-z-cjl.docx\">zde</a>.??</li>\n	<li>Anglick?? jazyk ??? ??stn?? ????st, pokud si ????k nezvolil ve voliteln??m povinn??m p??edm??tu matematiku, zkou??ka dobrovoln??.</li>\n	<li>Krit??ria hodnocen?? ??stn?? profilov?? zkou??ky z ANJ -??<a	href=\"/site/assets/files/1084/anj-kriteria-hodnoceni-mz2021.docx\">zde</a>.</li>\n	<li>Praktick?? zkou??ka z odborn??ch p??edm??t?? ??? obhajoba podnikatelsk??ho z??m??ru, obhajoba stavebn??ho projektu.</li>\n	<li>Krit??ria hodnocen?? praktick?? zkou??ky -??<a	href=\"/site/assets/files/1084/maturitni-prace-pravidla-hodnoceni.docx\">zde</a>.</li>\n</ol><p>??</p>\n\n<p><strong>Ekonomika a podnik??n??, 6341M/01, zam????en?? na podnik??n?? v??euroregionu a internetov?? slu??by a aplikace</strong></p>\n\n<ol><li>Podnikatelstv?? ??? souhrnn?? zkou??ka</li>\n	<li>Programov??n??</li>\n	<li>??esk?? jazyk a literatura ??? ??stn?? ????st??-??<a	href=\"/site/assets/files/1084/mz-cjl.docx\">zde</a>, zkou??ka dobrovoln??.</li>\n	<li>Krit??ria hodnocen?? ??stn?? profilov?? zkou??ky z ??JL -??<a	href=\"/site/assets/files/1084/kriteria-hodnoceni-ustni-zkousky-z-cjl.docx\">zde</a>.</li>\n	<li>Anglick?? jazyk ??? ??stn?? ????st, pokud si ????k nezvolil ve voliteln??m povinn??m p??edm??tu matematiku, zkou??ka dobrovoln??.</li>\n	<li>Krit??ria hodnocen?? ??stn?? profilov?? zkou??ky z ANJ -??<a	href=\"/site/assets/files/1084/anj-kriteria-hodnoceni-mz2021.docx\">zde</a>.</li>\n	<li>Praktick?? zkou??ka z odborn??ch p??edm??t?? ??? obhajoba podnikatelsk??ho z??m??ru, obhajoba webov??ho projektu.</li>\n	<li>Krit??ria hodnocen?? praktick?? zkou??ky -??<a	href=\"/site/assets/files/1084/maturitni-prace-pravidla-hodnoceni.docx\">zde</a>.</li>\n</ol>');
INSERT INTO `field_text` (`pages_id`, `data`) VALUES('1085', '<h1>Poradensk?? slu??by</h1>\n\n<p><strong>POT??EBUJETE PORADIT?</strong></p>\n\n<p>??editelka ??koly: Mgr. Eva Zykmundov??,??<a href=\"mailto:zykmundova@primmat.cz\">zykmundova@primmat.cz</a></p>\n\n<p>z??izovatelka, jednatelka ??koly: Mgr. Ivana Matulov??,??<a href=\"mailto:matulova@primmat.cz\">matulova@primmat.cz</a></p>\n\n<p>??</p>\n\n<p><strong>KONZULTA??N?? HODINY</strong></p>\n\n<p>pro ??koln?? rok 2020/2021??</p>\n\n<table><tbody><tr><td><strong>Pedagog</strong></td>\n			<td><strong>Den</strong></td>\n			<td><strong>Hodina</strong></td>\n		</tr><tr><td>Mgr. Tom???? Kopec</td>\n			<td>Pond??l??</td>\n			<td>14:10</td>\n		</tr><tr><td>Ing. P??emysl Pilch</td>\n			<td>St??eda??</td>\n			<td>14:10</td>\n		</tr><tr><td>Mgr. Magda Kanal????ov??</td>\n			<td>Pond??l??</td>\n			<td>14:05</td>\n		</tr><tr><td>Ing. Yvetta Fickov??</td>\n			<td>??tvrtek</td>\n			<td>14:05</td>\n		</tr><tr><td>Ing. Monika Ko??v??rov??</td>\n			<td>??tvrtek</td>\n			<td>14:05</td>\n		</tr><tr><td>Mgr. et Mgr. Romana Pinkavov??</td>\n			<td>Pond??l??</td>\n			<td>14:05</td>\n		</tr><tr><td>Ing., Mgr. Lenka Kot??skov??</td>\n			<td>??tvrtek</td>\n			<td>14:05</td>\n		</tr><tr><td>p. Patrik Holi??</td>\n			<td>??ter??</td>\n			<td>14:05</td>\n		</tr><tr><td>Ing. Michaela Sic</td>\n			<td>Pond??l??</td>\n			<td>14:05</td>\n		</tr><tr><td>Mgr. Eva Zykmundov??</td>\n			<td>St??eda</td>\n			<td>14:10</td>\n		</tr></tbody></table><p>??</p>\n\n<p>Mo??nost individu??ln?? domluvy term??nu.</p>\n\n<h3>??koln?? metodik prevence, v??chovn?? poradce</h3>\n\n<p>Ob?? funkce na ??kole zast??v?? Mgr. Eva Zykmundov??</p>\n\n<p><strong>Konzulta??n?? hodiny ve ??koln??m roce 2020/2021:</strong></p>\n\n<p>?? ?? ?? ?? ?? ??MP?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? VP<br />\npond??l?? 14:00 -16:00?? ?? ??pond??l?? 7:40 - 8:00<br />\n??tvrtek 7:40 - 8:00?? ?? ?? ?? ????tvrtek 14:00 - 16:00</p>\n\n<p><strong>Konzulta??n?? hodiny pro ????ky u jednotliv??ch pedagog??</strong></p>\n\n<p>Funkci ??koln??ho metodika prevence na ??kole zast??v?? Mgr. Eva Zykmundov??.</p>\n\n<p>??</p>\n\n<p>Konzultace po p??edchoz?? domluv???? v jinou dobu (telefonicky, emailem):<br /><strong>tel.:??</strong>??558??436 312<br /><strong>email</strong>: zykmundova@primmat.cz<br />\n?? ?? ?? ?? ?? ?? ??sekretariat@primmat.cz??</p>\n\n<h4>M????ete vyu????t slu??eb:</h4>\n\n<ul><li>Pedagogicko-psychologick?? poradna Fr??dek-M??stek:??<strong>www.pppfm.unas.cz</strong>, tel. 558 43 20 84</li>\n	<li>P??R - ??zemn?? odbory Fr??dek-M??stek:??<strong>krfm@mvcr.cz</strong>, tel. 974 732 111</li>\n	<li>Preventivn?? a informa??n?? skupina:??<strong>fmpis@mvcr.cz</strong>, 974 732 207</li>\n	<li>Krizov?? linka IPPP ??R - Krizov?? telefonn?? linka k ??ikan?? pro u??itele, ????ky a jejich rodi??e: tel. 286 881 059, mobil 774 089 181</li>\n	<li>Centrum nov?? nad??je:??<strong>www.cnnfm.cz</strong>, tel. 558 629 223</li>\n	<li>Renarkon:??<strong>www.renarkon.cz</strong>, tel. 596 611 796.</li>\n</ul>');
INSERT INTO `field_text` (`pages_id`, `data`) VALUES('1093', '<p><strong>PrimMat - Soukrom?? st??edn?? ??kola podnikatelsk??, s.r.o.??</strong></p>\n\n<p>??eskoslovensk?? arm??dy 482<br />\n738 01 Fr??dek-M??stek</p>\n\n<p>tel./fax: +420 558 436 312<br />\nmobil: +420 604 101 787<br />\nemail:??<a href=\"mailto:sekretariat@PrimMat.cz\">sekretariat@PrimMat.cz</a><br />\nweb:??www.PrimMat.cz</p>\n\n<p>Datov?? schr??nka: 3pcuq2h</p>\n\n<p>I??: 25376357<br />\nDI??: CZ25376357<br />\nIZO: 045 235 686<br />\nREDIZO: 600016358</p>\n\n<p>????slo ????tu ??koly:??101904105/2250</p>\n\n<p>??kola je vedena v obchodn??m rejst????ku KS Ostrava, odd??l C, vlo??ka 16294</p>');
INSERT INTO `field_text` (`pages_id`, `data`) VALUES('1074', '<p>C??lov?? vize sm????uje k tomu, aby st??edn?? ??kola PrimMat byla vn??m??na ve??ejnost?? jako jedine??n?? st??edn?? odborn?? podnikatelsk?? ??kola s absolventy, kte???? jsou p????nosem pro region.</p>\n\n<p>Sou????st?? vzd??l??vac?? koncepce ??koly jsou studentsk?? ??e??en?? re??ln??ch zad??n?? z praxe, jako?? i praktick?? forma vzd??l??v??n??, kter?? je realizov??na v pr??b??hu 3. ro??n??ku, ve cvi??n??ch studentsk??ch firm??ch. ??kola t??m podporuje rozvoj kreativity a podnikavosti sv??ch ????k??, jejich dovednosti praktick??ch aplikac?? teoretick??ch znalost?? ji?? v pr??b??hu studia.</p>');
INSERT INTO `field_text` (`pages_id`, `data`) VALUES('1094', '<p>V??n??vaznosti na opat??en?? obecn?? povahy M??MT ze dne 5. 1. 2021 ??editelka ??koly dodate??n?? rozhodla o nekon??n?? ??koln?? p??ij??mac?? zkou??ky v??r??mci 1. kola p??ij??mac??ho ????zen?? pro ??koln?? rok 2021/2022.</p>\n\n<p><strong>Pokud nedojde ke zm??n??m ze strany M??MT, seznam p??ijat??ch uchaze???? zve??ejn??me nejd????ve 28. 4. 2021 na webov??ch str??nk??ch ??koly.</strong></p>\n\n<p>Mgr. Eva Zykmundov??</p>\n\n<p>??editelka ??koly</p>');
INSERT INTO `field_text` (`pages_id`, `data`) VALUES('1095', '<p>PrimMat ??? Soukrom?? st??edn?? ??kola podnikatelsk??, s.r.o., je za ??eskou republiku zapojena do realizace mezin??rodn??ho projektu v??r??mci programu Erasmus+ na podporu a rozvoj podnikatelsk??ho vzd??l??v??n?? a my??len?? ????k?? st??edn??ch ??kol. Projekt je realizov??n p??ti st??ty: Belgie, ??esk?? republika, Turecko, Rumunsko, Bulharsko.</p>\n\n<p>Projekt je financov??n Evropskou uni?? v??r??mci programu Erasmus+.</p>\n\n<p>v??ce na??<a href=\"https://www.primmat.cz/o-skole/evropske-projekty/\">str??nce s projekty</a>.</p>\n\n<p>??</p>');

DROP TABLE IF EXISTS `field_text2`;
CREATE TABLE `field_text2` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_text2` (`pages_id`, `data`) VALUES('1040', '<p>Nov??torstv?? ??koly spo????valo tak?? v zaveden????<strong>vlastn??ho odborn??ho p??edm??tu Podnikatelstv??</strong>??(jeden z maturitn??ch p??edm??t??) do sv?? st??edo??kolsk?? v??uky, kter?? m?? t??snou vazbu na ostatn?? odborn?? p??edm??ty. Sou????st?? vzd??l??vac?? koncepce jsou studentsk?? ??e??en?? re??ln??ch zad??n?? z praxe, jako?? i praktick?? forma vzd??l??v??n??, kter?? je realizov??na v pr??b??hu 3. ro??n??ku, ve cvi??n??ch studentsk??ch firm??ch. ??kola t??m podporuje rozvoj kreativity a podnikavosti sv??ch ????k??, jejich dovednost prakticky aplikovat teoretick?? znalosti ji?? v pr??b??hu studia. Praktick?? dovednosti jsou d??le rozv??jeny p??tit??denn?? prax?? ????k?? v n??vaznosti na studijn?? obor a zvolen?? studijn?? zam????en?? v partnersk??ch firm??ch. Za ????elem zkvalit??ov??n?? odborn??ch i jazykov??ch kompetenc?? ????k?? je pro z??jemce zaji????ov??na?? souvisl?? zahrani??n?? praxe v hotelov??m komplexu u mo??e.</p>\n\n<p>V??uka na S?? PrimMat je podpo??ena pot??ebn??m vybaven??m a z??zem??m ??? dv?? u??ebny IT, dataprojektory a PC ve t????d??ch, interaktivn?? tabule, p??enosn?? notebooky pro pedagogy, mobiln?? za????zen???? do v??uky ve t????d??ch ???,?? do v??ech p??edm??t?? vlastn?? studijn?? materi??ly, kter?? ????ci vyu????vaj?? tak?? k dom??c?? p????prav?? a samostudiu, odborn??ci z praxe ve v??uce odborn??ch p??edm??t??, p????prava z??jemc?? na mezin??rodn?? jazykov?? certifik??ty, cvi??en?? z matematiky pro z??jemci o n??sledn?? V?? studium technick??ho sm??ru, spolupr??ce s vysok??mi ??kolami v regionu, s partnersk??mi firmami. Jsou realizov??ny projekty na podporu modernizace v??uky s popdporou ICT, kvalitn??ho jazykov??ho, matematick??ho, odborn??ho vzd??l??v??n??. Projekty jsou spolufinancov??ny Evropsk??ch soci??ln??m fondem a st??tn??m rozpo??tem ??esk?? republiky.????</p>\n\n<p>??kola se m????e pochlubit ??adou ??sp??ch?? v odborn??ch, spole??enskov??dn??ch, jazykov??ch i sportovn??ch sout??????ch na ??rovni regionu, ??R, i v sout??????ch mezin??rodn??ch. Nem??n?? cenn?? je kladn?? hodnocen?? S?? PrimMat jej??mi absolventy, kte???? sv??m hlasov??n??m um??stili svoji ???st??edn????? na ??eln?? m??sto v Moravskoslezsk??m kraji. V??????me si toho, ??e na??i absolventi sv??mi podnikatelsk??mi aktivitami vytvo??ili na trhu pr??ce p??es 250 pracovn??ch m??st a ??e ???????? jej?? dobr?? jm??no tak?? v zahrani????.</p>\n\n<p>St??edn?? ??kola PrimMat s??dl?? ve vlastn?? budov??, kde vl??dne pohodov?? a p????telsk?? atmosf??ra, partnersv??, respektov??n??m osobnosti ????ka, n??ro??nost a vst????cnost pedagog??.</p>\n\n<h3>Hodnocen?? vzd??l??v??n?? ??eskou ??koln?? inspekc??</h3>\n\n<p>Slo??en?? a zaujet?? pedagogick??ho sboru pro svou pr??ci umo????uje nadstandardn?? podporovat v??estrann?? rozvoj osobnosti ????k??. Materi??ln?? technick?? podm??nky pro realizaci c??l?? vzd??l??v??n?? jsou na standardn?? ??rovni.</p>\n\n<p>??kola se zapojila do ??ady program?? a projekt??. V souladu s??pl??nem rozvoje a??vlastn??m hodnocen??m ur??ovala finan??n?? priority dle sv??ch rozpo??tov??ch mo??nost??. Vhodn?? vyu????vala projekt?? spolufinancovan??ch z??ESF, grant?? a??dal????ch zdroj?? k??financov??n?? pot??eb v??hlavn?? ??innosti.</p>\n\n<p>??VP zohled??uj?? re??ln?? podm??nky a mo??nosti ??koly. Organizace vzd??l??v??n??, metody a??formy v??uky vytv?????? nadstandardn?? podm??nky pro vzd??l??v??n?? ????k??.</p>\n\n<p>V??uka i realizovan?? aktivity nadstandardn?? podporuj?? rozvoj funk??n??ch gramotnost?? s??d??razem na kl????ov?? kompetence ????k??.</p>');
INSERT INTO `field_text2` (`pages_id`, `data`) VALUES('1041', '<p><strong>NA??E STRATEGIE</strong><br />\n1. Aktualizace vzd??l??v??n?? v souladu s po??adavky intern??mi i s po??adavky zven????.<br />\n2. Organizace v??uky s d??razem na ????ka.<br />\n3. Rozvoj kreativity ????ka s podporou digit??ln??ch technologi??.<br />\n4. Schopnost ????ka pracovat s informacemi, rozvoj kritick??ho my??len??, kreativity, logick??ho uva??ov??n??, my??len?? v souvislostech, digit??ln?? gramotnosti. Preference kvality nad kvantitou.<br />\n5. Prom??tat ciz?? jazyk do profesn?? p??ipravenosti.<br />\n6. Zkvalit??ovat ICT kompetence p??esahem do jednotliv??ch p??edm??t??.<br />\n7. Mnohem m??n?? ???memorovat???, mnohem v??ce u??it sb??rat, t????dit, vyhodnocovat, zpracov??vat a vyu????vat informace.<br />\n8. Pokra??ovat ve zlep??ov??n?? technick??ho z??zem??.<br />\n9. P??ipravit absolventy b??t adaptabiln?? na zm??ny trhu pr??ce, nau??it je dovednostem, kter?? v budoucnu budou rozhodovat o kvalit?? jejich ??ivota.</p>\n\n<p><strong>ORGANIZA??N?? OPAT??EN??</strong><br />\n1. Vyu????v??n?? on-line prost??ed?? ve v??uce, dom??c?? p????prav??, v realizaci progresivn??ch forem v??uky.<br />\n2. Aktivity na podporu v??uky ??? exkurze, besedy, praxe ve firm??ch, spolupr??ce s odborn??ky z praxe, zahrani??n?? st????, ??e??en?? praktick??ch ??kol?? z re??lu.<br />\n3. Zapojen?? pedagog?? do napl??ov??n?? ??koln?? strategie:<br />\n3.1 Projektov?? a PR ??innost<br />\n- organizace projekt??, mimo??koln?? aktivity, spolupr??ce s partnery<br />\n- propagace ??koly, realizace aktivit na podporu ??????en?? pov??dom?? o ??kole<br />\n3.2 Spolupr??ce pedagog??, metodick??ch sdru??en??, profesn?? vzd??l??v??n??<br />\n- aktualizace ??VP se zohledn??n??m v??voje ??koly, priorit ve v??uce<br />\n- integrace v??eobecn?? ICT do jednotliv??ch p??edm??t??<br />\n- propojov??n?? sty??n??ch bod?? r??zn??ch p??edm??t?? ve v??uce a jejich vyu????v??n?? k lep????mu pochopen?? ??ir????ch logick??ch celk?? a praktick?? uchopitelnosti pro ????ka<br />\n4. Zapojen?? ????k?? do ??ivota ??koly<br />\n- ????kovsk?? projekty, propagace ??koly</p>\n\n<p><strong>LIDSK?? ZDROJE</strong><br />\nPokud m?? b??t stanoven??ho c??le ??koly dosa??eno, je nutnost?? v??ech u??itel?? se s n??m ztoto??nit, realizovat a zkoordinovat po??adovan?? aktivity.<br />\nVeden?? ??koly m?? z??jem podporovat u??itele v jejich ????douc??m profesn??m rozvoji.</p>\n\n<p>Od u??itel?? je vy??adov??n respekt k ????k??m, proces v??uky je zalo??en na partnerstv??, ve kter??m ????ci projevuj?? p??irozen?? respekt k u??iteli a u??itel?? respektuj?? jedine??nou osobnost ????ka.<br />\nOd ????k?? je d??sledn?? vy??adov??no slu??n?? jedn??n??, chov??n??, dodr??ov??n?? term??n??, je kladen d??raz na zodpov??dnost, jsou uplat??ov??ny pot??ebn?? n??roky.</p>\n\n<p><strong>V??UKOV?? METODY za ????elem napln??n?? vize ??koly</strong>:<br />\n1. U??itel motivuje a zapaluje ????ky pro v??uku, vzd??l??v??n?? se.<br />\n2. V??uka je organizov??na s d??razem na ????ka, na jeho individu??ln?? pot??eby, rozvoj nad??n?? a schopnost??, dovednost??.<br />\n3. V??uka s podporou digit??ln??ch technologi??.<br />\n4. Rozvoj kreativity p??i ??e??en?? ??kol?? a probl??mu, samostatn??ch prac??.<br />\n5. D??raz na multimedi??ln?? v??stupy ????k?? a u??itel??.<br />\n6. Dovednosti spojen?? s vyhled??v??n??m informac??, t????d??n??m informac??, jejich vyhodnocov??n??m, zpracov??v??n??m, prezentac??, archivov??n??m pro pozd??j???? pou??it??.<br />\n7. Pr??ce s informace v r??mci nov??ch forem v??uky.<br />\n8. Vhodn?? za??azov??n?? ciz??ho jazyka do v??uky vybran??ch p??edm??t??.<br />\n9. D??raz na individu??ln?? a kolektivn?? prezentaci z??skan??ch dovednost?? a znalost?? multimedi??ln??mi n??stroji. Spole??n?? hodnocen?? v??stup??.<br />\n10. Rozvoj kritick??ho my??len?? a jeho uplat??ov??n?? ve v??ukov??m procesu a ka??dodenn??ch ??ivotn??ch situac??ch.</p>\n\n<p><strong>Z??KLADN?? Z??SADY KODEXU U??ITELE S?? PrimMat</strong>:<br />\n1. Respektuje vizi z??izovatele.<br />\n2. Vol?? vzd??l??vac?? postupy a formy v??uky k napln??n??:<br />\na) vybavit ????ky kl????ov??mi kompetencemi,<br />\nb) vybavit ????ky pot??ebn??m odborn??m vzd??l??vac??m z??kladem,<br />\ne) p??ipravit ????ky k celo??ivotn??mu u??en??, profesn??mu uplatn??n??,<br />\nd) vzd??l??vac?? a v??chovn?? proces pova??uje za rovnocenn??,<br />\ne) prom????l?? motivaci ????k??, je vzorem pro sv?? ????ky,<br />\nf) podporuje kreativitu ????k??, rozv??j?? jejich nad??n??, schopnosti a dovednosti.<br />\n3. Postupuje diferencovan??, zejm??na ke slab????m ????k??m a t??m, kte???? z nejr??zn??j????ch<br />\nd??vod?? z??stali pozadu. T??mto ????k??m se v??nuje po v??uce.<br />\n4. V maxim??ln?? m????e je loaj??ln?? ke sv??mu zam??stnavateli, jeho pokyny se ????d??<br />\na to i v p????padech, kdy se s nimi zcela neztoto????uje.<br />\n5. P??i v??chovn??m a vzd??l??vac??m procesu, d????ve, ne??li pou??ije jak??koli postih ??i sankci,<br />\n??erp?? ze v??ech mo??nost?? dostupn??ch pozitivn??ch motiva??n??ch stimul??.<br />\n6. Pedagogick?? pracovn??k p??istupuje ke sv??mu povol??n?? profesion??ln??, ke sv?? pr??ci odpov??dn??,<br />\ns maxim??ln??m nasazen??m, je pln?? odpov??dn?? za kvalitu v??uky, v??chovy, za bezpe??nost sv????en??ch ????k??.<br />\n6. Pedagogick?? pracovn??k se neust??le vzd??l??v??.</p>');
INSERT INTO `field_text2` (`pages_id`, `data`) VALUES('1042', '<h2>Pro?? studovat na PrimMat - Soukrom?? st??edn?? ??kole podnikatelsk??, s.r.o.?</h2>\n\n<ul><li>kvalitn?? vzd??l??n?? = na??e priorita, va??e spr??vn?? volba</li>\n	<li>dv?? profese = dvojn??sobn?? m??ra uplatn??n?? na trhu pr??ce, v??hoda p??i dal????m v??b??ru studia na V??</li>\n	<li>vzd??l??vac?? program PrimMat dle aktu??ln??ch po??adavk?? a pot??eby zam??stnavatel??, spolupr??ce ??koly s firmami</li>\n	<li>opakovan?? ??sp????nost ????k?? v odborn??ch sout??????ch (Olympi??da z ????etnictv??, Sout????e pro S?? stavebn??ho zam????en?? vyhla??ovan?? stav. firmami (nap??. firmou Ytong), opakovan?? p??edn?? um??st??n?? v odborn??ch sout??????ch studentsk??ch cvi??n??ch firem na ??rovni regionu, kraje, ??R, i s mezin??rodn?? ????ast?? ...)</li>\n	<li>d??raz kladen na kvalitu v??uky ciz??ch jazyk?? (AJ/NJ), p????prava ????k?? na mezin??rodn?? certifik??ty</li>\n	<li>informace pro rodi??e o prosp??chu ????ka dostupn?? p??es internet</li>\n	<li>tradice ??koly v ekonomicko-podnikatelsk??m vzd??l??v??n?? ????k?? od roku 1992</li>\n	<li>POHODOV?? ??KOLN?? KLIMA</li>\n	<li>individu??ln?? p????stup, pomoc pedagog?? ... ka??d?? ????k dost??v?? od n??s nadstandardn?? servis</li>\n	<li>ro??n?? ??koln?? podle prosp??chov??ch krit??ri??: 0 ??? 13 000 K??, tj. pololetn?? 0 - 6.500,- K????</li>\n	<li>Motiva??n?? prosp??chov?? krit??ria dle pololetn??ho prosp??chu ????ka:\n	<ul><li>prosp??ch 1,00 - 1,20: 0 K??</li>\n		<li>prosp??ch 1,21 - 1,30: 2.000 K??</li>\n		<li>prosp??ch 1,31 - 1,40: 3.000 K??</li>\n		<li>prosp??ch 1,41 - 1,50: 4.000 K??</li>\n		<li>prosp??ch od 1,51 -?? 6.000 K?? / 6.500 K?? (6.500 K?? - 1. ro??n??k nastupuj??ci od ??koln??ho roku 2020/2021)??</li>\n	</ul></li>\n	<li>vzhledem k mimo????dn??m oprat??en??m v souvislosti s v??skytem epidemie COVID-19 se bude v????e ??koln??ho pro 1. pololet?? ??koln??ho roku 2020/2021 odv??jet od prosp??chu za 1. pololet?? ??koln??ho roku 2019/2020</li>\n	<li>praktick?? spolupr??ce se soc. partnery (souvisl?? zahrani??n?? praxe, n??vrhy ????kovsk??ch stavebn??ch projekt?? dle zad??n?? proj. kancel????e, tvorba webov??ch prezentac??)</li>\n	<li>PrimMat pat???? mezi realiz??tory projekt?? v r??mci Opera??n??ho programu Vzd??l??v??n?? pro konkurenceschopnost, kter?? pom??haj?? vytv????et z??zem?? pro efektivn?? modern?? v??uku a kvalitn?? vzd??l??v??n?? ????k?? PrimMat</li>\n	<li>Konkuren??n?? v??hoda dvouprofesn??ho vzd??l??n?? absolvent?? PrimMat na trhu pr??ce - obecn?? ekonomick?? a ????etn?? dovednosti roz??????en?? o zam????en?? (cestovn?? ruch, pozemn?? stavitelstv??, informatika) jako?? i v??hoda p??i volb?? vysoko??kolsk??ho studia a jeho zvl??d??n??.</li>\n	<li>V??born?? hodnocen?? absolventy ??koly -??<strong>3. nejlep???? ??kola v r??mci Moravskoslezsk??ho kraje</strong>.</li>\n</ul>');

DROP TABLE IF EXISTS `field_thirdtitle`;
CREATE TABLE `field_thirdtitle` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_thirdtitle` (`pages_id`, `data`) VALUES('1041', '<p>Co je u n??s <strong>v??hodou</strong>?</p>');

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
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1', 'Dom??');
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
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1021', 'Zaj??m?? V??s podnik??n?? a slu??by v cestovn??m ruchu?');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1022', 'Zaj??m?? V??s podnik??n?? a slu??by v pozemn??m stavitelstv???');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1023', 'Zaj??m?? V??s podnik??n?? a internetov?? slu??by?');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1024', 'Reference na hlavn?? str??nce');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1025', 'Jan Ryszawy');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1026', 'Petra Martynkov??');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1027', 'Pavla R????ov??');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1028', 'Lenka Strausov??');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1029', 'Andrea Demjanovi??ov??');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1030', 'aktuality');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1031', 'PrimMat p??eje ????astn?? nov?? rok 2021');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1032', 'V??no??n?? dny o??ima student?? 1. ro??n??ku');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1033', 'd??le??it?? upozorn??n??');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1037', 'Online veletrh St??edn??ch ??kol Moravskoslezsk??ho kraje');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1040', 'o ??kole');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1041', 'vize ??koly');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1042', 'studijn?? obory');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1043', 'pracovn??ci ??koly');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1044', 'evropsk?? projekty');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1045', 'PROGRESIVITA VZD??L??V??N??');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1046', 'KOMUNIKACE');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1047', 'SOUN??LE??ITOST SE ??KOLOU');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1048', 'PROFESIONALITA');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1049', 'PEDAGOGICK?? ETIKA');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1050', 'RESPEKTOV??N?? PRAVIDEL');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1051', 'Mgr. Eva Zykmundov??');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1052', 'Mgr. Ivana Matulov??');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1053', 'Mgr., Ing. Lenka Kot??skov??');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1054', 'Ing. Yvetta Fickov??');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1055', 'Mgr. Ond??ej Marek');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1056', 'Mgr. Tom???? Franek');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1057', 'Ing. Monika Ko??varov??');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1058', 'Mgr. et Mgr. Romana Pinkavov??');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1059', 'Mgr. Magda Kanal????ov??');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1060', 'Ing. Anton??n Kobl????ka');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1061', 'Mgr. Tom???? Kopec');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1062', 'Ing. Michaela Sic');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1063', 'Ing. P??emysl Pilch');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1064', 'Ing. Lud??k Chovanec');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1065', 'Marie Kom??rkov??');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1066', 'Pavel Tajdu??');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1067', 'Ing. Radek Michal??k Ph.D.');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1068', 'Mgr. Ji???? Kar??sek');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1069', 'Mgr. Zden??k Matula');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1070', 'Andrea Fajkusov??');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1071', 'Cestovn?? ruch');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1072', 'Pozemn?? stavitelstv??');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1073', 'Internetov?? slu??by');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1074', 'Pro?? studovat PrimMat');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1075', 'Praktick?? znalosti');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1076', 'Individu??ln?? p????stup');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1077', '??irok?? uplatn??n??');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1078', 'Pohodov?? ??koln?? klima');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1079', 'Chci na PrimMat');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1080', 'P??ij??mac?? ????zen??');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1081', 'P????prava na p??ij??mac?? zkou??ky');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1082', 'Pro studenty a rodi??e');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1083', 'Dokumenty');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1084', 'Maturita');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1085', 'Poradensk?? slu??by');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1086', '??koln?? seznam liter??rn??ch d??l k maturitn?? zkou??ce z ??esk??ho jazyka a literatury');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1087', 'Okruhy pro MZ z anglick??ho jazyka');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1088', 'Maruritn?? okruhy - Geografie a cestovn?? ruch');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1089', 'Maturitn?? okruhy - ISA');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1090', 'Maturitn?? t??mata podnikatelstv?? intern. slu??by');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1091', 'Maturitn?? t??mata podnikatelstv?? obchodn??ci');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1092', 'Maturitn?? temata z pozemn??ho stavitelstv??');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1093', 'kontakt');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1094', 'Dodate??n?? rozhodnut?? ???? o nekon??n?? ??koln?? p??ij??mac?? zkou??ky');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1095', 'V r??mci projektu Erasmus+ se studenti na???? ??koly zam????uj?? na aktivity cvi??n?? cestovn?? kancel????e \"CK PrimMat TOURS\"');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1096', 'PrimMat, rodinn?? atmosf??ra, individu??ln?? p????stup, kvalitn?? v??uka. N??ro??nost a vst????cnost od roku 1992. Videoklip Zde.');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1097', 'Informace k seznamu p??ijat??ch uchaze???? ke studiu.');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1098', 'Data z formul????e');

DROP TABLE IF EXISTS `field_uplnynazevskoly`;
CREATE TABLE `field_uplnynazevskoly` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_uplnynazevskoly` (`pages_id`, `data`) VALUES('1', 'PrimMat - Soukrom?? st??edn?? ??kola podnikatelsk??, s. r. o.');

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
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('101', 'FieldtypeImage', 'slider', '0', 'obr??zky ve slideru na ??vodn?? str??nce', '{\"extensions\":\"gif jpg jpeg png\",\"maxFiles\":0,\"outputFormat\":0,\"defaultValuePage\":0,\"useTags\":0,\"inputfieldClass\":\"InputfieldImage\",\"descriptionRows\":1,\"gridMode\":\"grid\",\"focusMode\":\"on\",\"resizeServer\":0,\"clientQuality\":90,\"maxReject\":0,\"dimensionsByAspectRatio\":0,\"fileSchema\":6}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('102', 'FieldtypeTextarea', 'text', '0', 'textov?? pole', '{\"inputfieldClass\":\"InputfieldCKEditor\",\"contentType\":1,\"collapsed\":0,\"minlength\":0,\"maxlength\":0,\"showCount\":0,\"rows\":5,\"toolbar\":\"Format, Styles, -, Bold, Italic, -, RemoveFormat\\nCkeLinkFiles, BulletedList, -, Blockquote\\nPWLink, Unlink, Anchor\\nPWImage, Table, HorizontalRule, SpecialChar\\nPasteText, PasteFromWord\\nScayt, -, Sourcedialog\",\"inlineMode\":0,\"useACF\":1,\"usePurifier\":1,\"formatTags\":\"p;h1;h2;h3;h4;h5;h6;pre;address\",\"extraPlugins\":[\"pwimage\",\"pwlink\",\"sourcedialog\"],\"removePlugins\":\"image,magicline\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('103', 'FieldtypeText', 'uplnyNazevSkoly', '0', '??pln?? n??zev ??koly', '{\"collapsed\":0,\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('104', 'FieldtypeText', 'mottoSkoly', '0', 'Motto ??koly', '{\"collapsed\":0,\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('120', 'FieldtypeURL', 'link', '0', 'odkaz na str??nku', '{\"noRelative\":0,\"allowIDN\":0,\"allowQuotes\":0,\"addRoot\":0,\"collapsed\":0,\"minlength\":0,\"maxlength\":1024,\"showCount\":0,\"size\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('107', 'FieldtypeInteger', 'rokAbsolventa', '0', 'rok absolventa', '{\"zeroNotEmpty\":0,\"collapsed\":0,\"inputType\":\"text\",\"size\":10,\"required\":1}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('108', 'FieldtypeImage', 'images', '0', 'obr??zky', '{\"extensions\":\"gif jpg jpeg png\",\"maxFiles\":0,\"outputFormat\":0,\"defaultValuePage\":0,\"useTags\":0,\"inputfieldClass\":\"InputfieldImage\",\"descriptionRows\":1,\"gridMode\":\"grid\",\"focusMode\":\"on\",\"resizeServer\":0,\"clientQuality\":90,\"maxReject\":0,\"dimensionsByAspectRatio\":0,\"fileSchema\":6}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('109', 'FieldtypeImage', 'postImage', '0', 'obr??zek aktuality', '{\"extensions\":\"gif jpg jpeg png\",\"maxFiles\":1,\"outputFormat\":0,\"defaultValuePage\":0,\"useTags\":0,\"inputfieldClass\":\"InputfieldImage\",\"descriptionRows\":1,\"gridMode\":\"grid\",\"focusMode\":\"on\",\"resizeServer\":0,\"clientQuality\":90,\"maxReject\":0,\"dimensionsByAspectRatio\":0,\"fileSchema\":6,\"collapsed\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('110', 'FieldtypeTextarea', 'text2', '0', 'dal???? informace', '{\"inputfieldClass\":\"InputfieldCKEditor\",\"contentType\":1,\"collapsed\":0,\"minlength\":0,\"maxlength\":0,\"showCount\":0,\"rows\":5,\"toolbar\":\"Format, Styles, -, Bold, Italic, -, RemoveFormat\\nNumberedList, BulletedList, -, Blockquote\\nPWLink, Unlink, Anchor\\nPWImage, Table, HorizontalRule, SpecialChar\\nPasteText, PasteFromWord\\nScayt, -, Sourcedialog\",\"inlineMode\":0,\"useACF\":1,\"usePurifier\":1,\"formatTags\":\"p;h1;h2;h3;h4;h5;h6;pre;address\",\"extraPlugins\":[\"pwimage\",\"pwlink\",\"sourcedialog\"],\"removePlugins\":\"image,magicline\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('111', 'FieldtypeTextarea', 'secondaryTitle', '0', 'podnadpis str??nky', '{\"inputfieldClass\":\"InputfieldCKEditor\",\"contentType\":1,\"collapsed\":0,\"minlength\":0,\"maxlength\":0,\"showCount\":0,\"rows\":5}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('112', 'FieldtypeTextarea', 'thirdTitle', '0', 'nadpis sekce', '{\"inputfieldClass\":\"InputfieldCKEditor\",\"contentType\":1,\"collapsed\":0,\"minlength\":0,\"maxlength\":0,\"showCount\":0,\"rows\":5}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('113', 'FieldtypeOptions', 'pracovnik', '0', 'o jak??ho pracovn??ka se jedn??', '{\"inputfieldClass\":\"InputfieldSelect\",\"collapsed\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('114', 'FieldtypeImage', 'subjectImage', '0', 'obr??zek oboru', '{\"extensions\":\"gif jpg jpeg png\",\"maxFiles\":1,\"outputFormat\":0,\"defaultValuePage\":0,\"useTags\":0,\"inputfieldClass\":\"InputfieldImage\",\"descriptionRows\":1,\"gridMode\":\"grid\",\"focusMode\":\"on\",\"resizeServer\":0,\"clientQuality\":90,\"maxReject\":0,\"dimensionsByAspectRatio\":0,\"fileSchema\":6}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('115', 'FieldtypeOptions', 'ikony', '0', 'vyberte ikonu', '{\"inputfieldClass\":\"InputfieldSelect\",\"collapsed\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('116', 'FieldtypeFile', 'files', '0', 'soubory', '{\"extensions\":\"pdf doc docx xls xlsx gif jpg jpeg png odt\",\"maxFiles\":0,\"outputFormat\":0,\"defaultValuePage\":0,\"useTags\":0,\"inputfieldClass\":\"InputfieldFile\",\"descriptionRows\":1,\"fileSchema\":6,\"collapsed\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('117', 'FieldtypeText', 'map', '0', 'google mapa primmatu', '');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('118', 'FieldtypeText', 'video', '0', 'vlo??te odkaz youtube videa', '{\"collapsed\":0,\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0}');

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