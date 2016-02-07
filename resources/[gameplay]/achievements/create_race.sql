CREATE TABLE `achievements_race` (
	`forumID` INT(11) NOT NULL,
	`achievementID` INT(11) NOT NULL,
	`unlockedDate` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	`unlocked` TINYINT(1) NOT NULL DEFAULT '0',
	`progress` INT(10) UNSIGNED NULL DEFAULT NULL,
	PRIMARY KEY (`forumID`,`achievementID`)
);