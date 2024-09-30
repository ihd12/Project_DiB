-- --------------------------------------------------------
-- 호스트:                          127.0.0.1
-- 서버 버전:                        11.3.2-MariaDB - mariadb.org binary distribution
-- 서버 OS:                        Win64
-- HeidiSQL 버전:                  12.6.0.6765
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- dibdb 데이터베이스 구조 내보내기
DROP DATABASE IF EXISTS `dibdb`;
CREATE DATABASE IF NOT EXISTS `dibdb` /*!40100 DEFAULT CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci */;
USE `dibdb`;

-- 테이블 dibdb.accommodation 구조 내보내기
DROP TABLE IF EXISTS `accommodation`;
CREATE TABLE IF NOT EXISTS `accommodation` (
  `ano` int(11) NOT NULL AUTO_INCREMENT,
  `acc_name` varchar(50) NOT NULL,
  `acc_exp` varchar(255) NOT NULL,
  `acc_loc` varchar(255) NOT NULL,
  `acc_phone` varchar(20) DEFAULT NULL,
  `acc_image` varchar(100) DEFAULT NULL,
  `acc_like` tinyint(4) DEFAULT 0,
  `acc_total_like` int(11) DEFAULT 0,
  `acc_tag` varchar(20) DEFAULT NULL,
  `moddate` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `regdate` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  PRIMARY KEY (`ano`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- 내보낼 데이터가 선택되어 있지 않습니다.

-- 테이블 dibdb.accommodation_img 구조 내보내기
DROP TABLE IF EXISTS `accommodation_img`;
CREATE TABLE IF NOT EXISTS `accommodation_img` (
  `uuid` varchar(200) NOT NULL,
  `file_name` varchar(200) DEFAULT NULL,
  `ano` int(11) DEFAULT NULL,
  `ord` int(11) DEFAULT NULL,
  PRIMARY KEY (`uuid`),
  KEY `ACCOMMODATION_ANO_idx` (`ano`),
  CONSTRAINT `acc_ano_fk` FOREIGN KEY (`ano`) REFERENCES `accommodation` (`ano`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- 내보낼 데이터가 선택되어 있지 않습니다.

-- 테이블 dibdb.faq 구조 내보내기
DROP TABLE IF EXISTS `faq`;
CREATE TABLE IF NOT EXISTS `faq` (
  `fno` int(11) NOT NULL AUTO_INCREMENT,
  `faq_title` varchar(200) NOT NULL,
  `faq_content` varchar(500) NOT NULL,
  `faq_image` varchar(100) DEFAULT NULL,
  `regdate` datetime NOT NULL DEFAULT current_timestamp(),
  `moddate` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`fno`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- 내보낼 데이터가 선택되어 있지 않습니다.

-- 테이블 dibdb.faq_img 구조 내보내기
DROP TABLE IF EXISTS `faq_img`;
CREATE TABLE IF NOT EXISTS `faq_img` (
  `uuid` varchar(200) NOT NULL,
  `file_name` varchar(200) DEFAULT NULL,
  `fno` int(11) DEFAULT NULL,
  `ord` int(11) DEFAULT NULL,
  PRIMARY KEY (`uuid`),
  KEY `faq_no_idx` (`fno`),
  CONSTRAINT `fno_fk` FOREIGN KEY (`fno`) REFERENCES `faq` (`fno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- 내보낼 데이터가 선택되어 있지 않습니다.

-- 테이블 dibdb.member 구조 내보내기
DROP TABLE IF EXISTS `member`;
CREATE TABLE IF NOT EXISTS `member` (
  `mid` varchar(50) NOT NULL,
  `mpw` text NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(200) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `phone` varchar(11) NOT NULL,
  `roleSet` varchar(50) DEFAULT NULL,
  `social` int(11) DEFAULT NULL,
  `regdate` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `moddate` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  PRIMARY KEY (`mid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- 내보낼 데이터가 선택되어 있지 않습니다.

-- 테이블 dibdb.notice 구조 내보내기
DROP TABLE IF EXISTS `notice`;
CREATE TABLE IF NOT EXISTS `notice` (
  `nno` int(11) NOT NULL AUTO_INCREMENT,
  `notice_title` varchar(100) NOT NULL,
  `notice_content` varchar(500) NOT NULL,
  `notice_image` varchar(100) DEFAULT NULL,
  `regdate` date NOT NULL,
  `moddate` date NOT NULL,
  PRIMARY KEY (`nno`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- 내보낼 데이터가 선택되어 있지 않습니다.

-- 테이블 dibdb.notice_img 구조 내보내기
DROP TABLE IF EXISTS `notice_img`;
CREATE TABLE IF NOT EXISTS `notice_img` (
  `uuid` varchar(200) NOT NULL,
  `file_name` varchar(200) DEFAULT NULL,
  `nno` int(11) DEFAULT NULL,
  `ord` int(11) DEFAULT NULL,
  PRIMARY KEY (`uuid`),
  KEY `notice_no_idx` (`nno`),
  CONSTRAINT `nno_fk` FOREIGN KEY (`nno`) REFERENCES `notice` (`nno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- 내보낼 데이터가 선택되어 있지 않습니다.

-- 테이블 dibdb.one2one 구조 내보내기
DROP TABLE IF EXISTS `one2one`;
CREATE TABLE IF NOT EXISTS `one2one` (
  `otono` int(11) NOT NULL AUTO_INCREMENT,
  `one2one_title` text DEFAULT NULL,
  `one2one_content` text DEFAULT NULL,
  `one2one_image` text DEFAULT NULL,
  `mid` text DEFAULT NULL,
  `regdate` datetime DEFAULT current_timestamp(),
  `moddate` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`otono`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- 내보낼 데이터가 선택되어 있지 않습니다.

-- 테이블 dibdb.persistent_logins 구조 내보내기
DROP TABLE IF EXISTS `persistent_logins`;
CREATE TABLE IF NOT EXISTS `persistent_logins` (
  `username` varchar(64) NOT NULL,
  `series` varchar(64) NOT NULL,
  `token` varchar(64) NOT NULL,
  `last_used` timestamp NOT NULL,
  PRIMARY KEY (`series`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- 내보낼 데이터가 선택되어 있지 않습니다.

-- 테이블 dibdb.restaurant 구조 내보내기
DROP TABLE IF EXISTS `restaurant`;
CREATE TABLE IF NOT EXISTS `restaurant` (
  `rno` bigint(20) NOT NULL AUTO_INCREMENT,
  `rest_name` varchar(50) NOT NULL,
  `rest_exp` varchar(255) NOT NULL,
  `rest_exp2` varchar(2000) NOT NULL,
  `rest_loc` varchar(255) NOT NULL,
  `rest_phone` varchar(20) DEFAULT NULL,
  `rest_menu` varchar(50) DEFAULT NULL,
  `rest_time` varchar(50) DEFAULT NULL,
  `rest_image` varchar(100) DEFAULT NULL,
  `moddate` datetime(6) DEFAULT current_timestamp(6),
  `regdate` datetime(6) DEFAULT current_timestamp(6),
  PRIMARY KEY (`rno`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- 내보낼 데이터가 선택되어 있지 않습니다.

-- 테이블 dibdb.restaurant_img 구조 내보내기
DROP TABLE IF EXISTS `restaurant_img`;
CREATE TABLE IF NOT EXISTS `restaurant_img` (
  `uuid` varchar(200) NOT NULL,
  `file_name` varchar(200) NOT NULL,
  `rno` bigint(20) NOT NULL,
  `ord` int(11) DEFAULT NULL,
  PRIMARY KEY (`uuid`),
  KEY `restaurant_rno_idx` (`rno`),
  CONSTRAINT `rno_fk` FOREIGN KEY (`rno`) REFERENCES `restaurant` (`rno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- 내보낼 데이터가 선택되어 있지 않습니다.

-- 테이블 dibdb.restaurant_review 구조 내보내기
DROP TABLE IF EXISTS `restaurant_review`;
CREATE TABLE IF NOT EXISTS `restaurant_review` (
  `review_no` bigint(20) NOT NULL AUTO_INCREMENT,
  `review_text` varchar(255) NOT NULL,
  `mid` varchar(50) NOT NULL,
  `review_like` tinyint(4) DEFAULT NULL,
  `rno` bigint(20) NOT NULL,
  `moddate` datetime(6) DEFAULT current_timestamp(6),
  `regdate` datetime(6) DEFAULT current_timestamp(6),
  PRIMARY KEY (`review_no`),
  KEY `restaurant_rno_idx` (`rno`),
  KEY `mid_fk_idx` (`mid`),
  CONSTRAINT `mid_fk` FOREIGN KEY (`mid`) REFERENCES `member` (`mid`),
  CONSTRAINT `rest_rno` FOREIGN KEY (`rno`) REFERENCES `restaurant` (`rno`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- 내보낼 데이터가 선택되어 있지 않습니다.

-- 테이블 dibdb.restaurant_score 구조 내보내기
DROP TABLE IF EXISTS `restaurant_score`;
CREATE TABLE IF NOT EXISTS `restaurant_score` (
  `sno` bigint(20) NOT NULL AUTO_INCREMENT,
  `review_no` bigint(20) NOT NULL,
  `mid` varchar(50) NOT NULL,
  `score` int(11) NOT NULL DEFAULT 0,
  `moddate` datetime(6) DEFAULT current_timestamp(6),
  `regdate` datetime(6) DEFAULT current_timestamp(6),
  PRIMARY KEY (`sno`),
  KEY `reply_rrno_idx` (`review_no`),
  CONSTRAINT `review_no` FOREIGN KEY (`review_no`) REFERENCES `restaurant_review` (`review_no`),
  CONSTRAINT `restaurant_score_chk_1` CHECK (`score` >= 0 and `score` <= 5)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- 내보낼 데이터가 선택되어 있지 않습니다.

-- 테이블 dibdb.tourist 구조 내보내기
DROP TABLE IF EXISTS `tourist`;
CREATE TABLE IF NOT EXISTS `tourist` (
  `tno` int(11) NOT NULL AUTO_INCREMENT,
  `tourName` varchar(200) NOT NULL,
  `tourAddr` varchar(500) NOT NULL,
  `tourOpentime` time DEFAULT NULL,
  `tourClosetime` time DEFAULT NULL,
  `tourParking` tinyint(4) DEFAULT NULL,
  `tourContent` varchar(2000) DEFAULT NULL,
  `tourImage` varchar(100) DEFAULT NULL,
  `moddate` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `regdate` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  PRIMARY KEY (`tno`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- 내보낼 데이터가 선택되어 있지 않습니다.

-- 테이블 dibdb.tourist_img 구조 내보내기
DROP TABLE IF EXISTS `tourist_img`;
CREATE TABLE IF NOT EXISTS `tourist_img` (
  `uuid` varchar(255) NOT NULL,
  `fileName` varchar(255) NOT NULL,
  `tno` int(11) NOT NULL,
  `ord` int(11) DEFAULT NULL,
  `image` blob DEFAULT NULL,
  PRIMARY KEY (`uuid`),
  KEY `T_NO_FK_idx` (`tno`),
  CONSTRAINT `T_NO_FK` FOREIGN KEY (`tno`) REFERENCES `tourist` (`tno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- 내보낼 데이터가 선택되어 있지 않습니다.

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
