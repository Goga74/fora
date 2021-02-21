
CREATE DATABASE prognoz
    CHARACTER SET utf8
    COLLATE utf8_general_ci;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(32) DEFAULT '',
  `password` char(128) NOT NULL,
  `created` DATETIME(6) NOT NULL,
  `updated` DATETIME(6),
  PRIMARY KEY (`id`)
) ENGINE=INNODB;

CREATE TABLE `sport` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=INNODB;

CREATE TABLE `topic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sport_id` smallint(6) NOT NULL,
  `name` varchar(45) NOT NULL,
  `author` int(11) NOT NULL,
  `type` tinyint(3) NOT NULL,
  `created` DATETIME(6) NOT NULL,
  `updated` DATETIME(6),
  `tags` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`),
  INDEX `sport_id` (`sport_id`),
  INDEX `author_id` (`author`),
  INDEX `tags` (`tags`)
) ENGINE=INNODB;


CREATE TABLE `forecast` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` TEXT NOT NULL,
  `price` decimal(10,2),
  `tags` varchar(255) DEFAULT '',
  `topic_id` int(11) NOT NULL,
  `event` DATETIME(6) NOT NULL,
  `created` DATETIME(6) NOT NULL,
  `updated` DATETIME(6),
  PRIMARY KEY (`id`),
  INDEX `topic_id` (`topic_id`),
	FOREIGN KEY (`topic_id`)
	REFERENCES topic(id)
	ON DELETE CASCADE
) ENGINE=INNODB;

CREATE TABLE `subscription` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `topic_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `payed` DATETIME(6) DEFAULT NULL,
  `isPayed` tinyint(3) DEFAULT 0,
  PRIMARY KEY (`id`),
  INDEX `topic_id` (`topic_id`),
  INDEX `user_id` (`user_id`)
) ENGINE=INNODB;


DROP TABLE IF EXISTS `forecast`;
DROP TABLE IF EXISTS `sport`;
DROP TABLE IF EXISTS `topic`;
DROP TABLE IF EXISTS `subscription`;
DROP TABLE IF EXISTS `user`;