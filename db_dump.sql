-- Valentina Studio --
-- MySQL dump --
-- ---------------------------------------------------------


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
-- ---------------------------------------------------------


-- CREATE DATABASE "db_codeit_test" ------------------------
CREATE DATABASE IF NOT EXISTS `db_codeit_test` CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `db_codeit_test`;
-- ---------------------------------------------------------


-- CREATE TABLE "countries" --------------------------------
-- CREATE TABLE "countries" ------------------------------------
CREATE TABLE `countries` ( 
	`id` Int( 11 ) AUTO_INCREMENT NOT NULL,
	`code` VarChar( 2 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`name` VarChar( 100 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	PRIMARY KEY ( `id` ) )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
ENGINE = InnoDB
AUTO_INCREMENT = 246;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE TABLE "users" ------------------------------------
-- CREATE TABLE "users" ----------------------------------------
CREATE TABLE `users` ( 
	`id` Int( 11 ) AUTO_INCREMENT NOT NULL,
	`name` VarChar( 60 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
	`login` VarChar( 60 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
	`email` VarChar( 60 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
	`password` VarChar( 60 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`birthdate` VarChar( 11 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`country_id` Int( 11 ) NOT NULL,
	`created_at` DateTime NOT NULL,
	`updated_at` DateTime NOT NULL,
	PRIMARY KEY ( `id` ),
	CONSTRAINT `id` UNIQUE( `id` ),
	CONSTRAINT `login` UNIQUE( `login` ),
	CONSTRAINT `email` UNIQUE( `email` ) )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
ENGINE = InnoDB
AUTO_INCREMENT = 14;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- Dump data of "countries" --------------------------------
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '1', 'AF', 'Afghanistan' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '2', 'AL', 'Albania' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '3', 'DZ', 'Algeria' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '4', 'DS', 'American Samoa' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '5', 'AD', 'Andorra' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '6', 'AO', 'Angola' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '7', 'AI', 'Anguilla' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '8', 'AQ', 'Antarctica' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '9', 'AG', 'Antigua and Barbuda' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '10', 'AR', 'Argentina' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '11', 'AM', 'Armenia' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '12', 'AW', 'Aruba' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '13', 'AU', 'Australia' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '14', 'AT', 'Austria' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '15', 'AZ', 'Azerbaijan' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '16', 'BS', 'Bahamas' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '17', 'BH', 'Bahrain' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '18', 'BD', 'Bangladesh' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '19', 'BB', 'Barbados' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '20', 'BY', 'Belarus' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '21', 'BE', 'Belgium' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '22', 'BZ', 'Belize' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '23', 'BJ', 'Benin' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '24', 'BM', 'Bermuda' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '25', 'BT', 'Bhutan' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '26', 'BO', 'Bolivia' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '27', 'BA', 'Bosnia and Herzegovina' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '28', 'BW', 'Botswana' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '29', 'BV', 'Bouvet Island' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '30', 'BR', 'Brazil' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '31', 'IO', 'British Indian Ocean Territory' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '32', 'BN', 'Brunei Darussalam' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '33', 'BG', 'Bulgaria' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '34', 'BF', 'Burkina Faso' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '35', 'BI', 'Burundi' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '36', 'KH', 'Cambodia' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '37', 'CM', 'Cameroon' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '38', 'CA', 'Canada' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '39', 'CV', 'Cape Verde' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '40', 'KY', 'Cayman Islands' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '41', 'CF', 'Central African Republic' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '42', 'TD', 'Chad' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '43', 'CL', 'Chile' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '44', 'CN', 'China' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '45', 'CX', 'Christmas Island' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '46', 'CC', 'Cocos (Keeling) Islands' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '47', 'CO', 'Colombia' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '48', 'KM', 'Comoros' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '49', 'CG', 'Congo' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '50', 'CK', 'Cook Islands' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '51', 'CR', 'Costa Rica' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '52', 'HR', 'Croatia (Hrvatska)' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '53', 'CU', 'Cuba' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '54', 'CY', 'Cyprus' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '55', 'CZ', 'Czech Republic' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '56', 'DK', 'Denmark' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '57', 'DJ', 'Djibouti' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '58', 'DM', 'Dominica' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '59', 'DO', 'Dominican Republic' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '60', 'TP', 'East Timor' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '61', 'EC', 'Ecuador' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '62', 'EG', 'Egypt' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '63', 'SV', 'El Salvador' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '64', 'GQ', 'Equatorial Guinea' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '65', 'ER', 'Eritrea' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '66', 'EE', 'Estonia' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '67', 'ET', 'Ethiopia' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '68', 'FK', 'Falkland Islands (Malvinas)' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '69', 'FO', 'Faroe Islands' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '70', 'FJ', 'Fiji' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '71', 'FI', 'Finland' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '72', 'FR', 'France' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '73', 'FX', 'France, Metropolitan' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '74', 'GF', 'French Guiana' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '75', 'PF', 'French Polynesia' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '76', 'TF', 'French Southern Territories' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '77', 'GA', 'Gabon' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '78', 'GM', 'Gambia' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '79', 'GE', 'Georgia' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '80', 'DE', 'Germany' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '81', 'GH', 'Ghana' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '82', 'GI', 'Gibraltar' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '83', 'GK', 'Guernsey' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '84', 'GR', 'Greece' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '85', 'GL', 'Greenland' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '86', 'GD', 'Grenada' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '87', 'GP', 'Guadeloupe' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '88', 'GU', 'Guam' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '89', 'GT', 'Guatemala' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '90', 'GN', 'Guinea' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '91', 'GW', 'Guinea-Bissau' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '92', 'GY', 'Guyana' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '93', 'HT', 'Haiti' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '94', 'HM', 'Heard and Mc Donald Islands' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '95', 'HN', 'Honduras' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '96', 'HK', 'Hong Kong' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '97', 'HU', 'Hungary' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '98', 'IS', 'Iceland' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '99', 'IN', 'India' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '100', 'IM', 'Isle of Man' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '101', 'ID', 'Indonesia' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '102', 'IR', 'Iran (Islamic Republic of)' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '103', 'IQ', 'Iraq' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '104', 'IE', 'Ireland' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '105', 'IL', 'Israel' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '106', 'IT', 'Italy' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '107', 'CI', 'Ivory Coast' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '108', 'JE', 'Jersey' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '109', 'JM', 'Jamaica' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '110', 'JP', 'Japan' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '111', 'JO', 'Jordan' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '112', 'KZ', 'Kazakhstan' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '113', 'KE', 'Kenya' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '114', 'KI', 'Kiribati' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '115', 'KP', 'Korea, Democratic People\'s Republic of' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '116', 'KR', 'Korea, Republic of' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '117', 'XK', 'Kosovo' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '118', 'KW', 'Kuwait' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '119', 'KG', 'Kyrgyzstan' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '120', 'LA', 'Lao People\'s Democratic Republic' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '121', 'LV', 'Latvia' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '122', 'LB', 'Lebanon' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '123', 'LS', 'Lesotho' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '124', 'LR', 'Liberia' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '125', 'LY', 'Libyan Arab Jamahiriya' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '126', 'LI', 'Liechtenstein' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '127', 'LT', 'Lithuania' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '128', 'LU', 'Luxembourg' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '129', 'MO', 'Macau' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '130', 'MK', 'Macedonia' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '131', 'MG', 'Madagascar' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '132', 'MW', 'Malawi' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '133', 'MY', 'Malaysia' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '134', 'MV', 'Maldives' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '135', 'ML', 'Mali' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '136', 'MT', 'Malta' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '137', 'MH', 'Marshall Islands' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '138', 'MQ', 'Martinique' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '139', 'MR', 'Mauritania' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '140', 'MU', 'Mauritius' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '141', 'TY', 'Mayotte' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '142', 'MX', 'Mexico' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '143', 'FM', 'Micronesia, Federated States of' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '144', 'MD', 'Moldova, Republic of' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '145', 'MC', 'Monaco' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '146', 'MN', 'Mongolia' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '147', 'ME', 'Montenegro' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '148', 'MS', 'Montserrat' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '149', 'MA', 'Morocco' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '150', 'MZ', 'Mozambique' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '151', 'MM', 'Myanmar' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '152', 'NA', 'Namibia' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '153', 'NR', 'Nauru' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '154', 'NP', 'Nepal' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '155', 'NL', 'Netherlands' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '156', 'AN', 'Netherlands Antilles' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '157', 'NC', 'New Caledonia' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '158', 'NZ', 'New Zealand' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '159', 'NI', 'Nicaragua' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '160', 'NE', 'Niger' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '161', 'NG', 'Nigeria' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '162', 'NU', 'Niue' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '163', 'NF', 'Norfolk Island' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '164', 'MP', 'Northern Mariana Islands' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '165', 'NO', 'Norway' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '166', 'OM', 'Oman' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '167', 'PK', 'Pakistan' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '168', 'PW', 'Palau' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '169', 'PS', 'Palestine' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '170', 'PA', 'Panama' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '171', 'PG', 'Papua New Guinea' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '172', 'PY', 'Paraguay' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '173', 'PE', 'Peru' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '174', 'PH', 'Philippines' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '175', 'PN', 'Pitcairn' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '176', 'PL', 'Poland' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '177', 'PT', 'Portugal' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '178', 'PR', 'Puerto Rico' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '179', 'QA', 'Qatar' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '180', 'RE', 'Reunion' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '181', 'RO', 'Romania' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '182', 'RU', 'Russian Federation' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '183', 'RW', 'Rwanda' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '184', 'KN', 'Saint Kitts and Nevis' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '185', 'LC', 'Saint Lucia' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '186', 'VC', 'Saint Vincent and the Grenadines' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '187', 'WS', 'Samoa' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '188', 'SM', 'San Marino' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '189', 'ST', 'Sao Tome and Principe' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '190', 'SA', 'Saudi Arabia' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '191', 'SN', 'Senegal' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '192', 'RS', 'Serbia' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '193', 'SC', 'Seychelles' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '194', 'SL', 'Sierra Leone' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '195', 'SG', 'Singapore' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '196', 'SK', 'Slovakia' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '197', 'SI', 'Slovenia' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '198', 'SB', 'Solomon Islands' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '199', 'SO', 'Somalia' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '200', 'ZA', 'South Africa' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '201', 'GS', 'South Georgia South Sandwich Islands' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '202', 'ES', 'Spain' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '203', 'LK', 'Sri Lanka' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '204', 'SH', 'St. Helena' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '205', 'PM', 'St. Pierre and Miquelon' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '206', 'SD', 'Sudan' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '207', 'SR', 'Suriname' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '208', 'SJ', 'Svalbard and Jan Mayen Islands' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '209', 'SZ', 'Swaziland' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '210', 'SE', 'Sweden' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '211', 'CH', 'Switzerland' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '212', 'SY', 'Syrian Arab Republic' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '213', 'TW', 'Taiwan' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '214', 'TJ', 'Tajikistan' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '215', 'TZ', 'Tanzania, United Republic of' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '216', 'TH', 'Thailand' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '217', 'TG', 'Togo' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '218', 'TK', 'Tokelau' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '219', 'TO', 'Tonga' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '220', 'TT', 'Trinidad and Tobago' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '221', 'TN', 'Tunisia' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '222', 'TR', 'Turkey' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '223', 'TM', 'Turkmenistan' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '224', 'TC', 'Turks and Caicos Islands' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '225', 'TV', 'Tuvalu' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '226', 'UG', 'Uganda' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '227', 'UA', 'Ukraine' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '228', 'AE', 'United Arab Emirates' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '229', 'GB', 'United Kingdom' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '230', 'US', 'United States' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '231', 'UM', 'United States minor outlying islands' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '232', 'UY', 'Uruguay' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '233', 'UZ', 'Uzbekistan' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '234', 'VU', 'Vanuatu' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '235', 'VA', 'Vatican City State' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '236', 'VE', 'Venezuela' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '237', 'VN', 'Vietnam' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '238', 'VG', 'Virgin Islands (British)' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '239', 'VI', 'Virgin Islands (U.S.)' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '240', 'WF', 'Wallis and Futuna Islands' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '241', 'EH', 'Western Sahara' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '242', 'YE', 'Yemen' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '243', 'ZR', 'Zaire' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '244', 'ZM', 'Zambia' );
INSERT INTO `countries`(`id`,`code`,`name`) VALUES ( '245', 'ZW', 'Zimbabwe' );
-- ---------------------------------------------------------


-- Dump data of "users" ------------------------------------
INSERT INTO `users`(`id`,`name`,`login`,`email`,`password`,`birthdate`,`country_id`,`created_at`,`updated_at`) VALUES ( '4', 'Alex Alex', 'alex', 'alex@gmail.com', 'alex', '', '1', '2017-11-09 19:10:05', '2017-11-09 19:10:05' );
INSERT INTO `users`(`id`,`name`,`login`,`email`,`password`,`birthdate`,`country_id`,`created_at`,`updated_at`) VALUES ( '7', 'Dima Dima', 'dima', 'dima@gmail.com', 'dima', '', '1', '2017-11-09 19:14:30', '2017-11-09 19:14:30' );
-- ---------------------------------------------------------


-- CREATE LINK "lnk_countries_users" -----------------------
-- CREATE LINK "lnk_countries_users" ---------------------------
ALTER TABLE `users`
	ADD CONSTRAINT `lnk_countries_users` FOREIGN KEY ( `country_id` )
	REFERENCES `countries`( `id` )
	ON DELETE Cascade
	ON UPDATE Cascade;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
-- ---------------------------------------------------------


