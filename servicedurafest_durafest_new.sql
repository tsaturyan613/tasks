-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 16, 2020 at 02:56 PM
-- Server version: 10.3.27-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `servicedurafest_durafest_new`
--

-- --------------------------------------------------------

--
-- Table structure for table `all_associations`
--

CREATE TABLE `all_associations` (
  `a_id` int(11) NOT NULL,
  `login_email` int(11) NOT NULL,
  `login_password` int(11) NOT NULL,
  `city_name` varchar(300) NOT NULL,
  `postcode` varchar(300) NOT NULL,
  `street` varchar(300) NOT NULL,
  `number` varchar(255) NOT NULL,
  `association` varchar(300) NOT NULL,
  `f_name` varchar(300) NOT NULL,
  `name` varchar(300) NOT NULL,
  `phone` varchar(300) NOT NULL,
  `gsm` varchar(300) NOT NULL,
  `email` varchar(300) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `a_status` enum('Y','N') NOT NULL DEFAULT 'Y'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `all_associations`
--

INSERT INTO `all_associations` (`a_id`, `login_email`, `login_password`, `city_name`, `postcode`, `street`, `number`, `association`, `f_name`, `name`, `phone`, `gsm`, `email`, `created_at`, `updated_at`, `a_status`) VALUES
(1, 0, 0, 'sdf', '09090', 'asda f', '654', '2', 'we r', 'we ', '465464', 'we r', 'fhhg@jhg.gjgf', '2020-05-01 12:39:08', '0000-00-00 00:00:00', 'Y'),
(2, 0, 0, 'Test', '0909', 'asdasdf', 'xcvsdvxfg', '2', 'Test', 'Name', '1234567890', 'sfdsfsdfsdf', 'moinak2003@gmail.com', '2020-05-01 12:57:55', '0000-00-00 00:00:00', 'Y'),
(3, 0, 0, 'dsdxs 1211', '09090', 'asda f', '454665', '2', 'vb', 'test', '46546546', 'we r', 'wr2@gmail.com', '2020-05-05 10:39:38', '2020-05-05 00:05:53', 'Y'),
(4, 0, 0, 'Test', '700150', 'Test', '123456', '3', 'saSAs', 'asdasdasd', 'asdasds', '1234567890', 'moinak2003@gmail.com', '2020-05-09 07:01:04', '0000-00-00 00:00:00', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `cms_aanbod`
--

CREATE TABLE `cms_aanbod` (
  `id` int(11) NOT NULL,
  `banner_image` varchar(300) NOT NULL,
  `banner_heading` varchar(300) NOT NULL,
  `banner_text` varchar(300) NOT NULL,
  `content` longtext NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cms_aanbod`
--

INSERT INTO `cms_aanbod` (`id`, `banner_image`, `banner_heading`, `banner_text`, `content`, `updated_at`) VALUES
(1, '1591103313_banner_image.jpg', 'Aanbod', 'Wat bieden we aan', '{\"content_image\":[\"1595856590_content_image.jpg\",\"1595856576_content_image.jpg\"],\"content_heading\":[\"test\",\"test2\"],\"content_text\":[\"test\",\"test2\"]}', '2020-06-02 13:08:19');

-- --------------------------------------------------------

--
-- Table structure for table `cms_bekers`
--

CREATE TABLE `cms_bekers` (
  `id` int(11) NOT NULL,
  `banner_image` varchar(300) NOT NULL,
  `banner_text_1` varchar(300) NOT NULL,
  `banner_text_2` varchar(300) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cms_bekers`
--

INSERT INTO `cms_bekers` (`id`, `banner_image`, `banner_text_1`, `banner_text_2`, `updated_at`) VALUES
(1, '1589962481_banner_image.jpg', 'Profiwash', 'Het serviceplatform voor Herbruikbare Bekers', '2020-05-19 16:56:08');

-- --------------------------------------------------------

--
-- Table structure for table `cms_bio`
--

CREATE TABLE `cms_bio` (
  `id` int(11) NOT NULL,
  `banner_image` varchar(300) NOT NULL,
  `banner_heading` varchar(300) NOT NULL,
  `banner_text` varchar(300) NOT NULL,
  `section_1_heading` varchar(300) NOT NULL,
  `section_1_content` longtext NOT NULL,
  `content` longtext NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cms_bio`
--

INSERT INTO `cms_bio` (`id`, `banner_image`, `banner_heading`, `banner_text`, `section_1_heading`, `section_1_content`, `content`, `updated_at`) VALUES
(1, '1591107110_banner_image.jpg', 'Bio', 'Ontdek wie we zijn en wat we doen.', 'Bio', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been<br />\r\n                        the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of <br />\r\n                        type and scrambled it to make a type specimen book. It has survived not only five centuries, but<br />\r\n                        also the leap into electronic typesetting, remaining essentially unchanged. ', '{\"content_image\":[\"1591107110_content_image.jpg\",\"1591107344_content_image.jpg\",\"1591107388_content_image.jpg\"],\"content_heading\":[\"Chocolatiers\",\"Verhuurbedrijven\",\"Wijnhandelaars\"],\"content_text\":[\"Praline- en chocoladevormen zijn na een seizoen zeer vervuild. Vooraleer ze opgeborgen worden voor het volgende seizoen dienen ze grondig gereinigd te worden. Zeker voor de grotere fabrikanten is dit een vermoeiende klus. Anderzijds is het zo dat de productie dan weer niet groot genoeg is voor een eigen investering in de reusachtige reinigingsmachines.\\r\\n\\r\\nseizoensproducten: sinterklaas, pasen, kerst, ....\\r\\nzeevruchtenpralines, ...\\r\\nspeciale gelegenheden\\r\\nholgoedvormen\\r\\nafslagplaten.......\",\"Verhuurbedrijven leveren toe aan verschillende cateraars, die elk weekend zeer onderscheiden feesten hebben. Deze feesten wijzigen voortdurend in samenstelling en aantal. Alle keuken-, tafel-, en horecagerei komt na het weekend pas binnen. Dit maakt dat het gerei eventueel extra spoelbeurten en\\/of schuurbeurten nodig heeft wegens de aangekoekte etensresten.Voor verhuurbedrijven kunnen\\r\\n\\r\\ntellen per deelbestelling\\r\\nverpakken per hoeveelheid\\r\\ncontroleren op de teruggeleverde kwaliteit\",\"Wijnhandelaars hebben tijdens de week zeer veel degustaties. Zij gebruiken verschillende soorten glazen voor de verschillende degustaties.\\r\\n\\r\\nSpeciale aandachtspunten namens PROFIWASH :\\r\\n\\r\\nDe glazen moeten volledig helder & reukloos zijn\\r\\nDe glazen dienen binnen de kortst mogelijke termijn terug ter beschikking te zijn\\r\\nSpeedservice\\r\\nGesorteerd te worden per soort\\r\\nZeer hoog kwaliteitsniveau\\r\\nSuper Kwaliteitscontrole\\r\\nControle van de verpakkingen\\r\\n>> Lees meer over onze services voor Chocolatiers\"]}', '2020-06-02 13:25:14');

-- --------------------------------------------------------

--
-- Table structure for table `cms_cityevenementen`
--

CREATE TABLE `cms_cityevenementen` (
  `id` int(11) NOT NULL,
  `banner_image` varchar(300) NOT NULL,
  `banner_text_1` varchar(300) NOT NULL,
  `banner_text_2` varchar(300) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cms_cityevenementen`
--

INSERT INTO `cms_cityevenementen` (`id`, `banner_image`, `banner_text_1`, `banner_text_2`, `updated_at`) VALUES
(1, '1589962481_banner_image.jpg', 'Voor Verenigingen', 'Durafest specializes in tailormade cup solutions for events,<br> sport venues, community festivals and concerts.....', '2020-05-19 16:56:08');

-- --------------------------------------------------------

--
-- Table structure for table `cms_cityproducts`
--

CREATE TABLE `cms_cityproducts` (
  `id` int(11) NOT NULL,
  `banner_image` varchar(300) NOT NULL,
  `banner_text_1` varchar(300) NOT NULL,
  `banner_text_2` varchar(300) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cms_cityproducts`
--

INSERT INTO `cms_cityproducts` (`id`, `banner_image`, `banner_text_1`, `banner_text_2`, `updated_at`) VALUES
(1, '1589962481_banner_image.jpg', 'Voor Verenigingen', 'Durafest specializes in tailormade cup solutions for events,<br> sport venues, community festivals and concerts.....', '2020-05-19 16:56:08');

-- --------------------------------------------------------

--
-- Table structure for table `cms_city_inbox`
--

CREATE TABLE `cms_city_inbox` (
  `id` int(11) NOT NULL,
  `banner_image` varchar(300) NOT NULL,
  `banner_text_1` varchar(300) NOT NULL,
  `banner_text_2` varchar(300) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cms_city_inbox`
--

INSERT INTO `cms_city_inbox` (`id`, `banner_image`, `banner_text_1`, `banner_text_2`, `updated_at`) VALUES
(1, '1589962481_banner_image.jpg', 'Voor Verenigingen', 'Durafest specializes in tailormade cup solutions for events,<br> sport venues, community festivals and concerts.....', '2020-05-19 16:56:08');

-- --------------------------------------------------------

--
-- Table structure for table `cms_contact`
--

CREATE TABLE `cms_contact` (
  `id` int(11) NOT NULL,
  `banner_image` varchar(300) NOT NULL,
  `banner_heading` varchar(300) NOT NULL,
  `banner_text` varchar(300) NOT NULL,
  `section_1_big_image` varchar(300) NOT NULL,
  `section_1_heading` varchar(300) NOT NULL,
  `section_1_content` longtext NOT NULL,
  `section_2_heading` varchar(300) NOT NULL,
  `section_2_content` longtext NOT NULL,
  `section_2_image` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cms_contact`
--

INSERT INTO `cms_contact` (`id`, `banner_image`, `banner_heading`, `banner_text`, `section_1_big_image`, `section_1_heading`, `section_1_content`, `section_2_heading`, `section_2_content`, `section_2_image`) VALUES
(1, '1591128267_banner_image.jpg', 'Contact', 'Contacteer ons.', '1591128302_section_1_big_image.jpg', 'Our History', 'Na zijn oprichting in 1989 startte Profiwash in Aarschot en Brussel eerst onder de naam Disrent (bij de cateraars is deze naam nog zeer bekend omwille van zijn kwaliteitsimago). Het bedrijf groeide uit zijn voegen en beide vestigingen werden verenigd in 1 multifunctioneel bedrijfsgebouw met een oppervlakte van 1200m² in Rotselaar. Deze locatie ligt juist naast de autosnelweg, op een boogscheut van Brussel, en biedt plaats aan niet minder dan 4 verschillende industriële productielijnen.<br />\r\n                                <br />\r\n                                In 2003 werd de naam gewijzigd in Profiwash, de reusachtige vaatwassers reinigden intussen immers ook voor ziekenhuizen en voedingsfabrikanten uit de industriële wereld. Stilaan werden er ook klanten uit alle mogelijke landsdelen en zelfs uit Frankrijk, Nederland en Duitsland bediend.<br />\r\n                                <br />\r\n                                Deze bedrijven stellen allen de professionele werkwijze van Profiwash op prijs, volgens DIN 10.300 en het HACCP-principe. De detergenten zijn ook allemaal geschikt voor gebruik in een voedingsomgeving. Exporteurs naar het VK en USA waarderen dit', 'Profiwash', '<p>Wingepark 4a <br />\r\n\r\n                                3110 Rotselaar<br />\r\n                                <br />\r\n                                Tel. (Administratie): 016/24.14.81<br />\r\n\r\n                                Tel. (Productie): 016/24.14.86\r\n                            </p>\r\n\r\n                            <a href=\"#\" class=\"info\">info@profiwash.be</a>\r\n\r\n\r\n                            <p>Ondernemingsnummer<br />\r\n\r\n                                BE 0479.870.579\r\n                            </p>\r\n\r\n\r\n\r\n                            <h4 class=\"profi\">Profiwash is op volgende dagen gesloten.</h4>\r\n\r\n                            <table width=\"100%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n                                <tr>\r\n                                    <td class=\"ta\">Paasmaandag</td>\r\n                                    <td class=\"taone\">Maandag, 13 april 2020</td>\r\n                                </tr>\r\n                                <tr>\r\n                                    <td class=\"ta\">Dag van de arbeid</td>\r\n                                    <td class=\"taone\">Vrijdag, 1 mei 2020</td>\r\n                                </tr>\r\n                                <tr>\r\n                                    <td class=\"ta\">O.H. Hemelvaart</td>\r\n                                    <td class=\"taone\">Donderdag, 21 mei 2020</td>\r\n                                </tr>\r\n                                <tr>\r\n                                    <td class=\"ta\">Pinkstermaandag</td>\r\n                                    <td class=\"taone\">Maandag, 1 juni 2020</td>\r\n                                </tr>\r\n                                <tr>\r\n                                    <td class=\"ta\">Nationale feestdag	</td>\r\n                                    <td class=\"taone\">Dinsdag, 21 juli 2020</td>\r\n                                </tr>\r\n                                <tr>\r\n                                    <td class=\"ta\">Wapenstilstand	</td>\r\n                                    <td class=\"taone\">Woensdag, 11 november 2020</td>\r\n                                </tr>\r\n                                <tr>\r\n                                    <td class=\"ta\">Kerstmis</td>\r\n                                    <td class=\"taone\">Vrijdag, 25 december 2020</td>\r\n                                </tr>\r\n                                <tr>\r\n                                    <td class=\"ta\">Nieuwjaar</td>\r\n                                    <td class=\"taone\">Vrijdag, 1 januari 2021</td>\r\n                                </tr>\r\n                            </table>', '1591128329_section_2_image.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `cms_home`
--

CREATE TABLE `cms_home` (
  `id` int(11) NOT NULL,
  `banner_image` varchar(300) NOT NULL,
  `banner_text_1` varchar(300) NOT NULL,
  `banner_text_2` varchar(300) NOT NULL,
  `banner_text_3` varchar(300) NOT NULL,
  `banner_btn_1_text` varchar(300) NOT NULL,
  `banner_btn_1_url` varchar(300) NOT NULL,
  `banner_btn_2_text` varchar(300) NOT NULL,
  `banner_btn_2_url` varchar(300) NOT NULL,
  `service_headind_1` varchar(300) NOT NULL,
  `service_content_1` varchar(300) NOT NULL,
  `service_icon_1` varchar(300) NOT NULL,
  `service_headind_2` varchar(300) NOT NULL,
  `service_content_2` varchar(300) NOT NULL,
  `service_icon_2` varchar(300) NOT NULL,
  `service_headind_3` varchar(300) NOT NULL,
  `service_content_3` varchar(300) NOT NULL,
  `service_icon_3` varchar(300) NOT NULL,
  `service_headind_4` varchar(300) NOT NULL,
  `service_content_4` varchar(300) NOT NULL,
  `service_icon_4` varchar(300) NOT NULL,
  `testimonial_heading` varchar(300) NOT NULL,
  `testimonial_content` varchar(300) NOT NULL,
  `testimonial_author` varchar(300) NOT NULL,
  `testimonial_image` varchar(300) NOT NULL,
  `testimonial_btn_text` varchar(300) NOT NULL,
  `testimonial_btn_url` varchar(300) NOT NULL,
  `section_1_heading` varchar(300) NOT NULL,
  `section_1_content` varchar(300) NOT NULL,
  `section_1_sub_content` varchar(300) NOT NULL,
  `section_1_big_image` varchar(300) NOT NULL,
  `section_1_btn_text` varchar(300) NOT NULL,
  `section_1_btn_url` varchar(300) NOT NULL,
  `call_now_number` varchar(300) NOT NULL,
  `mail_us_email` varchar(300) NOT NULL,
  `section_2_heading` varchar(300) NOT NULL,
  `section_2_content` varchar(300) NOT NULL,
  `section_2_big_image` varchar(300) NOT NULL,
  `happy_clients` varchar(300) NOT NULL,
  `awards` varchar(300) NOT NULL,
  `employees` varchar(300) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cms_home`
--

INSERT INTO `cms_home` (`id`, `banner_image`, `banner_text_1`, `banner_text_2`, `banner_text_3`, `banner_btn_1_text`, `banner_btn_1_url`, `banner_btn_2_text`, `banner_btn_2_url`, `service_headind_1`, `service_content_1`, `service_icon_1`, `service_headind_2`, `service_content_2`, `service_icon_2`, `service_headind_3`, `service_content_3`, `service_icon_3`, `service_headind_4`, `service_content_4`, `service_icon_4`, `testimonial_heading`, `testimonial_content`, `testimonial_author`, `testimonial_image`, `testimonial_btn_text`, `testimonial_btn_url`, `section_1_heading`, `section_1_content`, `section_1_sub_content`, `section_1_big_image`, `section_1_btn_text`, `section_1_btn_url`, `call_now_number`, `mail_us_email`, `section_2_heading`, `section_2_content`, `section_2_big_image`, `happy_clients`, `awards`, `employees`, `updated_at`) VALUES
(1, '1589962481_banner_image.jpg', 'Het serviceplatform voor', 'Herbruikbare Bekers', 'Durafest specializes in tailormade cup solutions for events,<br>\r\n sport venues, community festivals and concerts.', 'Our Services', 'https://serviceplatform.durafest.be/new/aanbod', 'Account aanmaken', 'https://serviceplatform.durafest.be/new/profiwashvoorverenigingen', 'Herbruikbare Bekers', 'Content of a page when looking its \r\n layout. The point of using Lorem\r\nIpsum is that it hasnormal', '1589962604_service_icon_1.png', 'Herbruikbare Bekers', 'Content of a page when looking its \r\n layout. The point of using Lorem\r\nIpsum is that it hasnormal', '1589962983_service_icon_2.png', 'Afwassen & Verpakken', 'Content of a page when looking its\r\n layout. The point of using Lorem\r\nIpsum is that it hasnormal', '1589962983_service_icon_3.png', 'Kratten & Korven', 'Content of a page when looking its \r\n layout. The point of using Lorem\r\nIpsum is that it hasnormal', '1589962983_service_icon_4.png', 'Testimonials', 'Lorem Ipsum is simply dummy text of the printing typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since', '  Mark Wilson', '1589963061_testimonial_image.png', 'Creëer hier uw account', 'https://serviceplatform.durafest.be/new/profiwashvoorverenigingen', 'Durafest', 'Op dit platform kunnen steden,grmeenten en hun verenigingen\r\nherbruikbare bekers huren.Het leveren en terugbezorgen kan op\r\nhet event,aan een afhaalpunt of bij ons in Rotselaar.', 'De bekers worden na het event op professionele wijze gereinigd en gedroogd in\r\nspeciale wasstraten. Via je account kan je de rapportering van al je evenementen\r\nopvolgen. Veel plezier!', '1589963061_section_1_big_image.jpg', 'Meer info', '#', '+32 472 985 637', 'sales@durafest.be', 'What we do?', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the ', '1589963400_section_2_big_image.jpg', '2500', '38', '350', '2020-05-19 16:56:08');

-- --------------------------------------------------------

--
-- Table structure for table `cms_inbox`
--

CREATE TABLE `cms_inbox` (
  `id` int(11) NOT NULL,
  `banner_image` varchar(300) NOT NULL,
  `banner_text_1` varchar(300) NOT NULL,
  `banner_text_2` varchar(300) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cms_inbox`
--

INSERT INTO `cms_inbox` (`id`, `banner_image`, `banner_text_1`, `banner_text_2`, `updated_at`) VALUES
(1, '1589962481_banner_image.jpg', 'Profiwash', 'Het serviceplatform voor Herbruikbare Bekers', '2020-05-19 16:56:08');

-- --------------------------------------------------------

--
-- Table structure for table `cms_mijidashboard`
--

CREATE TABLE `cms_mijidashboard` (
  `id` int(11) NOT NULL,
  `banner_image` varchar(300) NOT NULL,
  `banner_text_1` varchar(300) NOT NULL,
  `banner_text_2` varchar(300) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cms_mijidashboard`
--

INSERT INTO `cms_mijidashboard` (`id`, `banner_image`, `banner_text_1`, `banner_text_2`, `updated_at`) VALUES
(1, '1589962481_banner_image.jpg', 'Dashboard', 'Durafest specializes in tailormade cup solutions for events,<br> sport venues, community festivals and concerts.....', '2020-05-19 16:56:08');

-- --------------------------------------------------------

--
-- Table structure for table `cms_mijievenementen`
--

CREATE TABLE `cms_mijievenementen` (
  `id` int(11) NOT NULL,
  `banner_image` varchar(300) NOT NULL,
  `banner_text_1` varchar(300) NOT NULL,
  `banner_text_2` varchar(300) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cms_mijievenementen`
--

INSERT INTO `cms_mijievenementen` (`id`, `banner_image`, `banner_text_1`, `banner_text_2`, `updated_at`) VALUES
(1, '1589962481_banner_image.jpg', 'Profiwash', 'Het serviceplatform voor Herbruikbare Bekers', '2020-05-19 16:56:08');

-- --------------------------------------------------------

--
-- Table structure for table `cms_missie`
--

CREATE TABLE `cms_missie` (
  `id` int(11) NOT NULL,
  `banner_image` varchar(300) NOT NULL,
  `banner_heading` varchar(300) NOT NULL,
  `banner_text` varchar(300) NOT NULL,
  `section_1_big_image` varchar(300) NOT NULL,
  `section_1_heading` varchar(300) NOT NULL,
  `section_1_content` longtext NOT NULL,
  `section_2_heading` varchar(300) NOT NULL,
  `section_2_content` varchar(300) NOT NULL,
  `section_2_image` varchar(300) NOT NULL,
  `section_3_heading` varchar(300) NOT NULL,
  `section_3_content` varchar(300) NOT NULL,
  `section_3_image` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cms_missie`
--

INSERT INTO `cms_missie` (`id`, `banner_image`, `banner_heading`, `banner_text`, `section_1_big_image`, `section_1_heading`, `section_1_content`, `section_2_heading`, `section_2_content`, `section_2_image`, `section_3_heading`, `section_3_content`, `section_3_image`) VALUES
(1, '1591109281_banner_image.jpg', 'Referenties', 'Durafest specializes in tailormade cup solutions for events, sport venues, community festivals and concerts.', '1591109281_section_1_big_image.jpg', 'Missie', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been<br />\r\n                        the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of <br />\r\n                        type and scrambled it to make a type specimen book. It has survived not only five centuries, but<br />\r\n                        also the leap into electronic typesetting, remaining essentially unchanged.', 'Our mission', 'Lorem Ipsum is simply dummy text of the printing typesetting. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer', '1591109360_section_2_image.png', 'Our vision', 'Lorem Ipsum is simply dummy text of the printing typesetting. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer', '1591109281_section_3_image.png');

-- --------------------------------------------------------

--
-- Table structure for table `cms_products`
--

CREATE TABLE `cms_products` (
  `id` int(11) NOT NULL,
  `banner_image` varchar(300) NOT NULL,
  `banner_text_1` varchar(300) NOT NULL,
  `banner_text_2` varchar(300) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cms_products`
--

INSERT INTO `cms_products` (`id`, `banner_image`, `banner_text_1`, `banner_text_2`, `updated_at`) VALUES
(1, '1589962481_banner_image.jpg', 'Profiwash', 'Het serviceplatform voor Herbruikbare Bekers', '2020-05-19 16:56:08');

-- --------------------------------------------------------

--
-- Table structure for table `cms_referenties`
--

CREATE TABLE `cms_referenties` (
  `id` int(11) NOT NULL,
  `banner_image` varchar(300) NOT NULL,
  `banner_heading` varchar(300) NOT NULL,
  `banner_text` varchar(300) NOT NULL,
  `section_1_big_image` varchar(300) NOT NULL,
  `section_1_heading` varchar(300) NOT NULL,
  `section_1_content` varchar(300) NOT NULL,
  `happy_clients` varchar(300) NOT NULL,
  `awards` varchar(300) NOT NULL,
  `employees` varchar(300) NOT NULL,
  `testimonial_heading` varchar(300) NOT NULL,
  `testimonial_content` varchar(300) NOT NULL,
  `testimonial_author` varchar(300) NOT NULL,
  `section_2_heading` varchar(300) NOT NULL,
  `section_2_content` varchar(300) NOT NULL,
  `section_2_image` varchar(300) NOT NULL,
  `section_3_heading` varchar(300) NOT NULL,
  `section_3_content` varchar(300) NOT NULL,
  `section_3_image` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cms_referenties`
--

INSERT INTO `cms_referenties` (`id`, `banner_image`, `banner_heading`, `banner_text`, `section_1_big_image`, `section_1_heading`, `section_1_content`, `happy_clients`, `awards`, `employees`, `testimonial_heading`, `testimonial_content`, `testimonial_author`, `section_2_heading`, `section_2_content`, `section_2_image`, `section_3_heading`, `section_3_content`, `section_3_image`) VALUES
(1, '1591105321_banner_image.jpg', 'Referenties', 'Wat zeggen onze klanten.', '1591105321_section_1_big_image.jpg', 'Referenties', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the ', '2500', '38', '350', '', 'Phasellus vitae suscipit justo. Mauris pharetra feugiat ante id lacinia. Etiam faucibus mauris id tempor egestas. Duis luctus turpis at accumsan tincidunt. Phasellus risus risus, volutpat vel tellus ac, tincidunt fringilla massa. Etiam hendrerit dolor eget rutrum.', 'MICHAEL HOLZ', 'Our mission', 'Lorem Ipsum is simply dummy text of the printing typesetting. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer', '1591105430_section_2_image.png', 'Our vision', 'Lorem Ipsum is simply dummy text of the printing typesetting. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer', '1591105430_section_3_image.png');

-- --------------------------------------------------------

--
-- Table structure for table `cms_vereniging`
--

CREATE TABLE `cms_vereniging` (
  `id` int(11) NOT NULL,
  `banner_image` varchar(300) NOT NULL,
  `banner_text_1` varchar(300) NOT NULL,
  `banner_text_2` varchar(300) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cms_vereniging`
--

INSERT INTO `cms_vereniging` (`id`, `banner_image`, `banner_text_1`, `banner_text_2`, `updated_at`) VALUES
(1, '1589962481_banner_image.jpg', 'Profiwash', 'Het serviceplatform voor Herbruikbare Bekers', '2020-05-19 16:56:08');

-- --------------------------------------------------------

--
-- Table structure for table `contact_msg`
--

CREATE TABLE `contact_msg` (
  `id` int(11) NOT NULL,
  `name` varchar(300) NOT NULL,
  `email` varchar(300) NOT NULL,
  `phone` varchar(300) NOT NULL,
  `tools` varchar(300) NOT NULL,
  `msg` varchar(300) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact_msg`
--

INSERT INTO `contact_msg` (`id`, `name`, `email`, `phone`, `tools`, `msg`, `created_at`) VALUES
(1, 'test', 'sg@fg.fg', '46546546', '[\"Framer X\",\"Photoshop\"]', 'cbfhhnj juh ujk', '2020-06-02 20:19:15'),
(2, '', '', '', '[\"Framer X\"]', '', '2020-07-27 08:25:18'),
(3, 'sfdvddfvdf', 'dfvdv', 'dfgvdv', '[\"Photoshop\"]', 'fvdvd', '2020-07-27 08:25:47'),
(4, '', '', '', '[\"Framer X\"]', '', '2020-07-27 08:26:36');

-- --------------------------------------------------------

--
-- Table structure for table `gemeenten`
--

CREATE TABLE `gemeenten` (
  `g_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `added_by` enum('City','Admin') NOT NULL,
  `login_email` varchar(300) NOT NULL,
  `login_password` varchar(300) NOT NULL,
  `city_name` varchar(255) NOT NULL,
  `post_code` varchar(255) NOT NULL,
  `street` varchar(255) NOT NULL,
  `number` varchar(255) NOT NULL,
  `contact_details` longtext NOT NULL,
  `g_status` enum('Y','N') NOT NULL DEFAULT 'N',
  `g_create_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gemeenten`
--

INSERT INTO `gemeenten` (`g_id`, `user_id`, `added_by`, `login_email`, `login_password`, `city_name`, `post_code`, `street`, `number`, `contact_details`, `g_status`, `g_create_time`, `updated_at`) VALUES
(1, 0, 'City', '', '', 'sdf', '35345', 'rgt', '3545', '{\"Voornaam\":[\"rt\",\"d f\"],\"Naam\":[\"rt\",\"fg\"],\"Dienst\":[\"srt\",\"ghd\"],\"Functie\":[\"g\",\"gh\"],\"Telefoon\":[\"3545\",\"4546\"],\"GSM\":[\"45435\",\"dghh\"],\"Emailadres\":[\"fgsg@sg.fb\",\"fg@zfh.vgjh\"]}', 'N', '2020-04-28 06:18:41', '0000-00-00 00:00:00'),
(2, 0, 'City', '', '', 'Waregem', '8790', 'Zuiderpromenade', '49', '{\"Voornaam\":[\"Voornaam\"],\"Naam\":[\"Naam\"],\"Dienst\":[\"Dienst\"],\"Functie\":[\"Functie\"],\"Telefoon\":[\"Telefoo\"],\"GSM\":[\"gsm\"],\"Emailadres\":[\"email\"]}', 'N', '2020-04-28 06:18:41', '0000-00-00 00:00:00'),
(3, 0, 'City', '', '', 'test', '9820', 'test', 'test', '{\"Voornaam\":[\"tes\"],\"Naam\":[\"test\"],\"Dienst\":[\"test\"],\"Functie\":[\"ste\"],\"Telefoon\":[\"test\"],\"GSM\":[\"04932\"],\"Emailadres\":[\"info@mtea.be\"]}', 'Y', '2020-04-28 06:18:41', '0000-00-00 00:00:00'),
(4, 0, 'City', '', '', 'GHAZIABAD', '201014', '477 B', '66', '{\"Voornaam\":[\"Abhi\"],\"Naam\":[\"saurabh kumar\"],\"Dienst\":[\"88\"],\"Functie\":[\"00\"],\"Telefoon\":[\"9717129324\"],\"GSM\":[\"yyy\"],\"Emailadres\":[\"baggit789@gmail.com\"]}', 'N', '2020-04-28 06:18:41', '0000-00-00 00:00:00'),
(5, 0, 'Admin', '', '', 'ewr3438888', '3435', 'gdf', '4545', '{\"Voornaam\":[\"edf\",\"gfh1211\"],\"Naam\":[\"sgg\",\"thh\"],\"Dienst\":[\"dgdh\",\"fdf\"],\"Functie\":[\"gdhfgh\",\"fghh\"],\"Telefoon\":[\"45345\",\"34435\"],\"GSM\":[\"346\",\"46\"],\"Emailadres\":[\"dg@g.dfg\",\"dfg@f.dg\"]}', 'Y', '2020-05-04 13:26:58', '2020-05-04 01:05:30');

-- --------------------------------------------------------

--
-- Table structure for table `inbox`
--

CREATE TABLE `inbox` (
  `id` int(11) NOT NULL,
  `to_u_id` varchar(300) NOT NULL,
  `created_u_id` varchar(300) NOT NULL,
  `created_by` varchar(300) NOT NULL,
  `message` varchar(300) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `status` enum('Y','N') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inbox`
--

INSERT INTO `inbox` (`id`, `to_u_id`, `created_u_id`, `created_by`, `message`, `created_at`, `status`) VALUES
(1, 'undefined', '1', 'Admin', 'Hi, Your requested event [ ID: 4 ] is Ativated.', '2020-05-14 20:37:04', 'Y'),
(2, 'undefined', '1', 'Admin', 'Hi, Your requested event [ ID: 4 ] is Inacive.', '2020-05-14 20:37:39', 'Y'),
(3, '7', '1', 'Admin', 'Hi, Your requested event [ ID: 4 ] is Ativated.', '2020-05-14 20:40:27', 'Y'),
(4, '12', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 7. We will get back to you soon.', '2020-05-14 20:57:00', 'Y'),
(5, '7', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 8. We will get back to you soon.', '2020-05-15 15:50:06', 'Y'),
(6, '19', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 9. We will get back to you soon.', '2020-05-16 11:42:13', 'Y'),
(7, '19', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 10. We will get back to you soon.', '2020-05-16 11:43:21', 'Y'),
(8, '19', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 11. We will get back to you soon.', '2020-05-16 11:45:20', 'Y'),
(9, '20', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 12. We will get back to you soon.', '2020-05-16 11:56:44', 'Y'),
(10, '2', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 13. We will get back to you soon.', '2020-05-17 20:01:02', 'Y'),
(11, '2', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 14. We will get back to you soon.', '2020-05-17 20:02:13', 'Y'),
(12, '2', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 1. We will get back to you soon.', '2020-05-17 21:33:56', 'Y'),
(13, '19', '1', 'Admin', 'Hi, Your requested event [ ID: 10 ] is Ativated.', '2020-05-18 07:09:22', 'Y'),
(14, 'undefined', '1', 'Admin', 'Hi, Your requested event [ ID: 10 ] is Inacive.', '2020-05-18 07:09:24', 'Y'),
(15, '25', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 15. We will get back to you soon.', '2020-05-18 07:25:39', 'Y'),
(16, '7', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 16. We will get back to you soon.', '2020-05-23 09:35:06', 'Y'),
(17, '2', '1', 'Admin', 'Hi, Your requested event [ ID: 1 ] is Inacive.', '2020-05-23 09:37:38', 'Y'),
(18, 'undefined', '1', 'Admin', 'Hi, Your requested event [ ID: 1 ] is Ativated.', '2020-05-23 09:37:39', 'Y'),
(19, '32', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 17. We will get back to you soon.', '2020-05-23 14:11:44', 'Y'),
(20, '31', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 18. We will get back to you soon.', '2020-05-23 16:22:19', 'Y'),
(21, '32', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 19. We will get back to you soon.', '2020-05-23 16:27:06', 'Y'),
(22, '31', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 2. We will get back to you soon.', '2020-05-23 19:57:17', 'Y'),
(23, '31', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 20. We will get back to you soon.', '2020-05-23 19:59:00', 'Y'),
(24, '31', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 21. We will get back to you soon.', '2020-05-23 20:09:50', 'Y'),
(25, '44', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 22. We will get back to you soon.', '2020-05-25 16:02:01', 'Y'),
(26, '44', '1', 'Admin', 'Hi, Your requested event [ ID: 22 ] is Ativated.', '2020-05-25 16:03:27', 'Y'),
(27, '44', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 23. We will get back to you soon.', '2020-05-25 17:42:02', 'Y'),
(28, '71', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 24. We will get back to you soon.', '2020-05-29 10:15:18', 'Y'),
(29, '71', '1', 'Admin', 'Hi, Your requested event [ ID: 24 ] is Ativated.', '2020-05-29 10:15:48', 'Y'),
(30, '24', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 25. We will get back to you soon.', '2020-06-09 14:59:43', 'Y'),
(31, '24', '1', 'Admin', 'Hi, Your requested event [ ID: 25 ] is Ativated.', '2020-06-09 15:00:30', 'Y'),
(32, '74', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 26. We will get back to you soon.', '2020-06-09 15:02:49', 'Y'),
(33, '74', '1', 'Admin', 'Hi, Your requested event [ ID: 26 ] is Ativated.', '2020-06-09 15:03:44', 'Y'),
(34, '75', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 27. We will get back to you soon.', '2020-06-10 14:20:22', 'Y'),
(35, '75', '1', 'Admin', 'Hi, Your requested event [ ID: 27 ] is Ativated.', '2020-06-10 14:23:09', 'Y'),
(36, '71', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 28. We will get back to you soon.', '2020-06-10 17:22:50', 'Y'),
(37, '71', '1', 'Admin', 'Hi, Your requested event [ ID: 28 ] is Ativated.', '2020-06-10 17:24:33', 'Y'),
(38, '71', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 29. We will get back to you soon.', '2020-06-10 17:25:37', 'Y'),
(39, '71', '1', 'Admin', 'Hi, Your requested event [ ID: 29 ] is Ativated.', '2020-06-10 17:26:05', 'Y'),
(40, '7', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 30. We will get back to you soon.', '2020-06-11 13:31:44', 'Y'),
(41, '71', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 31. We will get back to you soon.', '2020-06-13 11:57:02', 'Y'),
(42, '7', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 32. We will get back to you soon.', '2020-06-16 08:38:55', 'Y'),
(43, '76', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 33. We will get back to you soon.', '2020-06-16 09:23:31', 'Y'),
(44, '76', '1', 'Admin', 'Hi, Your requested event [ ID: 33 ] is Ativated.', '2020-06-16 09:41:18', 'Y'),
(45, '76', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 33 ]  By Admin.', '2020-06-16 10:31:34', 'Y'),
(46, '7', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 16 ]  By Admin.', '2020-06-16 12:15:18', 'Y'),
(47, '76', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 34. We will get back to you soon.', '2020-06-16 12:25:16', 'Y'),
(48, '71', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 35. We will get back to you soon.', '2020-06-17 12:58:03', 'Y'),
(49, '71', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 35 ]  By Admin.', '2020-06-20 13:29:58', 'Y'),
(50, '7', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 36. We will get back to you soon.', '2020-06-26 07:55:08', 'Y'),
(51, '7', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 37. We will get back to you soon.', '2020-06-26 08:53:29', 'Y'),
(52, '7', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 38. We will get back to you soon.', '2020-07-02 07:03:05', 'Y'),
(53, '4', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 3. We will get back to you soon.', '2020-07-02 09:09:38', 'Y'),
(54, '7', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 39. We will get back to you soon.', '2020-07-16 11:16:46', 'Y'),
(55, '7', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 40. We will get back to you soon.', '2020-07-16 12:38:13', 'Y'),
(56, '7', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 41. We will get back to you soon.', '2020-07-16 13:12:24', 'Y'),
(57, '4', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 42. We will get back to you soon.', '2020-07-16 15:05:52', 'Y'),
(58, '4', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 43. We will get back to you soon.', '2020-07-16 16:00:20', 'Y'),
(59, '7', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 44. We will get back to you soon.', '2020-07-17 08:03:24', 'Y'),
(60, '7', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 45. We will get back to you soon.', '2020-07-17 08:26:45', 'Y'),
(61, '7', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 46. We will get back to you soon.', '2020-07-17 08:54:34', 'Y'),
(62, '7', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 47. We will get back to you soon.', '2020-07-17 09:08:03', 'Y'),
(63, '4', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 48. We will get back to you soon.', '2020-07-17 09:30:44', 'Y'),
(64, '7', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 49. We will get back to you soon.', '2020-07-17 11:13:40', 'Y'),
(65, '7', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 4. We will get back to you soon.', '2020-07-17 12:47:12', 'Y'),
(66, '7', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 5. We will get back to you soon.', '2020-07-17 13:16:24', 'Y'),
(67, '7', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 50. We will get back to you soon.', '2020-07-17 15:14:56', 'Y'),
(68, '4', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 51. We will get back to you soon.', '2020-07-17 15:18:53', 'Y'),
(69, '7', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 52. We will get back to you soon.', '2020-07-17 15:33:14', 'Y'),
(70, '4', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 53. We will get back to you soon.', '2020-07-18 07:06:07', 'Y'),
(71, '4', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 54. We will get back to you soon.', '2020-07-18 07:08:20', 'Y'),
(72, '4', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 55. We will get back to you soon.', '2020-07-18 07:11:06', 'Y'),
(73, '4', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 6. We will get back to you soon.', '2020-07-18 08:13:09', 'Y'),
(74, '4', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 7. We will get back to you soon.', '2020-07-18 08:25:20', 'Y'),
(75, '4', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 8. We will get back to you soon.', '2020-07-18 08:26:43', 'Y'),
(76, '4', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 9. We will get back to you soon.', '2020-07-18 08:34:37', 'Y'),
(77, '4', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 10. We will get back to you soon.', '2020-07-18 18:22:22', 'Y'),
(78, '4', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 56. We will get back to you soon.', '2020-07-18 18:23:04', 'Y'),
(79, '4', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 42 ]  By Admin.', '2020-07-18 18:30:49', 'Y'),
(80, '4', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 42 ]  By Admin.', '2020-07-18 19:03:52', 'Y'),
(81, '4', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 43 ]  By Admin.', '2020-07-18 19:07:18', 'Y'),
(82, '4', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 57. We will get back to you soon.', '2020-07-18 19:24:04', 'Y'),
(83, '4', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 58. We will get back to you soon.', '2020-07-18 19:27:28', 'Y'),
(84, '7', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 59. We will get back to you soon.', '2020-07-18 19:30:45', 'Y'),
(85, '7', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 60. We will get back to you soon.', '2020-07-18 19:36:23', 'Y'),
(86, '7', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 61. We will get back to you soon.', '2020-07-18 19:42:48', 'Y'),
(87, '7', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 62. We will get back to you soon.', '2020-07-18 19:44:33', 'Y'),
(88, '4', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 63. We will get back to you soon.', '2020-07-18 19:45:53', 'Y'),
(89, '4', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 64. We will get back to you soon.', '2020-07-18 19:48:15', 'Y'),
(90, '4', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 65. We will get back to you soon.', '2020-07-18 19:51:28', 'Y'),
(91, '4', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 66. We will get back to you soon.', '2020-07-18 19:54:47', 'Y'),
(92, '7', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 67. We will get back to you soon.', '2020-07-18 19:59:43', 'Y'),
(93, '7', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 68. We will get back to you soon.', '2020-07-18 20:07:05', 'Y'),
(94, '7', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 69. We will get back to you soon.', '2020-07-18 20:09:41', 'Y'),
(95, '4', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 70. We will get back to you soon.', '2020-07-18 20:16:37', 'Y'),
(96, '7', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 71. We will get back to you soon.', '2020-07-18 20:20:40', 'Y'),
(97, '7', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 72. We will get back to you soon.', '2020-07-18 20:24:43', 'Y'),
(98, '4', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 73. We will get back to you soon.', '2020-07-18 20:26:18', 'Y'),
(99, '4', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 11. We will get back to you soon.', '2020-07-18 20:27:06', 'Y'),
(100, '4', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 12. We will get back to you soon.', '2020-07-18 20:27:33', 'Y'),
(101, '7', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 74. We will get back to you soon.', '2020-07-18 20:41:25', 'Y'),
(102, '7', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 75. We will get back to you soon.', '2020-07-18 20:47:58', 'Y'),
(103, '7', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 76. We will get back to you soon.', '2020-07-18 21:18:46', 'Y'),
(104, '7', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 77. We will get back to you soon.', '2020-07-18 21:20:46', 'Y'),
(105, '7', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 78. We will get back to you soon.', '2020-07-18 21:21:32', 'Y'),
(106, '4', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 79. We will get back to you soon.', '2020-07-19 06:53:26', 'Y'),
(107, '4', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 80. We will get back to you soon.', '2020-07-19 07:09:08', 'Y'),
(108, '4', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 81. We will get back to you soon.', '2020-07-19 07:23:23', 'Y'),
(109, '7', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 82. We will get back to you soon.', '2020-07-19 07:49:32', 'Y'),
(110, '7', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 83. We will get back to you soon.', '2020-07-19 07:57:23', 'Y'),
(111, '7', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 84. We will get back to you soon.', '2020-07-19 08:01:49', 'Y'),
(112, '4', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 85. We will get back to you soon.', '2020-07-19 09:19:36', 'Y'),
(113, '2', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 13. We will get back to you soon.', '2020-07-19 09:27:48', 'Y'),
(114, '4', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 14. We will get back to you soon.', '2020-07-19 09:55:43', 'Y'),
(115, '2', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 86. We will get back to you soon.', '2020-07-19 10:36:47', 'Y'),
(116, '7', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 87. We will get back to you soon.', '2020-07-19 11:17:44', 'Y'),
(117, '7', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 88. We will get back to you soon.', '2020-07-19 11:19:09', 'Y'),
(118, '7', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 89. We will get back to you soon.', '2020-07-19 11:55:45', 'Y'),
(119, '4', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 90. We will get back to you soon.', '2020-07-19 11:57:18', 'Y'),
(120, '4', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 91. We will get back to you soon.', '2020-07-19 11:58:47', 'Y'),
(121, '4', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 92. We will get back to you soon.', '2020-07-20 12:26:51', 'Y'),
(122, '7', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 93. We will get back to you soon.', '2020-07-20 14:58:49', 'Y'),
(123, '81', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 94. We will get back to you soon.', '2020-07-22 10:01:11', 'Y'),
(124, '82', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 95. We will get back to you soon.', '2020-07-22 10:03:12', 'Y'),
(125, '81', '1', 'Admin', 'Hi, Your requested event [ ID: 94 ] is Ativated.', '2020-07-22 10:14:32', 'Y'),
(126, '81', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 94 ]  By Admin.', '2020-07-22 10:19:19', 'Y'),
(127, '81', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 96. We will get back to you soon.', '2020-07-22 10:35:13', 'Y'),
(128, '81', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 96 ]  By Admin.', '2020-07-22 11:49:48', 'Y'),
(129, '7', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 97. We will get back to you soon.', '2020-07-22 13:28:37', 'Y'),
(130, '85', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 98. We will get back to you soon.', '2020-07-23 10:07:43', 'Y'),
(131, '4', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 99. We will get back to you soon.', '2020-07-23 11:56:17', 'Y'),
(132, '4', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 100. We will get back to you soon.', '2020-07-23 12:11:05', 'Y'),
(133, '4', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 101. We will get back to you soon.', '2020-07-23 15:43:32', 'Y'),
(134, '7', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 102. We will get back to you soon.', '2020-07-23 17:07:28', 'Y'),
(135, '7', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 103. We will get back to you soon.', '2020-07-23 17:31:55', 'Y'),
(136, '87', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 104. We will get back to you soon.', '2020-07-23 19:10:32', 'Y'),
(137, '87', '1', 'Admin', 'Hi, Your requested event [ ID: 104 ] is Ativated.', '2020-07-23 19:12:14', 'Y'),
(138, '87', '1', 'Admin', 'Hi, Your requested event [ ID: 104 ] is Inacive.', '2020-07-23 19:18:08', 'Y'),
(139, 'undefined', '1', 'Admin', 'Hi, Your requested event [ ID: 104 ] is Ativated.', '2020-07-23 19:19:40', 'Y'),
(140, '87', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 105. We will get back to you soon.', '2020-07-23 19:25:33', 'Y'),
(141, '87', '1', 'Admin', 'Hi, Your requested event [ ID: 105 ] is Ativated.', '2020-07-23 19:26:18', 'Y'),
(142, '87', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 106. We will get back to you soon.', '2020-07-23 19:38:14', 'Y'),
(143, '87', '1', 'Admin', 'Hi, Your requested event [ ID: 106 ] is Ativated.', '2020-07-23 19:39:30', 'Y'),
(144, '87', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 107. We will get back to you soon.', '2020-07-23 19:53:50', 'Y'),
(145, '87', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 108. We will get back to you soon.', '2020-07-23 19:55:34', 'Y'),
(146, '87', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 109. We will get back to you soon.', '2020-07-23 19:56:17', 'Y'),
(147, '87', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 110. We will get back to you soon.', '2020-07-23 20:07:39', 'Y'),
(148, '87', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 111. We will get back to you soon.', '2020-07-23 20:14:00', 'Y'),
(149, '87', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 112. We will get back to you soon.', '2020-07-23 20:18:53', 'Y'),
(150, '87', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 113. We will get back to you soon.', '2020-07-23 20:24:57', 'Y'),
(151, '87', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 114. We will get back to you soon.', '2020-07-23 20:26:05', 'Y'),
(152, '87', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 115. We will get back to you soon.', '2020-07-23 20:30:35', 'Y'),
(153, '87', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 116. We will get back to you soon.', '2020-07-23 20:47:06', 'Y'),
(154, '87', '1', 'Admin', 'Hi, Your requested event [ ID: 114 ] is Ativated.', '2020-07-24 06:11:18', 'Y'),
(155, '87', '1', 'Admin', 'Hi, Your requested event [ ID: 116 ] is Ativated.', '2020-07-24 06:11:45', 'Y'),
(156, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 116 ]  By Admin.', '2020-07-24 06:18:50', 'Y'),
(157, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 115 ]  By Admin.', '2020-07-24 06:26:25', 'Y'),
(158, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 107 ]  By Admin.', '2020-07-24 06:43:55', 'Y'),
(159, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 114 ]  By Admin.', '2020-07-24 06:50:45', 'Y'),
(160, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 113 ]  By Admin.', '2020-07-24 06:59:38', 'Y'),
(161, '87', '1', 'Admin', 'Hi, Your requested event [ ID: 115 ] is Ativated.', '2020-07-24 07:25:41', 'Y'),
(162, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 112 ]  By Admin.', '2020-07-24 07:42:58', 'Y'),
(163, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 112 ]  By Admin.', '2020-07-24 07:52:32', 'Y'),
(164, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 112 ]  By Admin.', '2020-07-24 07:55:20', 'Y'),
(165, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 112 ]  By Admin.', '2020-07-24 07:57:52', 'Y'),
(166, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 112 ]  By Admin.', '2020-07-24 07:58:23', 'Y'),
(167, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 112 ]  By Admin.', '2020-07-24 07:59:36', 'Y'),
(168, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 113 ]  By Admin.', '2020-07-24 08:01:04', 'Y'),
(169, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 113 ]  By Admin.', '2020-07-24 08:02:19', 'Y'),
(170, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 113 ]  By Admin.', '2020-07-24 08:08:13', 'Y'),
(171, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 113 ]  By Admin.', '2020-07-24 08:09:08', 'Y'),
(172, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 113 ]  By Admin.', '2020-07-24 08:09:55', 'Y'),
(173, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 113 ]  By Admin.', '2020-07-24 08:10:38', 'Y'),
(174, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 113 ]  By Admin.', '2020-07-24 08:11:08', 'Y'),
(175, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 113 ]  By Admin.', '2020-07-24 08:12:32', 'Y'),
(176, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 113 ]  By Admin.', '2020-07-24 08:13:21', 'Y'),
(177, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 113 ]  By Admin.', '2020-07-24 08:13:53', 'Y'),
(178, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 113 ]  By Admin.', '2020-07-24 08:14:37', 'Y'),
(179, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 113 ]  By Admin.', '2020-07-24 08:15:07', 'Y'),
(180, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 113 ]  By Admin.', '2020-07-24 08:15:22', 'Y'),
(181, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 113 ]  By Admin.', '2020-07-24 08:15:26', 'Y'),
(182, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 113 ]  By Admin.', '2020-07-24 08:15:48', 'Y'),
(183, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 113 ]  By Admin.', '2020-07-24 08:15:58', 'Y'),
(184, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 113 ]  By Admin.', '2020-07-24 08:16:27', 'Y'),
(185, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 113 ]  By Admin.', '2020-07-24 08:16:59', 'Y'),
(186, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 113 ]  By Admin.', '2020-07-24 08:22:35', 'Y'),
(187, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 113 ]  By Admin.', '2020-07-24 08:24:29', 'Y'),
(188, '88', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 117. We will get back to you soon.', '2020-07-24 09:11:12', 'Y'),
(189, '88', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 118. We will get back to you soon.', '2020-07-24 09:14:40', 'Y'),
(190, '7', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 119. We will get back to you soon.', '2020-07-24 09:32:54', 'Y'),
(191, '7', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 120. We will get back to you soon.', '2020-07-24 09:38:53', 'Y'),
(192, '7', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 121. We will get back to you soon.', '2020-07-24 09:46:23', 'Y'),
(193, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 113 ]  By Admin.', '2020-07-24 09:52:30', 'Y'),
(194, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 113 ]  By Admin.', '2020-07-24 10:03:52', 'Y'),
(195, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 113 ]  By Admin.', '2020-07-24 10:06:47', 'Y'),
(196, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 116 ]  By Admin.', '2020-07-24 10:10:03', 'Y'),
(197, '4', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 15. We will get back to you soon.', '2020-07-24 10:14:29', 'Y'),
(198, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 116 ]  By Admin.', '2020-07-24 10:19:24', 'Y'),
(199, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 116 ]  By Admin.', '2020-07-24 10:19:29', 'Y'),
(200, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 116 ]  By Admin.', '2020-07-24 10:20:17', 'Y'),
(201, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 116 ]  By Admin.', '2020-07-24 10:21:17', 'Y'),
(202, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 116 ]  By Admin.', '2020-07-24 10:21:21', 'Y'),
(203, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 116 ]  By Admin.', '2020-07-24 10:23:32', 'Y'),
(204, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 116 ]  By Admin.', '2020-07-24 10:25:01', 'Y'),
(205, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 116 ]  By Admin.', '2020-07-24 10:26:44', 'Y'),
(206, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 116 ]  By Admin.', '2020-07-24 10:32:33', 'Y'),
(207, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 116 ]  By Admin.', '2020-07-24 10:55:15', 'Y'),
(208, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 116 ]  By Admin.', '2020-07-24 10:56:58', 'Y'),
(209, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 116 ]  By Admin.', '2020-07-24 10:59:54', 'Y'),
(210, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 116 ]  By Admin.', '2020-07-24 11:01:17', 'Y'),
(211, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 116 ]  By Admin.', '2020-07-24 11:04:18', 'Y'),
(212, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 116 ]  By Admin.', '2020-07-24 11:06:21', 'Y'),
(213, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 114 ]  By Admin.', '2020-07-24 11:16:43', 'Y'),
(214, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 114 ]  By Admin.', '2020-07-24 11:17:37', 'Y'),
(215, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 114 ]  By Admin.', '2020-07-24 11:18:07', 'Y'),
(216, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 114 ]  By Admin.', '2020-07-24 11:20:53', 'Y'),
(217, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 114 ]  By Admin.', '2020-07-24 11:25:40', 'Y'),
(218, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 114 ]  By Admin.', '2020-07-24 11:26:10', 'Y'),
(219, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 114 ]  By Admin.', '2020-07-24 11:28:19', 'Y'),
(220, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 114 ]  By Admin.', '2020-07-24 11:28:22', 'Y'),
(221, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 114 ]  By Admin.', '2020-07-24 11:31:05', 'Y'),
(222, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 114 ]  By Admin.', '2020-07-24 11:32:32', 'Y'),
(223, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 114 ]  By Admin.', '2020-07-24 11:32:36', 'Y'),
(224, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 114 ]  By Admin.', '2020-07-24 11:33:58', 'Y'),
(225, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 114 ]  By Admin.', '2020-07-24 11:49:45', 'Y'),
(226, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 114 ]  By Admin.', '2020-07-24 11:51:14', 'Y'),
(227, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 114 ]  By Admin.', '2020-07-24 11:52:41', 'Y'),
(228, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 114 ]  By Admin.', '2020-07-24 11:52:54', 'Y'),
(229, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 114 ]  By Admin.', '2020-07-24 11:54:13', 'Y'),
(230, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 116 ]  By Admin.', '2020-07-24 11:58:35', 'Y'),
(231, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 116 ]  By Admin.', '2020-07-24 12:00:40', 'Y'),
(232, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 116 ]  By Admin.', '2020-07-24 12:04:25', 'Y'),
(233, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 116 ]  By Admin.', '2020-07-24 12:06:06', 'Y'),
(234, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 116 ]  By Admin.', '2020-07-24 12:07:08', 'Y'),
(235, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 116 ]  By Admin.', '2020-07-24 12:10:33', 'Y'),
(236, '7', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 122. We will get back to you soon.', '2020-07-24 12:20:41', 'Y'),
(237, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 116 ]  By Admin.', '2020-07-24 12:37:39', 'Y'),
(238, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 116 ]  By Admin.', '2020-07-24 12:46:45', 'Y'),
(239, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 116 ]  By Admin.', '2020-07-24 12:46:59', 'Y'),
(240, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 116 ]  By Admin.', '2020-07-24 12:47:27', 'Y'),
(241, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 116 ]  By Admin.', '2020-07-24 12:47:33', 'Y'),
(242, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 116 ]  By Admin.', '2020-07-24 12:48:28', 'Y'),
(243, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 116 ]  By Admin.', '2020-07-24 12:55:17', 'Y'),
(244, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 116 ]  By Admin.', '2020-07-24 13:20:32', 'Y'),
(245, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 116 ]  By Admin.', '2020-07-24 13:22:07', 'Y'),
(246, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 116 ]  By Admin.', '2020-07-24 13:22:14', 'Y'),
(247, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 116 ]  By Admin.', '2020-07-24 13:25:37', 'Y'),
(248, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 116 ]  By Admin.', '2020-07-24 13:25:43', 'Y'),
(249, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 116 ]  By Admin.', '2020-07-24 13:28:04', 'Y'),
(250, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 116 ]  By Admin.', '2020-07-24 13:28:57', 'Y'),
(251, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 116 ]  By Admin.', '2020-07-24 13:29:17', 'Y'),
(252, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 116 ]  By Admin.', '2020-07-24 13:29:21', 'Y'),
(253, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 116 ]  By Admin.', '2020-07-24 13:30:28', 'Y'),
(254, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 116 ]  By Admin.', '2020-07-24 13:32:30', 'Y'),
(255, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 116 ]  By Admin.', '2020-07-24 13:35:45', 'Y'),
(256, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 116 ]  By Admin.', '2020-07-24 13:37:55', 'Y'),
(257, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 116 ]  By Admin.', '2020-07-24 13:39:48', 'Y'),
(258, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 116 ]  By Admin.', '2020-07-24 13:42:05', 'Y'),
(259, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 116 ]  By Admin.', '2020-07-24 13:48:58', 'Y'),
(260, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 116 ]  By Admin.', '2020-07-24 13:50:41', 'Y'),
(261, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 116 ]  By Admin.', '2020-07-24 13:54:55', 'Y'),
(262, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 116 ]  By Admin.', '2020-07-24 14:12:56', 'Y'),
(263, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 116 ]  By Admin.', '2020-07-24 14:14:42', 'Y'),
(264, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 113 ]  By Admin.', '2020-07-24 14:26:32', 'Y'),
(265, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 113 ]  By Admin.', '2020-07-24 14:40:38', 'Y'),
(266, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 113 ]  By Admin.', '2020-07-24 14:41:22', 'Y'),
(267, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 113 ]  By Admin.', '2020-07-24 14:44:58', 'Y'),
(268, '7', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 123. We will get back to you soon.', '2020-07-24 14:45:37', 'Y'),
(269, '81', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 96 ]  By Admin.', '2020-07-24 14:46:45', 'Y'),
(270, '81', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 96 ]  By Admin.', '2020-07-24 14:55:38', 'Y'),
(271, '81', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 96 ]  By Admin.', '2020-07-24 14:59:14', 'Y'),
(272, '81', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 96 ]  By Admin.', '2020-07-24 15:00:14', 'Y'),
(273, '81', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 96 ]  By Admin.', '2020-07-24 15:01:42', 'Y'),
(274, '81', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 96 ]  By Admin.', '2020-07-24 15:06:54', 'Y'),
(275, '7', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 124. We will get back to you soon.', '2020-07-24 15:12:29', 'Y'),
(276, '81', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 96 ]  By Admin.', '2020-07-24 15:14:17', 'Y'),
(277, '81', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 96 ]  By Admin.', '2020-07-24 15:14:23', 'Y'),
(278, '4', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 16. We will get back to you soon.', '2020-07-24 15:14:30', 'Y'),
(279, '88', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 117 ]  By Admin.', '2020-07-24 15:18:52', 'Y'),
(280, '88', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 117 ]  By Admin.', '2020-07-24 15:22:49', 'Y'),
(281, '88', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 117 ]  By Admin.', '2020-07-24 15:23:22', 'Y'),
(282, '88', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 117 ]  By Admin.', '2020-07-24 15:24:49', 'Y'),
(283, '88', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 117 ]  By Admin.', '2020-07-24 15:25:12', 'Y'),
(284, '88', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 117 ]  By Admin.', '2020-07-24 15:25:44', 'Y'),
(285, '88', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 117 ]  By Admin.', '2020-07-24 15:26:28', 'Y'),
(286, '88', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 117 ]  By Admin.', '2020-07-24 15:26:54', 'Y'),
(287, '88', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 117 ]  By Admin.', '2020-07-24 15:27:58', 'Y'),
(288, '88', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 118 ]  By Admin.', '2020-07-24 15:28:07', 'Y'),
(289, '88', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 117 ]  By Admin.', '2020-07-24 15:28:07', 'Y'),
(290, '88', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 118 ]  By Admin.', '2020-07-24 15:29:17', 'Y'),
(291, '88', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 118 ]  By Admin.', '2020-07-24 15:30:23', 'Y'),
(292, '88', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 118 ]  By Admin.', '2020-07-24 15:32:34', 'Y'),
(293, '88', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 118 ]  By Admin.', '2020-07-24 15:34:54', 'Y'),
(294, '88', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 118 ]  By Admin.', '2020-07-24 15:35:42', 'Y'),
(295, '88', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 118 ]  By Admin.', '2020-07-24 15:36:08', 'Y'),
(296, '7', '1', 'Admin', 'Hi, Your requested event [ ID: 119 ] is Ativated.', '2020-07-24 15:37:14', 'Y'),
(297, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 115 ]  By Admin.', '2020-07-24 15:37:58', 'Y'),
(298, '88', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 117 ]  By Admin.', '2020-07-24 15:40:07', 'Y'),
(299, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 115 ]  By Admin.', '2020-07-24 15:42:42', 'Y'),
(300, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 115 ]  By Admin.', '2020-07-24 15:48:06', 'Y'),
(301, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 115 ]  By Admin.', '2020-07-24 15:48:13', 'Y'),
(302, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 115 ]  By Admin.', '2020-07-24 15:49:14', 'Y'),
(303, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 115 ]  By Admin.', '2020-07-24 15:49:20', 'Y'),
(304, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 115 ]  By Admin.', '2020-07-24 15:51:54', 'Y'),
(305, '88', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 117 ]  By Admin.', '2020-07-24 16:31:02', 'Y'),
(306, '88', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 117 ]  By Admin.', '2020-07-24 16:31:35', 'Y'),
(307, '88', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 117 ]  By Admin.', '2020-07-24 16:35:25', 'Y'),
(308, '88', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 117 ]  By Admin.', '2020-07-24 16:39:08', 'Y'),
(309, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 116 ]  By Admin.', '2020-07-24 16:40:33', 'Y'),
(310, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 116 ]  By Admin.', '2020-07-24 16:41:01', 'Y'),
(311, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 116 ]  By Admin.', '2020-07-24 16:41:56', 'Y'),
(312, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 116 ]  By Admin.', '2020-07-24 16:42:26', 'Y'),
(313, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 116 ]  By Admin.', '2020-07-24 16:42:46', 'Y'),
(314, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 116 ]  By Admin.', '2020-07-24 16:44:07', 'Y'),
(315, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 116 ]  By Admin.', '2020-07-24 16:46:36', 'Y'),
(316, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 116 ]  By Admin.', '2020-07-24 16:51:22', 'Y'),
(317, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 116 ]  By Admin.', '2020-07-24 16:54:30', 'Y'),
(318, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 116 ]  By Admin.', '2020-07-24 16:55:25', 'Y'),
(319, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 116 ]  By Admin.', '2020-07-24 16:55:41', 'Y'),
(320, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 116 ]  By Admin.', '2020-07-24 17:01:19', 'Y'),
(321, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 116 ]  By Admin.', '2020-07-24 17:07:20', 'Y'),
(322, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 116 ]  By Admin.', '2020-07-24 17:07:35', 'Y'),
(323, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 116 ]  By Admin.', '2020-07-24 17:08:12', 'Y'),
(324, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 116 ]  By Admin.', '2020-07-24 17:09:12', 'Y'),
(325, '81', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 94 ]  By Admin.', '2020-07-24 17:10:06', 'Y'),
(326, '81', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 94 ]  By Admin.', '2020-07-24 17:10:32', 'Y'),
(327, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 116 ]  By Admin.', '2020-07-24 17:14:29', 'Y'),
(328, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 116 ]  By Admin.', '2020-07-24 17:14:59', 'Y'),
(329, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 116 ]  By Admin.', '2020-07-24 17:16:00', 'Y'),
(330, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 116 ]  By Admin.', '2020-07-24 17:17:22', 'Y'),
(331, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 116 ]  By Admin.', '2020-07-24 17:20:46', 'Y'),
(332, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 116 ]  By Admin.', '2020-07-24 17:28:00', 'Y'),
(333, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 116 ]  By Admin.', '2020-07-24 17:31:37', 'Y'),
(334, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 116 ]  By Admin.', '2020-07-24 17:34:43', 'Y'),
(335, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 115 ]  By Admin.', '2020-07-24 17:40:57', 'Y'),
(336, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 115 ]  By Admin.', '2020-07-24 17:43:16', 'Y'),
(337, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 116 ]  By Admin.', '2020-07-24 18:05:03', 'Y'),
(338, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 116 ]  By Admin.', '2020-07-24 18:18:25', 'Y'),
(339, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 116 ]  By Admin.', '2020-07-24 18:19:17', 'Y'),
(340, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 116 ]  By Admin.', '2020-07-24 18:19:59', 'Y'),
(341, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 116 ]  By Admin.', '2020-07-24 18:21:04', 'Y'),
(342, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 116 ]  By Admin.', '2020-07-24 18:22:56', 'Y'),
(343, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 116 ]  By Admin.', '2020-07-24 18:24:08', 'Y'),
(344, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 116 ]  By Admin.', '2020-07-24 18:25:04', 'Y'),
(345, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 116 ]  By Admin.', '2020-07-24 18:25:54', 'Y'),
(346, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 116 ]  By Admin.', '2020-07-24 18:28:57', 'Y'),
(347, '87', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 116 ]  By Admin.', '2020-07-24 18:29:25', 'Y'),
(348, '7', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 125. We will get back to you soon.', '2020-07-27 06:58:17', 'Y'),
(349, '7', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 126. We will get back to you soon.', '2020-07-27 07:23:28', 'Y'),
(350, '7', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 127. We will get back to you soon.', '2020-07-27 07:24:39', 'Y'),
(351, '7', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 128. We will get back to you soon.', '2020-07-27 07:25:22', 'Y'),
(352, '7', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 129. We will get back to you soon.', '2020-07-27 07:25:59', 'Y'),
(353, '7', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 130. We will get back to you soon.', '2020-07-27 07:26:41', 'Y'),
(354, '7', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 131. We will get back to you soon.', '2020-07-27 07:27:13', 'Y'),
(355, '7', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 132. We will get back to you soon.', '2020-07-27 07:27:47', 'Y'),
(356, '7', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 133. We will get back to you soon.', '2020-07-27 07:28:44', 'Y'),
(357, '7', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 134. We will get back to you soon.', '2020-07-27 07:29:32', 'Y'),
(358, '7', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 135. We will get back to you soon.', '2020-07-27 07:33:53', 'Y'),
(359, '7', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 136. We will get back to you soon.', '2020-07-27 07:35:01', 'Y'),
(360, '7', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 137. We will get back to you soon.', '2020-07-27 07:45:23', 'Y'),
(361, '98', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 138. We will get back to you soon.', '2020-07-27 10:51:23', 'Y'),
(362, '85', '1', 'Admin', 'Hi, Your requested event [ ID: 98 ] is Ativated.', '2020-07-27 10:55:20', 'Y'),
(363, '100', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 139. We will get back to you soon.', '2020-07-27 12:43:52', 'Y'),
(364, '100', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 140. We will get back to you soon.', '2020-07-27 12:51:38', 'Y'),
(365, '100', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 141. We will get back to you soon.', '2020-07-27 12:55:45', 'Y'),
(366, '100', '1', 'Admin', 'Hi, Your requested event [ ID: 141 ] is Ativated.', '2020-07-27 13:07:54', 'Y'),
(367, '100', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 141 ]  By Admin.', '2020-07-27 13:10:21', 'Y'),
(368, '100', '1', 'Admin', 'Hi, Your requested event [ ID: 140 ] is Ativated.', '2020-07-27 13:13:04', 'Y'),
(369, '100', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 140 ]  By Admin.', '2020-07-27 13:13:30', 'Y'),
(370, '7', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 142. We will get back to you soon.', '2020-07-27 13:26:26', 'Y'),
(371, '7', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 143. We will get back to you soon.', '2020-07-27 13:28:48', 'Y'),
(372, '4', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 144. We will get back to you soon.', '2020-07-27 13:33:37', 'Y'),
(373, '104', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 145. We will get back to you soon.', '2020-07-27 14:08:43', 'Y'),
(374, '104', '1', 'Admin', 'Hi, Your requested event [ ID: 145 ] is Ativated.', '2020-07-27 14:10:12', 'Y');
INSERT INTO `inbox` (`id`, `to_u_id`, `created_u_id`, `created_by`, `message`, `created_at`, `status`) VALUES
(375, '104', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 145 ]  By Admin.', '2020-07-27 14:11:36', 'Y'),
(376, '7', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 146. We will get back to you soon.', '2020-07-27 15:07:58', 'Y'),
(377, '7', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 147. We will get back to you soon.', '2020-07-27 15:08:32', 'Y'),
(378, '7', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 148. We will get back to you soon.', '2020-07-27 15:09:42', 'Y'),
(379, '7', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 149. We will get back to you soon.', '2020-07-27 15:13:04', 'Y'),
(380, '7', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 150. We will get back to you soon.', '2020-07-27 15:16:35', 'Y'),
(381, '7', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 151. We will get back to you soon.', '2020-07-27 15:17:39', 'Y'),
(382, '7', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 152. We will get back to you soon.', '2020-07-27 15:18:33', 'Y'),
(383, '7', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 153. We will get back to you soon.', '2020-07-27 15:33:25', 'Y'),
(384, '7', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 154. We will get back to you soon.', '2020-07-27 15:47:42', 'Y'),
(385, '7', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 155. We will get back to you soon.', '2020-07-27 15:48:33', 'Y'),
(386, '7', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 156. We will get back to you soon.', '2020-07-27 15:49:15', 'Y'),
(387, '7', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 157. We will get back to you soon.', '2020-07-27 15:50:14', 'Y'),
(388, '7', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 158. We will get back to you soon.', '2020-07-27 15:51:19', 'Y'),
(389, '7', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 159. We will get back to you soon.', '2020-07-27 15:52:19', 'Y'),
(390, '7', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 160. We will get back to you soon.', '2020-07-27 15:53:15', 'Y'),
(391, '7', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 161. We will get back to you soon.', '2020-07-27 15:54:02', 'Y'),
(392, '7', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 162. We will get back to you soon.', '2020-07-27 15:55:01', 'Y'),
(393, '4', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 163. We will get back to you soon.', '2020-07-27 16:11:35', 'Y'),
(394, '4', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 164. We will get back to you soon.', '2020-07-27 16:14:02', 'Y'),
(395, '7', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 165. We will get back to you soon.', '2020-07-27 17:50:42', 'Y'),
(396, '7', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 166. We will get back to you soon.', '2020-07-27 17:51:48', 'Y'),
(397, '7', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 167. We will get back to you soon.', '2020-07-28 06:56:48', 'Y'),
(398, '4', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 168. We will get back to you soon.', '2020-07-28 07:01:49', 'Y'),
(399, '7', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 169. We will get back to you soon.', '2020-07-28 07:08:24', 'Y'),
(400, '7', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 170. We will get back to you soon.', '2020-07-28 09:05:43', 'Y'),
(401, '7', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 171. We will get back to you soon.', '2020-07-28 10:06:19', 'Y'),
(402, '105', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 1. We will get back to you soon.', '2020-07-28 11:02:57', 'Y'),
(403, '105', '1', 'Admin', 'Hi, Your requested event [ ID: 1 ] is Ativated.', '2020-07-28 11:06:13', 'Y'),
(404, '105', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 1 ]  By Admin.', '2020-07-28 11:07:03', 'Y'),
(405, '7', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 2. We will get back to you soon.', '2020-07-28 11:55:55', 'Y'),
(406, '7', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 3. We will get back to you soon.', '2020-07-28 12:43:05', 'Y'),
(407, '106', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 5. We will get back to you soon.', '2020-07-28 13:20:26', 'Y'),
(408, '106', '1', 'Admin', 'Hi, Your requested event [ ID: 5 ] is Ativated.', '2020-07-28 13:22:59', 'Y'),
(409, '106', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 5 ]  By Admin.', '2020-07-28 13:24:34', 'Y'),
(410, '7', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 6. We will get back to you soon.', '2020-07-29 08:10:12', 'Y'),
(411, '7', '1', 'Admin', 'Hi, Your requested event [ ID: 6 ] is Ativated.', '2020-07-29 10:11:18', 'Y'),
(412, '7', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 7. We will get back to you soon.', '2020-07-29 10:21:04', 'Y'),
(413, '7', '1', 'Admin', 'Hi, Your requested event [ ID: 7 ] is Ativated.', '2020-07-29 10:21:15', 'Y'),
(414, '7', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 8. We will get back to you soon.', '2020-07-29 10:34:19', 'Y'),
(415, '7', '1', 'Admin', 'Hi, Your requested event [ ID: 8 ] is Ativated.', '2020-07-29 10:55:11', 'Y'),
(416, '7', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 8 ]  By Admin.', '2020-07-29 10:56:37', 'Y'),
(417, '7', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 7 ]  By Admin.', '2020-07-29 11:06:44', 'Y'),
(418, '106', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 9. We will get back to you soon.', '2020-07-30 14:18:07', 'Y'),
(419, '7', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 10. We will get back to you soon.', '2020-07-31 09:53:26', 'Y'),
(420, '7', '1', 'Admin', 'Hi, Your requested event [ ID: 10 ] is Ativated.', '2020-07-31 10:44:53', 'Y'),
(421, 'undefined', '1', 'Admin', 'Hi, Your requested event [ ID: 10 ] is Inacive.', '2020-07-31 10:44:55', 'Y'),
(422, '106', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 5 ]  By Admin.', '2020-07-31 13:09:21', 'Y'),
(423, '106', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 5 ]  By Admin.', '2020-07-31 13:10:05', 'Y'),
(424, '106', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 5 ]  By Admin.', '2020-07-31 13:14:18', 'Y'),
(425, '106', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 5 ]  By Admin.', '2020-07-31 13:15:14', 'Y'),
(426, '4', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 11. We will get back to you soon.', '2020-08-03 12:26:36', 'Y'),
(427, '2', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 12. We will get back to you soon.', '2020-08-06 14:28:44', 'Y'),
(428, '2', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 13. We will get back to you soon.', '2020-08-06 17:38:16', 'Y'),
(429, '2', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 14. We will get back to you soon.', '2020-08-06 17:48:50', 'Y'),
(430, '4', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 17. We will get back to you soon.', '2020-08-07 09:24:40', 'Y'),
(431, '7', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 15. We will get back to you soon.', '2020-08-07 09:41:05', 'Y'),
(432, '7', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 16. We will get back to you soon.', '2020-08-07 10:16:35', 'Y'),
(433, '7', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 17. We will get back to you soon.', '2020-08-07 11:54:59', 'Y'),
(434, '4', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 18. We will get back to you soon.', '2020-08-07 11:56:13', 'Y'),
(435, '7', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 19. We will get back to you soon.', '2020-08-07 12:02:12', 'Y'),
(436, '4', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 20. We will get back to you soon.', '2020-08-07 12:16:54', 'Y'),
(437, '4', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 21. We will get back to you soon.', '2020-08-07 12:19:42', 'Y'),
(438, '7', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 22. We will get back to you soon.', '2020-08-07 12:21:03', 'Y'),
(439, '4', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 23. We will get back to you soon.', '2020-08-07 12:23:38', 'Y'),
(440, '7', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 24. We will get back to you soon.', '2020-08-10 14:44:12', 'Y'),
(441, '7', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 25. We will get back to you soon.', '2020-08-10 14:47:40', 'Y'),
(442, '7', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 26. We will get back to you soon.', '2020-08-10 14:50:29', 'Y'),
(443, '2', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 27. We will get back to you soon.', '2020-08-10 16:41:40', 'Y'),
(444, '2', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 28. We will get back to you soon.', '2020-08-10 16:43:16', 'Y'),
(445, '2', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 29. We will get back to you soon.', '2020-08-10 16:44:45', 'Y'),
(446, '2', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 30. We will get back to you soon.', '2020-08-10 16:46:54', 'Y'),
(447, '4', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 20 ]  By Admin.', '2020-08-10 18:01:58', 'Y'),
(448, '2', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 31. We will get back to you soon.', '2020-08-10 22:08:54', 'Y'),
(449, '4', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 32. We will get back to you soon.', '2020-08-11 09:07:30', 'Y'),
(450, '7', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 33. We will get back to you soon.', '2020-08-11 09:09:00', 'Y'),
(451, '7', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 34. We will get back to you soon.', '2020-08-11 11:38:19', 'Y'),
(452, '7', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 35. We will get back to you soon.', '2020-08-12 09:51:43', 'Y'),
(453, '4', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 36. We will get back to you soon.', '2020-08-12 09:53:33', 'Y'),
(454, '3', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 18. We will get back to you soon.', '2020-08-12 12:08:05', 'Y'),
(455, '2', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 19. We will get back to you soon.', '2020-08-12 12:09:53', 'Y'),
(456, '4', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 20. We will get back to you soon.', '2020-08-12 13:23:09', 'Y'),
(457, '2', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 21. We will get back to you soon.', '2020-08-12 13:46:34', 'Y'),
(458, '7', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 37. We will get back to you soon.', '2020-08-12 16:34:11', 'Y'),
(459, '7', '1', 'Admin', 'Hi, Your requested event [ ID: 37 ] is Ativated.', '2020-08-12 16:36:08', 'Y'),
(460, '4', '1', 'Admin', 'Hi, Your requested event [ ID: 36 ] is Ativated.', '2020-08-12 16:36:09', 'Y'),
(461, '7', '1', 'Admin', 'Hi, Your requested event [ ID: 33 ] is Ativated.', '2020-08-12 16:36:23', 'Y'),
(462, '7', '1', 'Admin', 'Hi, Your requested event [ ID: 33 ] is Ativated.', '2020-08-12 16:36:24', 'Y'),
(463, '4', '1', 'Admin', 'Hi, Your requested event [ ID: 32 ] is Ativated.', '2020-08-12 16:36:24', 'Y'),
(464, '107', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 38. We will get back to you soon.', '2020-08-12 16:40:01', 'Y'),
(465, '4', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 11 ]  By Admin.', '2020-08-12 18:58:02', 'Y'),
(466, '4', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 20 ]  By Admin.', '2020-08-12 18:59:37', 'Y'),
(467, '7', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 33 ]  By Admin.', '2020-08-12 19:01:12', 'Y'),
(468, '107', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 39. We will get back to you soon.', '2020-08-12 21:21:03', 'Y'),
(469, '107', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 40. We will get back to you soon.', '2020-08-12 21:25:18', 'Y'),
(470, '107', '1', 'Admin', 'Hi, Your requested event [ ID: 40 ] is Ativated.', '2020-08-12 21:25:55', 'Y'),
(471, '107', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 40 ]  By Admin.', '2020-08-12 21:26:09', 'Y'),
(472, '108', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 41. We will get back to you soon.', '2020-08-12 21:46:40', 'Y'),
(473, '108', '1', 'Admin', 'Hi, Your requested event [ ID: 41 ] is Ativated.', '2020-08-12 21:47:01', 'Y'),
(474, '108', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 41 ]  By Admin.', '2020-08-12 21:47:12', 'Y'),
(475, '106', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 42. We will get back to you soon.', '2020-08-13 09:15:58', 'Y'),
(476, '106', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 42 ]  By Admin.', '2020-08-13 09:18:06', 'Y'),
(477, '106', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 42 ]  By Admin.', '2020-08-13 09:41:07', 'Y'),
(478, '106', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 42 ]  By Admin.', '2020-08-13 09:41:18', 'Y'),
(479, '7', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 33 ]  By Admin.', '2020-08-14 11:39:01', 'Y'),
(480, '4', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 22. We will get back to you soon.', '2020-08-14 23:39:42', 'Y'),
(481, '4', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 43. We will get back to you soon.', '2020-08-17 13:16:08', 'Y'),
(482, '4', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 23. We will get back to you soon.', '2020-08-17 13:46:31', 'Y'),
(483, '7', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 44. We will get back to you soon.', '2020-08-17 13:49:15', 'Y'),
(484, '4', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 24. We will get back to you soon.', '2020-08-19 12:30:41', 'Y'),
(485, '109', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 45. We will get back to you soon.', '2020-08-19 13:17:06', 'Y'),
(486, '109', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 45 ]  By Admin.', '2020-08-19 13:20:15', 'Y'),
(487, '4', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 46. We will get back to you soon.', '2020-08-19 15:48:04', 'Y'),
(488, '109', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 45 ]  By Admin.', '2020-09-04 09:49:05', 'Y'),
(489, '112', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 46. We will get back to you soon.', '2020-09-07 11:03:10', 'Y'),
(490, '112', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 46 ]  By Admin.', '2020-09-07 11:05:57', 'Y'),
(491, '4', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 47. We will get back to you soon.', '2020-09-07 16:07:11', 'Y'),
(492, '116', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 48. We will get back to you soon.', '2020-10-19 22:02:40', 'Y'),
(493, '116', '1', 'Admin', 'Hi, Your requested event [ ID: 48 ] is Ativated.', '2020-10-19 22:03:21', 'Y'),
(494, '116', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 48 ]  By Admin.', '2020-10-19 22:03:43', 'Y'),
(495, '125', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 49. We will get back to you soon.', '2020-11-17 11:42:11', 'Y'),
(496, '134', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 50. We will get back to you soon.', '2020-12-16 09:38:27', 'Y'),
(497, '134', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 51. We will get back to you soon.', '2020-12-16 09:41:24', 'Y'),
(498, '135', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 52. We will get back to you soon.', '2020-12-16 10:41:00', 'Y'),
(499, '135', '1', 'Admin', 'Hi, Your requested event [ ID: 52 ] is Ativated.', '2020-12-16 10:48:13', 'Y'),
(500, '7', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 53. We will get back to you soon.', '2020-12-16 12:04:21', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(11) NOT NULL,
  `section_name` varchar(300) NOT NULL,
  `page_id` varchar(300) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `section_name`, `page_id`, `updated_at`) VALUES
(1, 'without_login', '[\"5\",\"4\",\"3\",\"2\",\"1\"]', '2020-06-09 23:06:12'),
(2, 'association_login', '', '0000-00-00 00:00:00'),
(3, 'city_login', '', '0000-00-00 00:00:00'),
(4, 'footer_navigation', '[\"5\",\"4\",\"3\",\"2\",\"1\"]', '2020-06-09 23:06:50'),
(5, 'footer_services', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` varchar(300) NOT NULL,
  `u_type` enum('Association','City') NOT NULL DEFAULT 'Association',
  `association_name` varchar(300) DEFAULT NULL,
  `event_name` varchar(300) NOT NULL,
  `number_of_visitor` varchar(300) NOT NULL,
  `cups_per_visitor` varchar(300) NOT NULL,
  `number_of_bar` varchar(300) NOT NULL,
  `used_cups` varchar(300) NOT NULL,
  `lost_cup` varchar(300) NOT NULL,
  `wash_prc` varchar(300) DEFAULT NULL,
  `postcode` varchar(300) NOT NULL,
  `street` varchar(300) NOT NULL,
  `number` varchar(300) NOT NULL,
  `event_date` datetime NOT NULL,
  `event_start_date` varchar(20) NOT NULL,
  `event_start_time` varchar(10) NOT NULL,
  `event_end_date` varchar(20) NOT NULL,
  `event_end_time` varchar(10) NOT NULL,
  `products` longtext NOT NULL,
  `collection_by_profiwash_at_the_event` varchar(300) DEFAULT NULL,
  `return_to_address` varchar(300) DEFAULT NULL,
  `collection_by_profiwash_at_collection_point` varchar(300) DEFAULT NULL,
  `return_via_collection_point` varchar(300) DEFAULT NULL,
  `delivery_to_profiwash` varchar(300) DEFAULT NULL,
  `pick_up_at_profiwash` varchar(300) DEFAULT NULL,
  `sub_total` float NOT NULL,
  `tax` float NOT NULL,
  `total` float NOT NULL,
  `final_cost` float DEFAULT NULL,
  `order_status` enum('Y','N') NOT NULL DEFAULT 'N',
  `invoice_created_by_admin` int(50) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `u_type`, `association_name`, `event_name`, `number_of_visitor`, `cups_per_visitor`, `number_of_bar`, `used_cups`, `lost_cup`, `wash_prc`, `postcode`, `street`, `number`, `event_date`, `event_start_date`, `event_start_time`, `event_end_date`, `event_end_time`, `products`, `collection_by_profiwash_at_the_event`, `return_to_address`, `collection_by_profiwash_at_collection_point`, `return_via_collection_point`, `delivery_to_profiwash`, `pick_up_at_profiwash`, `sub_total`, `tax`, `total`, `final_cost`, `order_status`, `invoice_created_by_admin`, `created_at`) VALUES
(1, '105', 'Association', 'Merelbeke 28', 'Eerste even', '1000', '4', '2', '', '', NULL, '9820', 'kerkwergel', '23', '2020-08-28 00:00:00', '2020-08-28', '18:30', '2020-08-30', '13:30', '{\"1\":\"3\",\"2\":\"2\",\"3\":\"1\",\"4\":\"8\",\"6\":\"4\"}', '', '', '20.10', '', 'Gratis', '', 260.42, 54.6882, 315.108, NULL, 'Y', 1, '2020-07-28 09:02:57'),
(5, '106', 'Association', 'Test Merelbeke Manu', 'Merelbeke feest', '2000', '5', '2', '', '', NULL, '9820', 'Kerkwegel', '17', '2020-08-28 00:00:00', '2020-08-27', '18:30', '2020-08-30', '13:30', '{\"1\":\"3\",\"2\":\"2\",\"3\":\"5\",\"4\":\"2\",\"6\":\"3\"}', '65.0', '', '', '20.20', '', '', 316.44, 66.4524, 382.892, NULL, 'Y', 1, '2020-07-28 11:20:26'),
(9, '106', 'Association', 'Test Merelbeke Manu', 'test  merelbeke', '1000', '2', '2', '', '', NULL, '9820', 'Merelbekestraat', '23', '2020-08-27 00:00:00', '2020-08-28', '18:30', '2020-08-30', '13:30', '{\"1\":\"3\",\"2\":\"2\",\"3\":\"1\",\"6\":\"4\"}', '', '65.0', '', '', 'Gratis', '', 221.32, 46.4772, 267.797, NULL, 'N', 0, '2020-07-30 12:18:07'),
(45, '109', 'Association', 'kerkwegel 23 ver', 'Event 19', '1000', '4', '2', '', '', NULL, '8710', 'sluisstraat', '12', '0000-00-00 00:00:00', '2020-08-27', '16:00', '2020-08-29', '20:00', '{\"1\":\"3\",\"2\":\"2\",\"4\":\"2\",\"6\":\"4\"}', '', '65.0', '', '', 'Gratis', '', 222.32, 46.6872, 269.007, NULL, 'N', 1, '2020-08-19 11:17:06'),
(46, '112', 'Association', 'Sluis 1', 'test Event', '1000', '2', '3', '', '', NULL, '9820', 'Sluisstraat', '11', '0000-00-00 00:00:00', '2020-09-30', '08:00', '2020-09-30', '22:00', '{\"1\":\"3\",\"2\":\"2\",\"3\":\"4\",\"4\":\"2\",\"6\":\"4\"}', '65.0', '', '', '', 'Gratis', '', 302.32, 63.4872, 365.807, NULL, 'N', 1, '2020-09-07 09:03:10'),
(47, '4', 'City', NULL, 'test', 'zdf', 'sad', 'df ', '', '', NULL, '43253', 'fgbv', '646464', '0000-00-00 00:00:00', '2020-09-09', ':00', '2020-09-18', ':00', '{\"1\":\"4\"}', '', '65.0', '', '', '', 'Gratis', 97, 20.37, 117.37, NULL, 'N', 0, '2020-09-07 14:07:11'),
(48, '116', 'Association', 'test 3', 'sad sf', 'sdf', 'sdf ', 'sdf ', '', '', NULL, '09090', 'd gj', '654', '0000-00-00 00:00:00', '2020-10-30', '04:00', '2020-10-30', '02:00', '{\"1\":\"2\",\"2\":\"1\",\"3\":\"5\"}', '', '65.0', '', '20.20', '', '', 205.2, 43.092, 248.292, NULL, 'Y', 1, '2020-10-19 20:02:40'),
(49, '125', 'Association', 'Test new1711', 'fred', '1000', '2', '2', '', '', NULL, '9000', 'fred', 'fred', '0000-00-00 00:00:00', '2020-11-18', '02:00', '2020-11-18', '03:00', '{\"1\":\"2\",\"2\":\"2\",\"8\":\"3\"}', '', '65.0', '', '', 'Gratis', '', 83, 17.43, 100.43, NULL, 'N', 0, '2020-11-17 10:42:11'),
(50, '134', 'Association', 'kerkwgel bedrijf', 'test', '100', '1', '2', '', '', NULL, '9000', 'yrdt', '23', '0000-00-00 00:00:00', '2020-12-17', '05:00', '2020-12-18', '07:00', '{\"1\":\"3\",\"2\":\"2\",\"3\":\"2\",\"4\":\"2\",\"6\":\"10\"}', '65.0', '', '', '20.20', '', '', 185.2, 38.892, 224.092, NULL, 'N', 0, '2020-12-16 08:38:27'),
(51, '134', 'Association', 'kerkwgel bedrijf', 'test', '100', '1', '2', '', '', NULL, '9000', 'yrdt', '23', '0000-00-00 00:00:00', '2020-12-17', '05:00', '2020-12-18', '07:00', '{\"1\":\"3\",\"2\":\"2\",\"3\":\"2\",\"4\":\"2\",\"6\":\"10\"}', '65.0', '', '', '20.20', '', '', 185.2, 38.892, 224.092, NULL, 'N', 0, '2020-12-16 08:41:24'),
(52, '135', 'Association', 'Test naham Matthias2', 'Test event', '100', '2', '4', '', '', NULL, '9000', 'tsettstet', '23', '0000-00-00 00:00:00', '2020-12-18', '15:00', '2020-12-19', '14:00', '{\"1\":\"1\",\"2\":\"3\",\"3\":\"2\",\"4\":\"1\",\"6\":\"10\"}', '65.0', '', '', '20.20', '', '', 185.2, 38.892, 224.092, NULL, 'Y', 0, '2020-12-16 09:41:00'),
(53, '7', 'Association', 'sg fg fg', 'df', 'dsfv', ' c d ', 'dfdsf', '', '', NULL, '8790', 'dzf', '454665', '0000-00-00 00:00:00', '2020-12-17', '11:00', '2020-12-18', '09:00', '{\"1\":\"2\",\"6\":\"2\"}', '', '65.0', '', '', '', 'Gratis', 87, 18.27, 105.27, NULL, 'N', 0, '2020-12-16 11:04:21');

-- --------------------------------------------------------

--
-- Table structure for table `orders_bk_08-08`
--

CREATE TABLE `orders_bk_08-08` (
  `id` int(11) NOT NULL,
  `user_id` varchar(300) NOT NULL,
  `u_type` enum('Association','City') NOT NULL DEFAULT 'Association',
  `association_name` varchar(300) DEFAULT NULL,
  `event_name` varchar(300) NOT NULL,
  `number_of_visitor` varchar(300) NOT NULL,
  `cups_per_visitor` varchar(300) NOT NULL,
  `number_of_bar` varchar(300) NOT NULL,
  `used_cups` varchar(300) NOT NULL,
  `lost_cup` varchar(300) NOT NULL,
  `wash_prc` varchar(300) DEFAULT NULL,
  `postcode` varchar(300) NOT NULL,
  `street` varchar(300) NOT NULL,
  `number` varchar(300) NOT NULL,
  `event_date` datetime NOT NULL,
  `event_start_date` varchar(20) NOT NULL,
  `event_start_time` varchar(10) NOT NULL,
  `event_end_date` varchar(20) NOT NULL,
  `event_end_time` varchar(10) NOT NULL,
  `products` longtext NOT NULL,
  `collection_by_profiwash_at_the_event` varchar(300) DEFAULT NULL,
  `return_to_address` varchar(300) DEFAULT NULL,
  `collection_by_profiwash_at_collection_point` varchar(300) DEFAULT NULL,
  `return_via_collection_point` varchar(300) DEFAULT NULL,
  `delivery_to_profiwash` varchar(300) DEFAULT NULL,
  `pick_up_at_profiwash` varchar(300) DEFAULT NULL,
  `sub_total` float NOT NULL,
  `tax` float NOT NULL,
  `total` float NOT NULL,
  `final_cost` float DEFAULT NULL,
  `order_status` enum('Y','N') NOT NULL DEFAULT 'N',
  `invoice_created_by_admin` int(50) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders_bk_08-08`
--

INSERT INTO `orders_bk_08-08` (`id`, `user_id`, `u_type`, `association_name`, `event_name`, `number_of_visitor`, `cups_per_visitor`, `number_of_bar`, `used_cups`, `lost_cup`, `wash_prc`, `postcode`, `street`, `number`, `event_date`, `event_start_date`, `event_start_time`, `event_end_date`, `event_end_time`, `products`, `collection_by_profiwash_at_the_event`, `return_to_address`, `collection_by_profiwash_at_collection_point`, `return_via_collection_point`, `delivery_to_profiwash`, `pick_up_at_profiwash`, `sub_total`, `tax`, `total`, `final_cost`, `order_status`, `invoice_created_by_admin`, `created_at`) VALUES
(1, '105', 'Association', 'Merelbeke 28', 'Eerste even', '1000', '4', '2', '', '', NULL, '9820', 'kerkwergel', '23', '2020-08-28 00:00:00', '2020-08-28', '18:30', '2020-08-30', '13:30', '{\"1\":\"3\",\"2\":\"2\",\"3\":\"1\",\"4\":\"8\",\"6\":\"4\"}', '', '', '20.10', '', 'Gratis', '', 260.42, 54.6882, 315.108, NULL, 'Y', 1, '2020-07-28 09:02:57'),
(5, '106', 'Association', 'Test Merelbeke Manu', 'Merelbeke feest', '2000', '5', '2', '', '', NULL, '9820', 'Kerkwegel', '17', '2020-08-28 00:00:00', '2020-08-28', '18:30', '2020-08-30', '13:30', '{\"1\":\"3\",\"2\":\"2\",\"3\":\"5\",\"4\":\"2\",\"6\":\"3\"}', '65.0', '', '', '20.20', '', '', 316.44, 66.4524, 382.892, NULL, 'Y', 1, '2020-07-28 11:20:26'),
(9, '106', 'Association', 'Test Merelbeke Manu', 'test  merelbeke', '1000', '2', '2', '', '', NULL, '9820', 'Merelbekestraat', '23', '2020-08-27 00:00:00', '2020-08-28', '18:30', '2020-08-30', '13:30', '{\"1\":\"3\",\"2\":\"2\",\"3\":\"1\",\"6\":\"4\"}', '', '65.0', '', '', 'Gratis', '', 221.32, 46.4772, 267.797, NULL, 'N', 0, '2020-07-30 12:18:07'),
(10, '7', 'Association', NULL, 'xc ', 'cx ', ' cx', ' cx', '', '', NULL, ' xc', ' xcv', '9876543210', '2020-07-31 00:00:00', '2020-08-28', '18:30', '2020-08-30', '13:30', 'null', '65.0', '', '', '', '', 'Gratis', 65, 13.65, 78.65, NULL, 'N', 0, '2020-07-31 07:53:26'),
(11, '4', 'City', NULL, 'dfbh', 'fgb', 'bgf', 'bgf', '', '', NULL, 'bgf', 'bgf', '9876543210', '2020-08-03 00:00:00', '2020-08-28', '18:30', '2020-08-30', '13:30', '{\"1\":\"1\",\"2\":\"1\",\"3\":\"2\",\"4\":\"4\",\"6\":\"5\"}', '', '', '20.10', '20.20', '', '', 264.7, 55.587, 320.287, NULL, 'N', 0, '2020-08-03 10:26:36'),
(12, '2', 'City', NULL, 'test event', '200', '200', '200', '', '', NULL, 'gtrgtr', 'regfer', 'eteteeer', '2020-08-29 00:00:00', '2020-08-28', '18:30', '2020-08-30', '13:30', '{\"1\":\"2\"}', '65.0', '', '', '', '', '', 81, 17.01, 98.01, NULL, 'N', 0, '2020-08-06 12:28:44'),
(13, '2', 'City', NULL, 'Test', 'Test', '200', '200', '', '', NULL, '876543', 'Test', '876567', '0000-00-00 00:00:00', '2020-09-01', '10:00', '2020-09-12', '18:30', '{\"1\":\"2\"}', '65.0', '', '', '20.20', '', '', 101.2, 21.252, 122.452, NULL, 'N', 0, '2020-08-06 15:38:16'),
(14, '2', 'City', NULL, 'Test', 'Test', 'Test', 'Test', '', '', NULL, 'Test', 'Test', 'Test', '0000-00-00 00:00:00', '2020-08-13', '18:30', '2020-08-28', '18:30', '{\"3\":\"9\"}', '65.0', '', '', '', '', 'Gratis', 245, 51.45, 296.45, NULL, 'N', 0, '2020-08-06 15:48:50'),
(15, '7', 'Association', NULL, 'Test 123', 'Test 123', 'Test 123', 'Test 123', '', '', NULL, 'Test 123', 'Test 123', 'Test 123', '0000-00-00 00:00:00', '2020-08-07', '18:30', '2020-08-14', '06:30', '{\"1\":\"5\"}', '65.0', '', '', '', '', 'Gratis', 105, 22.05, 127.05, NULL, 'N', 0, '2020-08-07 07:41:05'),
(16, '7', 'Association', NULL, ' fd', 'fd', 'dffd', 'fd', '', '', NULL, 'fd', 'fd', '9876543210', '0000-00-00 00:00:00', '2020-08-07', '00:00', '2020-08-25', '06:00', '{\"1\":\"1\",\"2\":\"2\",\"3\":\"3\",\"4\":\"4\",\"6\":\"5\"}', '65.0', '', '', '', '', 'Gratis', 313.4, 65.814, 379.214, NULL, 'N', 0, '2020-08-07 08:16:35'),
(17, '7', 'Association', NULL, 'qwd', 'dqx', 'dqw', 'dq', '', '', NULL, 'dqw', 'dwq', '9876543210', '0000-00-00 00:00:00', '2020-08-07', '00:00', '2020-08-14', '06:00', '{\"1\":\"1\",\"2\":\"2\",\"3\":\"3\",\"4\":\"4\",\"6\":\"5\"}', '65.0', '', '', '', '', 'Gratis', 313.4, 65.814, 379.214, NULL, 'N', 0, '2020-08-07 09:54:59'),
(18, '4', 'City', NULL, 'sd', 'ds', 'sdf', 'dfs', '', '', NULL, 'dfs', 'dfs', '9876543210', '0000-00-00 00:00:00', '2020-08-07', '00:00', '2020-08-14', '06:00', '{\"1\":\"1\",\"2\":\"2\",\"3\":\"3\",\"4\":\"4\",\"6\":\"5\"}', '65.0', '', '', '', '', 'Gratis', 313.4, 65.814, 379.214, NULL, 'N', 0, '2020-08-07 09:56:13'),
(19, '7', 'Association', NULL, 'Test', 'aSAsa', '200', '22', '', '', NULL, 'M2 4WU', 'asdasdf', '1234567890', '0000-00-00 00:00:00', '2020-08-08', '06:30', '2020-08-09', '06:30', '{\"1\":\"1\",\"2\":\"1\",\"3\":\"1\"}', '65.0', '', '', '', '', 'Gratis', 97, 20.37, 117.37, NULL, 'N', 0, '2020-08-07 10:02:12'),
(20, '4', 'City', NULL, 'sd', 'ds', 'sdf', 'dfs', '', '', NULL, 'dfs', 'dfs', '9876543210', '0000-00-00 00:00:00', '2020-08-07', '00:00', '2020-08-14', '06:00', '{\"1\":\"1\",\"2\":\"2\",\"3\":\"3\",\"4\":\"4\",\"6\":\"5\"}', '65.0', '', '', '', '', 'Gratis', 313.4, 65.814, 379.214, NULL, 'N', 0, '2020-08-07 10:16:54'),
(21, '4', 'City', NULL, 'dsa', 'sfd', 'fs', 'ffs', '', '', NULL, 'fsfa', 'asf', '9876543210', '0000-00-00 00:00:00', '2020-08-07', '00:00', '2020-08-14', '06:00', '{\"1\":\"1\",\"2\":\"2\",\"3\":\"3\",\"4\":\"4\",\"6\":\"5\"}', '65.0', '', '', '', '', 'Gratis', 313.4, 65.814, 379.214, NULL, 'N', 0, '2020-08-07 10:19:42'),
(22, '7', 'Association', NULL, 'ax', 'sa', 'sa', 'sx', '', '', NULL, 'sax', 'xs', '9876543210', '0000-00-00 00:00:00', '2020-08-07', '00:00', '2020-08-14', '06:00', '{\"1\":\"1\",\"2\":\"2\",\"3\":\"5\",\"4\":\"7\",\"6\":\"8\"}', '65.0', '', '', '', 'Gratis', '', 463.14, 97.2594, 560.399, NULL, 'N', 0, '2020-08-07 10:21:03'),
(23, '4', 'City', NULL, 'sdad', 's', 'ad', 'dsa', '', '', NULL, 'dasdsa', 'das', '9876543210', '0000-00-00 00:00:00', '2020-08-07', '00:00', '2020-08-14', '00:00', 'null', '65.0', '', '', '', '', 'Gratis', 65, 13.65, 78.65, NULL, 'N', 0, '2020-08-07 10:23:38');

-- --------------------------------------------------------

--
-- Table structure for table `orders_old`
--

CREATE TABLE `orders_old` (
  `id` int(11) NOT NULL,
  `user_id` varchar(300) NOT NULL,
  `u_type` enum('Association','City') NOT NULL DEFAULT 'Association',
  `association_name` varchar(300) DEFAULT NULL,
  `event_name` varchar(300) NOT NULL,
  `number_of_visitor` varchar(300) NOT NULL,
  `cups_per_visitor` varchar(300) NOT NULL,
  `number_of_bar` varchar(300) NOT NULL,
  `used_cups` varchar(300) NOT NULL,
  `lost_cup` varchar(300) NOT NULL,
  `wash_prc` varchar(300) DEFAULT NULL,
  `postcode` varchar(300) NOT NULL,
  `street` varchar(300) NOT NULL,
  `number` varchar(300) NOT NULL,
  `event_date` datetime NOT NULL,
  `products` longtext NOT NULL,
  `collection_by_profiwash_at_the_event` varchar(300) DEFAULT NULL,
  `return_to_address` varchar(300) DEFAULT NULL,
  `collection_by_profiwash_at_collection_point` varchar(300) DEFAULT NULL,
  `return_via_collection_point` varchar(300) DEFAULT NULL,
  `delivery_to_profiwash` varchar(300) DEFAULT NULL,
  `pick_up_at_profiwash` varchar(300) DEFAULT NULL,
  `sub_total` varchar(300) NOT NULL,
  `tax` varchar(300) NOT NULL,
  `total` varchar(300) NOT NULL,
  `final_cost` varchar(300) DEFAULT NULL,
  `order_status` enum('Y','N') NOT NULL DEFAULT 'N',
  `invoice_created_by_admin` int(50) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders_old`
--

INSERT INTO `orders_old` (`id`, `user_id`, `u_type`, `association_name`, `event_name`, `number_of_visitor`, `cups_per_visitor`, `number_of_bar`, `used_cups`, `lost_cup`, `wash_prc`, `postcode`, `street`, `number`, `event_date`, `products`, `collection_by_profiwash_at_the_event`, `return_to_address`, `collection_by_profiwash_at_collection_point`, `return_via_collection_point`, `delivery_to_profiwash`, `pick_up_at_profiwash`, `sub_total`, `tax`, `total`, `final_cost`, `order_status`, `invoice_created_by_admin`, `created_at`) VALUES
(4, '14', 'Association', 'dc sd sd', 'fg', 'gh', '1', '55', '10', '10', '16', '55656', 'tg', '646464', '2020-05-19 00:00:00', '{\"1\":\"5\",\"3\":\"3\",\"6\":\"1\"}', '65', '', '', '', 'Gratis', '', ' 165', ' 34.65', ' 299.65', '200', 'Y', 0, '2020-05-14 06:50:15'),
(5, '7', 'Association', '', 'fg', 'gh', '2', '55', '5', '40', '', '55656', 'tg', '646464', '2020-05-30 00:00:00', '{\"1\":\"5\",\"3\":\"3\",\"6\":\"1\"}', '65', '', '', '', 'Gratis', '', ' 165', ' 34.65', ' 299.65', '', 'Y', 0, '2020-05-14 06:51:13'),
(6, '13', 'Association', 'Assocaiotn Matthias', 'fgv', 'fdg', 'fd', 'fd', '14', '12', '42', '4545', 'rgt', '4545', '2020-05-30 00:00:00', '{\"1\":\"5\",\"2\":\"1\"}', '', '65', '', '20', '', '', ' 109', ' 22.89', ' 155.89', '', 'Y', 0, '2020-05-14 16:07:02'),
(7, '14', 'Association', 'dc sd sd', 'test ', '40', '4', '2', '44', '42', '', '09090', 'asda f', '454665', '2020-05-29 00:00:00', '{\"1\":\"20\"}', '65', '', '', '20', '', '', ' 165', ' 34.65', ' 279.65', '', 'Y', 0, '2020-05-14 18:57:00'),
(8, '14', 'Association', 'dc sd sd', 'ddf', 'df', '24', '324', '', '', '', '09090', 'wer', '325', '2020-05-28 00:00:00', '{\"1\":\"500\"}', '65', '', '', '', '', 'Gratis', ' 2065', ' 433.65', ' 4498.65', '', 'N', 0, '2020-05-15 13:50:06'),
(9, '19', 'Association', NULL, 'test Event', '3000', '10', '10', '3000', '100', '1', '700150', 'ashdklasjd', '727272727', '2020-05-16 00:00:00', '{\"1\":\"10\",\"2\":\"10\",\"3\":\"10\"}', '65', '', '', '', '', 'Gratis', ' 345', ' 72.45', ' 697.45', '1', 'N', 0, '2020-05-16 09:42:13'),
(10, '19', 'Association', NULL, 'test Event', '1000', '10', '10', '100', '200', '1', '700150', 'ashdklasjd', '727272727', '2020-05-16 00:00:00', '{\"1\":\"10\",\"2\":\"10\",\"3\":\"10\"}', '65', '', '', '', '', 'Gratis', ' 345', ' 72.45', ' 697.45', '1000', 'N', 0, '2020-05-16 09:43:21'),
(11, '19', 'Association', NULL, 'test Event', '1000', '10', '10', '100', '10', '1', '700150', 'ashdklasjd', '727272727', '2020-05-16 00:00:00', '{\"1\":\"10\",\"2\":\"10\",\"3\":\"10\"}', '65', '', '', '', '', 'Gratis', ' 345', ' 72.45', ' 417.45', '2', 'N', 0, '2020-05-16 09:45:20'),
(12, '20', 'Association', 'r tg tg htr ', 'dsf', 'fdg', '45', '45', '', '', '', '09090', '445', '45', '2020-05-28 00:00:00', '{\"1\":\"4\",\"2\":\"3\",\"3\":\"2\"}', '65', '', '', '', 'Gratis', '', ' 133', ' 27.93', ' 160.93', '', 'N', 0, '2020-05-16 09:56:44'),
(13, '2', 'City', NULL, 'daf', '45', '45', '45', '', '', '', '8790', 'rsrt', '3545', '2020-05-28 00:00:00', '{\"1\":\"4\",\"2\":\"3\"}', '65', '', '', '20', '', '', ' 113', ' 23.73', ' 136.73', '', 'N', 0, '2020-05-17 18:01:02'),
(14, '2', 'City', NULL, 'daf', '45', '45', '45', '', '', '', '8790', 'rsrt', '3545', '2020-05-17 00:00:00', '{\"1\":\"4\",\"2\":\"3\"}', '65', '', '', '', 'Gratis', '', ' 93', ' 19.53', ' 112.53', '', 'N', 0, '2020-05-17 18:02:13'),
(15, '25', 'Association', NULL, 'test Event', '1000', '2', '5', '', '', '', '9050', 'Test', '23', '2020-05-28 00:00:00', '{\"1\":\"1000\",\"2\":\"200\"}', '', '65', '', '', 'Gratis', '', ' 4865', ' 1021.65', ' 5886.65', '', 'N', 0, '2020-05-18 05:25:39'),
(16, '7', 'Association', 'gjy gj', 'CSS7011 - Wevalgo Joomla', 'aef', '55', '2', '', '', '', '', 'e33', '2233', '2020-05-25 00:00:00', '{\"1\":\"3\",\"4\":\"3\"}', '65', '65', '', '', '', 'Gratis', ' 157', ' 32.97', ' 189.97', '', 'N', 1, '2020-05-23 07:35:06'),
(17, '32', 'Association', 'Stephan_other', 'Roker', '300', '4', '2', '', '', '', '110091', 'street', '12', '2020-05-24 00:00:00', '{\"1\":\"4\",\"4\":\"5\"}', '65', '65', '', '', 'Gratis', 'Gratis', ' 171', ' 35.91', ' 206.91', '', 'N', 0, '2020-05-23 12:11:44'),
(18, '31', 'City', NULL, 'test1', '5', '25', '20', '', '', '', '201301', 'noida', '7503813802', '2020-05-25 00:00:00', '{\"1\":\"10\",\"3\":\"10\"}', '65', '65', '', '', 'Gratis', 'Gratis', ' 370', ' 77.7', ' 447.7', '', 'N', 0, '2020-05-23 14:22:19'),
(19, '32', 'Association', 'Stephan_other', 'test_party1', '10', '20', '10', '', '', '', '201302', 'noida', '7503813802', '2020-05-25 00:00:00', '{\"1\":\"10\",\"4\":\"20\"}', '', '65', '20', '', 'Gratis', 'Gratis', ' 225', ' 47.25', ' 272.25', '', 'N', 0, '2020-05-23 14:27:06'),
(20, '31', 'City', NULL, 'test3', '20', '20', '20', '', '', '', '201302', 'noida', '8383855251', '2020-05-25 00:00:00', '{\"1\":\"10\",\"2\":\"20\"}', '65', '65', '', '', '', '', ' 250', ' 52.5', ' 302.5', '', 'N', 0, '2020-05-23 17:59:00'),
(21, '31', 'City', NULL, 'test5', '20', '20', '20', '', '', '', '201302', '20', '8383855252', '2020-05-25 00:00:00', '{\"1\":\"10\"}', '', '', '', '', '', '', ' 40', ' 8.4', ' 48.4', '', 'N', 0, '2020-05-23 18:09:50'),
(22, '44', 'Association', NULL, 'vfcd', 'vfcd', 'cdxs', 'cdxs', '', '', '', 'cxs', 'cxs', 'cdxs', '2020-05-25 00:00:00', '{\"1\":\"1000\"}', '', '', '20', '', '', 'Gratis', ' 4020', ' 844.2', ' 4864.2', '', 'Y', 0, '2020-05-25 14:02:01'),
(23, '44', 'Association', NULL, 'rfdez', 'vcdx', 'vcd', 'vcdx', '', '', '', 'cdx', 'vfcdx', 'cdxs', '2020-05-25 00:00:00', '{\"1\":\"5\"}', '', '', '', '', '', '', ' 40', ' 8.4', ' 48.4', '', 'N', 0, '2020-05-25 15:42:02'),
(24, '71', 'Association', 'Demo manu', 'Test event manu', '1000', '3', '2', '', '', NULL, '8790', 'Waregem', '212', '2020-05-31 00:00:00', '{\"1\":\"5\",\"2\":\"10\"}', '', '65', '', '', 'Gratis', '', ' 145', ' 30.45', ' 175.45', NULL, 'Y', 0, '2020-05-29 08:15:18'),
(25, '24', 'City', NULL, 'test Event', '1000', '10', '2', '', '', NULL, '9050', 'test', '2', '2020-06-12 00:00:00', '{\"1\":\"2\",\"2\":\"3\",\"3\":\"1\"}', '', '65', '', '', '', 'Gratis', ' 113', ' 23.73', ' 136.73', NULL, 'Y', 0, '2020-06-09 12:59:43'),
(26, '74', 'Association', 'Nieuwe test 906', 'test Event matthias', '2999', '2', '5', '', '', NULL, '9090', 'test', '2', '2020-06-24 00:00:00', '{\"1\":\"3\",\"2\":\"2\",\"3\":\"1\",\"4\":\"2\",\"6\":\"3\"}', '65', '', '', '20', '', '', ' 225', ' 47.25', ' 272.25', NULL, 'Y', 0, '2020-06-09 13:02:49'),
(27, '75', 'Association', 'Test 1006', 'test Event 1006', '10000', '2', '5', '', '', NULL, '8790', 'Zuider', '2', '2020-06-25 00:00:00', '{\"1\":\"4\",\"2\":\"3\",\"6\":\"2\"}', '65', '', '', '20', '', '', ' 181', ' 38.01', ' 219.01', NULL, 'Y', 0, '2020-06-10 12:20:22'),
(28, '71', 'Association', 'Demo manu', 'test Event', '1000', '10', '2', '', '', NULL, '9090', 'test', '1', '2020-06-25 00:00:00', '{\"1\":\"10\",\"2\":\"3\",\"6\":\"5\"}', '', '65', '', '', 'Gratis', '', ' 287', ' 60.27', ' 347.27', NULL, 'Y', 0, '2020-06-10 15:22:50'),
(29, '71', 'Association', 'Demo manu', 'test Event', '1000', '10', '3', '', '', NULL, '9060', 'Tst', '2', '2020-06-30 00:00:00', '{\"1\":\"10\",\"2\":\"3\",\"6\":\"5\"}', '', '65', '', '', 'Gratis', '', ' 287', ' 60.27', ' 347.27', NULL, 'Y', 0, '2020-06-10 15:25:37'),
(30, '7', 'Association', 'gjy gj', 'CSS7011 - Wevalgo Joomla', 'as', 'aed', '12', '', '', NULL, '02026', 'street', '66', '2020-06-18 00:00:00', '{\"1\":\"10\",\"2\":\"3\",\"6\":\"5\"}', '', '65', '', '', 'Gratis', '', ' 287', ' 60.27', ' 347.27', NULL, 'N', 0, '2020-06-11 11:31:44'),
(31, '71', 'Association', 'Demo manu', 'rvcex', 'vcdxs', 'cdx', 'fdcxs', '', '', NULL, '9080', 'test', '2', '2020-06-25 00:00:00', '{\"1\":\"3\",\"2\":\"5\"}', '', '65', '', '', 'Gratis', '', ' 109', ' 22.89', ' 131.89', NULL, 'N', 0, '2020-06-13 09:57:02'),
(32, '7', 'Association', 'gjy gj', 'marriage anniversary ', '1000', '2', '3', '', '', NULL, '8070', 'S-23', 'N-23', '2020-06-27 00:00:00', '{\"1\":\"3\"}', '65', '', '', '', '', '', ' 89', ' 18.69', ' 107.69', NULL, 'N', 0, '2020-06-16 06:38:55'),
(33, '76', 'Association', 'V-15', 'Spouse Birthday', '100', '2', '4', '', '', NULL, '8070', 'S-007', 'N-007', '2020-06-27 00:00:00', '{\"2\":\"5\"}', '', '', '', '20', '', '', ' 40', ' 8.4', ' 48.4', NULL, 'Y', 1, '2020-06-16 07:23:31'),
(34, '76', 'Association', 'V-15', 'Spouse\'s Baby Shower', '200', '3', '5', '', '', NULL, '8070', 'S-77', 'N-88', '2020-06-17 00:00:00', '{\"1\":\"5\"}', '65', '', '', '20', '', '', ' 125', ' 26.25', ' 151.25', NULL, 'N', 0, '2020-06-16 10:25:16'),
(35, '71', 'Association', 'Demo manu', 'Durafest', '500', '5', '2', '', '', NULL, '9200', 'Teststraat', '15', '2020-09-05 00:00:00', '{\"1\":\"10\",\"2\":\"20\",\"6\":\"6\"}', '', '', '20', '', '', 'Gratis', ' 336', ' 70.56', ' 406.56', NULL, 'N', 1, '2020-06-17 10:58:03'),
(36, '7', 'Association', 'gjy gj', 'asa', 'asa', 'asas', 'asa', '', '', NULL, 'asas', 'asas', 'asas', '2020-06-26 00:00:00', '{\"1\":\"1222\",\"2\":\"111\",\"4\":\"111\",\"6\":\"111\"}', '65', '65', '', '', '', '', ' 13791', ' 2896.11', ' 16687.11', NULL, 'N', 0, '2020-06-26 05:55:08'),
(37, '7', 'Association', 'gjy gj', 'sas', 'asasa', 'asas', 'asas', '', '', NULL, 'aasas', 'asas', 'asas', '2020-06-26 00:00:00', '{\"1\":\"1212\",\"2\":\"12121\"}', '65', '65', '', '', '', '', ' 58310', ' 12245.1', ' 70555.1', NULL, 'N', 0, '2020-06-26 06:53:29'),
(38, '7', 'Association', 'gjy gj', 'asas', 'asas', 'asas', 'sasas', '', '', NULL, 'asas', 'asas', 'asas', '2020-07-02 00:00:00', '{\"1\":\"12\",\"2\":\"21\",\"3\":\"212\"}', '', '', '', '20', 'Gratis', '', ' 4440', ' 932.4', ' 5372.4', NULL, 'N', 0, '2020-07-02 05:03:05'),
(39, '7', 'Association', 'gjy gj', 'fsdf', 'sdfsdf', 'sdfsdf', 'sdfsdf', '', '', NULL, '8090', 'casdf', 'dsfdsaf', '2020-07-16 00:00:00', '{\"1\":\"2\"}', '65', '', '', '', '', '', ' 81', ' 17.01', ' 98.01', NULL, 'N', 0, '2020-07-16 09:16:46'),
(40, '7', 'Association', 'gjy gj', 'sdfsdf', 'sdfsdf', 'sdfsdf', 'sdfsdf', '', '', NULL, 'sdfsdf', 'sdfsdf', 'sdfsd', '2020-07-24 00:00:00', '{\"6\":\"7\"}', '65', '', '', '', '', '', ' 247', ' 51.87', ' 298.87', NULL, 'N', 0, '2020-07-16 10:38:13'),
(41, '7', 'Association', 'gjy gj', 'test event', '90', 'gfhgf', 'ghgf', '', '', NULL, '9000', 'S-77', 'N-77', '2020-07-25 00:00:00', '{\"6\":\"10\"}', '65', '', '', '20', '', '', ' 345', ' 72.45', ' 417.45', NULL, 'N', 0, '2020-07-16 11:12:24'),
(42, '4', 'City', NULL, 'test', '10', 'df', 'dsf', '', '', NULL, '3565', 'dfs', 'sdf', '2020-07-24 00:00:00', '{\"6\":\"6\"}', '', '65', '20', '', '', '', ' 241', ' 50.61', ' 291.61', NULL, 'N', 1, '2020-07-16 13:05:52'),
(43, '4', 'City', NULL, 'test', '67', 'dsf', 'dsf', '', '', NULL, '43543', 'ssdfs', 'sdfdsf', '2020-07-16 00:00:00', '{\"6\":\"7\"}', '65', '', '', '', 'Gratis', '', ' 247', ' 51.87', ' 298.87', NULL, 'N', 1, '2020-07-16 14:00:20'),
(44, '7', 'Association', 'gjy gj', 'test', '600', 'f', 'f', '', '', NULL, '9000', 'S-77', 'N-77', '2020-07-31 00:00:00', '{\"6\":\"2\"}', '65', '', '', '', '', 'Gratis', ' 117', ' 24.57', ' 141.57', NULL, 'N', 0, '2020-07-17 06:03:24'),
(45, '7', 'Association', 'gjy gj', 'RSRWT', 'FGFDSG', 'FDGDFGDFG', 'DFGDFGDFG', '', '', NULL, 'DFGDFG', 'DFGDFGDF', 'GDFGDFG', '2020-07-24 00:00:00', '{\"2\":\"5\"}', '', '', '', '', '', '', ' 20', ' 4.2', ' 24.2', NULL, 'N', 0, '2020-07-17 06:26:45'),
(46, '7', 'Association', 'gjy gj', 'xcfvb', 'vcb', 'vcb', 'vb', '', '', NULL, '3', 'tg', '6556', '2020-07-23 00:00:00', '{\"1\":\"10\"}', '65', '', '', '', 'Gratis', '', ' 145', ' 30.45', ' 175.45', NULL, 'N', 0, '2020-07-17 06:54:34'),
(47, '7', 'Association', 'gjy gj', 'fdgdfg', 'fgdfg', 'fgfdg', 'dfgdfg', '', '', NULL, '635', 'dfgdfg', 'dfgfdg', '2020-07-17 00:00:00', '{\"1\":\"8\",\"2\":\"7\",\"3\":\"3\",\"6\":\"5\"}', '65', '', '', '', '', '', ' 347', ' 72.87', ' 419.87', NULL, 'N', 0, '2020-07-17 07:08:03'),
(48, '4', 'City', NULL, 'sdfsdf', 'sdfsdfsd', 'sdfsdf', 'sdfsdf', '', '', NULL, 'sdfsdf', 'sdfsdfsdfsdf', 'sdfsdfsdfsfsdf', '2020-07-31 00:00:00', '{\"2\":\"5\",\"3\":\"8\"}', '65', '', '', '20', '', '', ' 265', ' 55.65', ' 320.65', NULL, 'N', 0, '2020-07-17 07:30:44'),
(49, '7', 'Association', 'gjy gj', 'hgjhgj', 'hgjhgj', 'hgjhgj', 'hgjgh', '', '', NULL, 'jghj', 'ghj', 'jghj', '2020-07-17 00:00:00', '{\"2\":\"700\"}', '65', '', '', '20', '', '', ' 2885', ' 605.85', ' 3490.85', NULL, 'N', 0, '2020-07-17 09:13:40'),
(50, '7', 'Association', 'gjy gj', 'test event', '10', 'b', 'a', '', '', NULL, '9000', 'S-77', 'N-77', '2020-07-17 00:00:00', '{\"1\":\"2\",\"2\":\"3\",\"3\":\"4\"}', '65', '', '', '20', '', '', ' 193', ' 40.53', ' 233.53', NULL, 'N', 0, '2020-07-17 13:14:56'),
(51, '4', 'City', NULL, 'test', '100', '10', '5', '', '', NULL, '9999', 'S-77', 'N-77', '2020-07-31 00:00:00', '{\"4\":\"5\",\"6\":\"7\"}', '65', '', '', '20', '', '', ' 292', ' 61.32', ' 353.32', NULL, 'N', 0, '2020-07-17 13:18:53'),
(52, '7', 'Association', 'gjy gj', 'birth ', '100', '2', '10', '', '', NULL, '9000', 'S-77', 'N-666', '2020-07-31 00:00:00', '{\"4\":\"10\",\"6\":\"5\"}', '65', '', '', '20', '', '', ' 265', ' 55.65', ' 320.65', NULL, 'N', 0, '2020-07-17 13:33:14'),
(53, '4', 'Association', NULL, 'wqewq', 'sad', 'sad', 'sd', '', '', NULL, 'sad', 'asd', 'asd', '2020-07-18 00:00:00', '{\"2\":\"5\",\"3\":\"8\"}', '65', '', '', '20', '', '', ' 265', ' 55.65', ' 320.65', NULL, 'N', 0, '2020-07-18 05:06:07'),
(54, '4', 'City', NULL, 'wretwet', 'wrtwrt', 'wrtw', 'rwet', '', '', NULL, '4254', 'fdgfdsg', 'dfg', '2020-07-18 00:00:00', '{\"2\":\"5\",\"3\":\"2\"}', '65', '', '', '20', '', '', ' 145', ' 30.45', ' 175.45', NULL, 'N', 0, '2020-07-18 05:08:20'),
(55, '4', 'City', NULL, 'fdf', 'dfsd', 'dsfdsff', 'dsf', '', '', NULL, 'sdf', 'sdf', 'sdf', '2020-07-18 00:00:00', '{\"1\":\"3\",\"2\":\"3\",\"3\":\"8\",\"4\":\"4\",\"6\":\"6\"}', '65', '', '', '20', '', '', ' 457', ' 95.97', ' 552.97', NULL, 'N', 0, '2020-07-18 05:11:06'),
(56, '4', 'City', NULL, 'rwr', 'wertw', 'werew', 'rwer', '', '', NULL, 'wer', 'wer', 'wer', '2020-07-18 00:00:00', '{\"1\":\"4\"}', '65', '', '', '20', '', '', ' 117', ' 24.57', ' 141.57', NULL, 'N', 0, '2020-07-18 16:23:04'),
(57, '4', 'City', NULL, 'soumyadip\'s test event', '100', '3', '5', '', '', NULL, '9988', 'S-77', 'N-77', '2020-07-27 00:00:00', '{\"1\":\"2\",\"2\":\"1\",\"6\":\"5\"}', '65', '', '20', '', '', '', ' 235', ' 49.35', ' 284.35', NULL, 'N', 0, '2020-07-18 17:24:04'),
(58, '4', 'City', NULL, 'soumyadip\'s test event', '100', '3', '5', '', '', NULL, '9988', 'S-77', 'N-77', '2020-07-18 00:00:00', '{\"1\":\"2\",\"2\":\"1\",\"6\":\"5\"}', '65', '', '20', '', '', '', ' 235', ' 49.35', ' 284.35', NULL, 'N', 0, '2020-07-18 17:27:28'),
(59, '7', 'Association', 'gjy gj', 'asdsad', 'sdasd', 'asdasd', 'sad', '', '', NULL, 'sadasd', 'asd', 'sad', '2020-07-18 00:00:00', '{\"1\":\"2\",\"2\":\"1\",\"6\":\"5\"}', '65', '', '20', '', '', '', ' 235', ' 49.35', ' 284.35', NULL, 'N', 0, '2020-07-18 17:30:45'),
(60, '7', 'Association', 'gjy gj', 'pppp', '777', '7', '9', '', '', NULL, '5555', 'S-77', 'N-666', '2020-07-25 00:00:00', '{\"4\":\"9\",\"6\":\"7\"}', '65', '', '', '20', '', '', ' 312', ' 65.52', ' 377.52', NULL, 'N', 0, '2020-07-18 17:36:23'),
(61, '7', 'Association', 'gjy gj', 'gdhdfg', 'fdgfdgfdgdf', 'dfgdfg', 'dfgfdg', '', '', NULL, 'dfgdfgfdgfdg', 'fdgdfg', 'dfgdfg', '2020-07-18 00:00:00', '{\"1\":\"5\",\"2\":\"6\"}', '65', '', '', '', '', '', ' 129', ' 27.09', ' 156.09', NULL, 'N', 0, '2020-07-18 17:42:48'),
(62, '7', 'Association', 'gjy gj', 'gdhdfg', 'fdgfdgfdgdf', 'dfgdfg', 'dfgfdg', '', '', NULL, 'dfgdfgfdgfdg', 'fdgdfg', 'dfgdfg', '2020-07-18 00:00:00', '{\"1\":\"5\",\"2\":\"6\"}', '65', '', '', '', '', '', ' 129', ' 27.09', ' 156.09', NULL, 'N', 0, '2020-07-18 17:44:33'),
(63, '4', 'City', NULL, 'gfdgdfg', 'dfgdf', 'fdgdfg', 'fdg', '', '', NULL, 'fdgdfgdf', 'gdfg', 'gfdgdfg', '2020-07-18 00:00:00', '{\"1\":\"5\",\"2\":\"6\"}', '65', '', '', '', '', '', ' 129', ' 27.09', ' 156.09', NULL, 'N', 0, '2020-07-18 17:45:53'),
(64, '4', 'City', NULL, 'sadsad', 'sadsad', 'asdsadas', 'asdsa', '', '', NULL, 'dasd', 'dfsaasd', 'dsadsad', '2020-07-18 00:00:00', '{\"1\":\"5\",\"2\":\"6\"}', '65', '', '', '', '', '', ' 129', ' 27.09', ' 156.09', NULL, 'N', 0, '2020-07-18 17:48:15'),
(65, '4', 'City', NULL, 'ewrewqr', 'dsfdsfsdfsd', 'dsfdsfsd', 'fsdfs', '', '', NULL, 'dsfdsfsdf', 'sadsad', 'fsdfsdfsd', '2020-07-18 00:00:00', '{\"1\":\"5\",\"2\":\"1\"}', '65', '', '', '', '', '', ' 109', ' 22.89', ' 131.89', NULL, 'N', 0, '2020-07-18 17:51:28'),
(66, '4', 'City', NULL, 'dsfsdf', 'sdfsdfsdf', 'sdfsdfsdf', 'fsdf', '', '', NULL, 'dsfsdfsdfsdf', 'sdfdsf', 'sdfsdsfdsfdfsdfsd', '2020-07-18 00:00:00', '{\"1\":\"4\",\"2\":\"5\"}', '', '', '', '', '', '', ' 52', ' 10.92', ' 62.92', NULL, 'N', 0, '2020-07-18 17:54:47'),
(67, '7', 'Association', 'gjy gj', 'fdsfdsf', 'dsfsdfsd', 'fdsf', 'dsf', '', '', NULL, '2354235', 'dsfsdf', 'sdfsdf', '2020-07-18 00:00:00', '{\"1\":\"2\",\"2\":\"3\"}', '65', '', '', '', '', '', ' 93', ' 19.53', ' 112.53', NULL, 'N', 0, '2020-07-18 17:59:43'),
(68, '7', 'Association', 'gjy gj', 'adsasdd', 'asddsa', 'asdsad', 'sad', '', '', NULL, 'sad', 'sad', 'sad', '2020-07-18 00:00:00', '{\"1\":\"5\",\"2\":\"8\"}', '', '', '', '', '', '', ' 72', ' 15.12', ' 87.12', NULL, 'N', 0, '2020-07-18 18:07:05'),
(69, '7', 'Association', 'gjy gj', 'adsasdd', 'asddsa', 'asdsad', 'sad', '', '', NULL, 'sad', 'sad', 'sad', '2020-07-18 00:00:00', '{\"1\":\"5\",\"2\":\"8\"}', '', '', '', '', '', '', ' 72', ' 15.12', ' 87.12', NULL, 'N', 0, '2020-07-18 18:09:41'),
(70, '4', 'City', NULL, 'fdgdfg', 'fdgdfgdfg', 'dfgdfg', 'dfgdfgdf', '', '', NULL, 'dfgdfg', 'dfgdfgdfg', 'gdfg', '2020-07-18 00:00:00', '{\"1\":\"5\",\"2\":\"6\"}', '', '', '', '', '', '', ' 64', ' 13.44', ' 77.44', NULL, 'N', 0, '2020-07-18 18:16:37'),
(71, '7', 'Association', 'gjy gj', 'dfdsfds', 'fsdfsdf', 'sdfdsf', 'sdfsdf', '', '', NULL, 'dsfdsfsdf', 'dsfsdfsdfsd', 'ffdsfsf', '2020-07-18 00:00:00', '{\"1\":\"3\",\"2\":\"4\"}', '', '', '', '', '', '', ' 40', ' 8.4', ' 48.4', NULL, 'N', 0, '2020-07-18 18:20:40'),
(72, '7', 'Association', 'gjy gj', 'dfdsfds', 'fsdfsdf', 'sdfdsf', 'sdfsdf', '', '', NULL, 'dsfdsfsdf', 'dsfsdfsdfsd', 'ffdsfsf', '2020-07-18 00:00:00', '{\"1\":\"3\",\"2\":\"4\"}', '', '', '', '', '', '', ' 40', ' 8.4', ' 48.4', NULL, 'N', 0, '2020-07-18 18:24:43'),
(73, '4', 'City', NULL, 'fxgfdsgfg', 'gdfgfdg', 'fdgdfg', 'fdgdg', '', '', NULL, 'dfgdfg', 'dfgdfg', 'd', '2020-07-18 00:00:00', '{\"1\":\"5\",\"2\":\"6\"}', '', '', '', '', '', '', ' 64', ' 13.44', ' 77.44', NULL, 'N', 0, '2020-07-18 18:26:18'),
(74, '7', 'Association', 'gjy gj', 'test1', '100', '5', '7', '', '', NULL, '6666', 'S-77', 'N-88', '2020-07-19 00:00:00', '{\"1\":\"2\",\"2\":\"3\"}', '65', '', '', '', '', 'Gratis', ' 93', ' 19.53', ' 112.53', NULL, 'N', 0, '2020-07-18 18:41:25'),
(75, '7', 'Association', 'gjy gj', 'test1', '100', '5', '7', '', '', NULL, '6666', 'S-77', 'N-88', '2020-07-19 00:00:00', '{\"1\":\"2\",\"2\":\"3\",\"3\":\"8\"}', '65', '', '', '', '', 'Gratis', ' 253', ' 53.13', ' 306.13', NULL, 'N', 0, '2020-07-18 18:47:58'),
(76, '7', 'Association', 'gjy gj', 'dsad', 'sadsd', 'sad', 'sad', '', '', NULL, 'sad', 'sad', 'sda', '2020-07-19 00:00:00', '{\"1\":\"5\",\"6\":\"7\"}', '', '', '', '', '', '', ' 222', ' 46.62', ' 268.62', NULL, 'N', 0, '2020-07-18 19:18:46'),
(77, '7', 'Association', 'gjy gj', 'dsfdsfdsfsd', 'fsdfsdf', 'sdfsdfsd', 'fsdf', '', '', NULL, '34254235', 'gdfgdfgdfg', 'dfg', '2020-07-19 00:00:00', '{\"1\":\"4\",\"2\":\"2\"}', '', '', '', '', '', '', ' 40', ' 8.4', ' 48.4', NULL, 'N', 0, '2020-07-18 19:20:46'),
(78, '7', 'Association', 'gjy gj', 'dsfdsfdsfsd', 'fsdfsdf', 'sdfsdfsd', 'fsdf', '', '', NULL, '34254235', 'gdfgdfgdfg', 'dfg', '2020-07-19 00:00:00', '{\"1\":\"4\",\"2\":\"2\"}', '', '', '', '', '', '', ' 40', ' 8.4', ' 48.4', NULL, 'N', 0, '2020-07-18 19:21:32'),
(79, '4', 'Association', NULL, 'T', '100', '5', '6', '', '', NULL, '77777', 'R', 'N', '2020-07-19 00:00:00', '{\"1\":\"2\",\"3\":\"5\"}', '', '', '', '', '', '', ' 116', ' 24.36', ' 140.36', NULL, 'N', 0, '2020-07-19 04:53:26'),
(80, '4', 'City', NULL, 'Ggg', '100', '5', '7', '', '', NULL, '7777', 'G', 'N', '2020-07-19 00:00:00', '{\"1\":\"2\",\"3\":\"5\"}', '', '', '', '', '', '', ' 116', ' 24.36', ' 140.36', NULL, 'N', 0, '2020-07-19 05:09:08'),
(81, '4', 'Association', NULL, 'Ggg', '400', '5', '7', '', '', NULL, '7777', 'H', 'N', '2020-07-19 00:00:00', '{\"4\":\"8\",\"6\":\"7\"}', '', '', '', '', '', '', ' 222', ' 46.62', ' 268.62', NULL, 'N', 0, '2020-07-19 05:23:23'),
(82, '7', 'Association', 'gjy gj', 'Ttt', '100', '5', '5', '', '', NULL, '5555', 'S', 'N', '2020-07-19 00:00:00', '{\"1\":\"3\",\"2\":\"4\"}', '', '', '', '', '', '', ' 40', ' 8.4', ' 48.4', NULL, 'N', 0, '2020-07-19 05:49:32'),
(83, '7', 'Association', 'gjy gj', 'Test', '100', '5', '7', '', '', NULL, '9999', 'S', 'N', '2020-07-19 00:00:00', '{\"1\":\"2\",\"2\":\"5\"}', '', '', '', '', '', '', ' 36', ' 7.56', ' 43.56', NULL, 'N', 0, '2020-07-19 05:57:23'),
(84, '7', 'Association', 'gjy gj', 'edf', 'sf', 'sdf', 'sdf', '', '', NULL, '435', 'r', '654', '2020-07-30 00:00:00', '{\"1\":\"2\",\"2\":\"3\"}', '65', '', '', '', '', '', ' 93', ' 19.53', ' 112.53', NULL, 'N', 0, '2020-07-19 06:01:49'),
(85, '4', 'City', NULL, 'Test', '100', '2', '3', '', '', NULL, '3456', 'S', 'N', '2020-07-19 00:00:00', '{\"1\":\"2\",\"2\":\"3\"}', '', '', '', '', '', '', ' 28', ' 5.88', ' 33.88', NULL, 'N', 0, '2020-07-19 07:19:36'),
(86, '2', 'City', NULL, 'fg', 'fg', 'fg', 'fg', '', '', NULL, '09090', 'asda f', '454665', '2020-07-30 00:00:00', '{\"1\":\"2\",\"2\":\"1\"}', '65', '', '', '', '', '', ' 85', ' 17.85', ' 102.85', NULL, 'N', 0, '2020-07-19 08:36:47'),
(87, '7', 'Association', 'gjy gj', 'T', '100', '5', '5', '', '', NULL, '5555', 'S', 'N', '2020-07-19 00:00:00', '{\"2\":\"3\",\"3\":\"4\"}', '', '', '', '', '', '', ' 92', ' 19.32', ' 111.32', NULL, 'N', 0, '2020-07-19 09:17:44'),
(88, '7', 'Association', 'gjy gj', 'N', '100', 'B', 'A', '', '', NULL, 'P', 'S', 'N', '2020-07-19 00:00:00', '{\"1\":\"3\",\"2\":\"4\",\"3\":\"5\"}', '65', '', '', '', '', '', ' 205', ' 43.05', ' 248.05', NULL, 'N', 0, '2020-07-19 09:19:09'),
(89, '7', 'Association', 'gjy gj', 'N1', '100', '2', '3', '', '', NULL, '3456', 'S', 'N', '2020-07-20 00:00:00', '{\"1\":\"4\",\"6\":\"5\"}', '', '', '', '', '', '', ' 162', ' 34.02', ' 196.02', NULL, 'N', 0, '2020-07-19 09:55:45'),
(90, '4', 'City', NULL, 'N2', '100', '2', '3', '', '', NULL, '5678', 'S', 'N', '2020-07-26 00:00:00', '{\"1\":\"4\",\"6\":\"5\"}', '', '', '', '', '', '', ' 162', ' 34.02', ' 196.02', NULL, 'N', 0, '2020-07-19 09:57:18'),
(91, '4', 'City', NULL, 'N2', '100', '3', '4', '', '', NULL, 'sads', 'sad', 'sad', '2020-07-29 00:00:00', '{\"1\":\"4\",\"6\":\"5\"}', '', '', '', '', '', '', ' 162', ' 34.02', ' 196.02', NULL, 'N', 0, '2020-07-19 09:58:47'),
(92, '4', 'City', NULL, 'dvff', 'xvc', 'xfb', 'xb', '', '', NULL, '123456', 'dzf', '454665', '2020-07-23 00:00:00', '{\"1\":\"2\",\"3\":\"1\"}', '65', '', '', '20', '', '', ' 121', ' 25.41', ' 146.41', NULL, 'N', 0, '2020-07-20 10:26:51'),
(93, '7', 'Association', 'gjy gj', 'Test ', '199', '5', '6', '', '', NULL, '7897', 'S', 'N', '2020-07-20 00:00:00', '{\"1\":\"3\",\"3\":\"4\",\"6\":\"2\"}', '65', '', '', '', 'Gratis', '', ' 221', ' 46.41', ' 267.41', NULL, 'N', 0, '2020-07-20 12:58:49'),
(94, '81', 'Association', 'Andere test', 'test Event', '1000', '10', '2', '', '', NULL, '9900', 'test', '23', '2020-07-31 00:00:00', '{\"1\":\"1\",\"4\":\"2\",\"6\":\"2\"}', '65', '', '', '20', '', '', ' 155', ' 32.55', ' 187.55', NULL, 'Y', 1, '2020-07-22 08:01:11'),
(95, '82', 'Association', NULL, 'tdg', 'gerg', 'refg', 'ge', '', '', NULL, '', 're', '896543290', '2020-07-22 00:00:00', 'null', '65', '65', '20', '20', 'Gratis', 'Gratis', ' 170', ' 35.7', ' 205.7', NULL, 'N', 0, '2020-07-22 08:03:12'),
(96, '81', 'Association', 'Andere test', 'Test', '200', '10', '5', '', '', NULL, '9830', 'Kerkwegel', '492', '2020-07-24 00:00:00', '{\"1\":\"3\",\"2\":\"2\"}', '', '65', '', '20', '', '', ' 117', ' 24.57', ' 141.57', NULL, 'N', 1, '2020-07-22 08:35:13'),
(97, '7', 'Association', 'gjy gj', 'Neha', '3', '1', '3', '', '', NULL, '201301', 'wqkw', '12', '2020-08-12 00:00:00', '{\"1\":\"2\",\"2\":\"3\",\"3\":\"4\"}', '65', '', '', '20', '', '', ' 193', ' 40.53', ' 233.53', NULL, 'N', 0, '2020-07-22 11:28:37'),
(98, '85', 'Association', 'Test merelbeke nicolas', 'Tets event', '1000', '5', '2', '', '', NULL, '9820', 'kerkwegel', '23', '2020-07-31 00:00:00', '{\"1\":\"3\",\"2\":\"2\",\"6\":\"1\"}', '', '65', '', '', '', '', ' 123', ' 25.83', ' 148.83', NULL, 'Y', 0, '2020-07-23 08:07:43'),
(99, '4', 'City', NULL, 'reg', 're', 'regv', 'gr', '', '', NULL, 'ger', 'gr', 're', '2020-07-23 00:00:00', 'null', '65', '', '', '', '', '', ' 65', ' 13.65', ' 78.65', NULL, 'N', 0, '2020-07-23 09:56:17'),
(100, '4', 'City', NULL, 'sfd', 'uuu', 'jj', 'jj', '', '', NULL, 'jj', 'hg', '9876543909', '2020-07-23 00:00:00', 'null', '65', '', '', '', '', '', ' 65', ' 13.65', ' 78.65', NULL, 'N', 0, '2020-07-23 10:11:05'),
(101, '4', 'City', NULL, 'feefew', 'gewgwg', 'egewg', 'ewgwegewg', '', '', NULL, '33333', 't4t4t4t', 't4334y34', '2020-07-30 00:00:00', '{\"1\":\"4\",\"2\":\"6\",\"3\":\"8\",\"4\":\"3\",\"6\":\"5\"}', '', '65', '', '', 'Gratis', '', ' 426', ' 89.46', ' 515.46', NULL, 'N', 0, '2020-07-23 13:43:32'),
(102, '7', 'City', NULL, 'sxv', 'sxd', 's', 's', '', '', NULL, 's', 's', '9876540987', '2020-07-23 00:00:00', 'null', '65', '', '', '', '', 'Gratis', ' 65', ' 13.65', ' 78.65', NULL, 'N', 0, '2020-07-23 15:07:28'),
(103, '7', 'City', NULL, 'egr', 'egrveg', 'rge', 'ger', '', '', NULL, 'ge', 'er', '987659079', '2020-07-23 00:00:00', 'null', '65', '', '', '', '', 'Gratis', ' 65', ' 13.65', ' 78.65', NULL, 'N', 0, '2020-07-23 15:31:55'),
(104, '87', 'City', NULL, 'Shouvik Birthday', '50', '2', '2', '', '', NULL, '6789', 's1', 'n1', '2020-07-30 00:00:00', '{\"1\":\"2\"}', '', '', '', '', '', '', ' 16', ' 3.36', ' 19.36', NULL, 'Y', 0, '2020-07-23 17:10:32'),
(105, '87', 'City', NULL, 'Shouvik\'s Marriage ', '200', '2', '2', '', '', NULL, '2345', 'S2', 'N2', '2020-07-29 00:00:00', '{\"2\":\"5\"}', '', '', '', '', '', '', ' 20', ' 4.2', ' 24.2', NULL, 'Y', 0, '2020-07-23 17:25:33'),
(106, '87', 'City', NULL, 'Shouvik\'s Marriage Anniversary', '20', '1', '1', '', '', NULL, '1111', 's3', 'n3', '2020-07-27 00:00:00', '{\"2\":\"9\"}', '', '', '', '', '', '', ' 36', ' 7.56', ' 43.56', NULL, 'Y', 0, '2020-07-23 17:38:14'),
(107, '87', 'City', NULL, 'Shouvik\'s Marriage Anniversary', '20', '1', '1', '', '', NULL, '1111', 's3', 'n3', '2020-07-23 00:00:00', '{\"2\":\"9\"}', '', '', '', '', '', '', ' 36', ' 7.56', ' 43.56', NULL, 'N', 1, '2020-07-23 17:53:50'),
(108, '87', 'City', NULL, 'fdgfd', '45', '5', '5', '', '', NULL, '55', 'tr', 'fd', '2020-07-23 00:00:00', '{\"2\":\"3\"}', '', '', '', '', '', '', ' 12', ' 2.52', ' 14.52', NULL, 'N', 0, '2020-07-23 17:55:34'),
(109, '87', 'City', NULL, 'fdgfd', '45', '5', '5', '', '', NULL, '55', 'tr', 'fd', '2020-07-23 00:00:00', '{\"2\":\"3\"}', '', '', '', '', '', '', ' 12', ' 2.52', ' 14.52', NULL, 'N', 0, '2020-07-23 17:56:17'),
(110, '87', 'Association', 'Barasat Association ', 'Spouse Birthday', '50', '7', '7', '', '', NULL, '7856', 's11', 'n11', '2020-07-25 00:00:00', '{\"1\":\"2\",\"2\":\"3\"}', '', '', '', '', '', '', ' 28', ' 5.88', ' 33.88', NULL, 'N', 0, '2020-07-23 18:07:39'),
(111, '87', 'Association', 'Barasat Association ', 'Spouse Birthday', '50', '7', '7', '', '', NULL, '7856', 's11', 'n11', '2020-07-23 00:00:00', '{\"1\":\"2\",\"2\":\"3\"}', '', '', '', '', '', '', ' 28', ' 5.88', ' 33.88', NULL, 'N', 0, '2020-07-23 18:14:00'),
(112, '87', 'Association', 'Barasat Association ', 'Spouse Birthday', '50', '7', '7', '', '', NULL, '7856', 's11', 'n11', '2020-07-23 00:00:00', '{\"1\":\"2\",\"2\":\"3\"}', '', '', '', '', '', '', ' 28', ' 5.88', ' 33.88', NULL, 'N', 1, '2020-07-23 18:18:53'),
(113, '87', 'Association', 'Barasat Association ', 'Spouse Birthday', '50', '7', '7', '', '', NULL, '7856', 's11', 'n11', '2020-07-23 00:00:00', '{\"1\":\"2\",\"2\":\"3\"}', '', '', '', '', '', '', ' 28', ' 5.88', ' 33.88', NULL, 'N', 1, '2020-07-23 18:24:57'),
(114, '87', 'Association', 'Barasat Association ', 'Spouse Birthday', '50', '7', '7', '', '', NULL, '7856', 's11', 'n11', '2020-07-23 00:00:00', '{\"1\":\"2\",\"2\":\"3\"}', '', '', '', '', '', '', ' 28', ' 5.88', ' 33.88', NULL, 'Y', 1, '2020-07-23 18:26:05'),
(115, '87', 'Association', 'Barasat Association ', 'tess555', '555', '5', '5', '', '', NULL, '5555', 's5', 'n5', '2020-07-25 00:00:00', '{\"2\":\"5\",\"6\":\"5\"}', '', '', '', '', '', '', ' 150', ' 31.5', ' 181.5', NULL, 'Y', 1, '2020-07-23 18:30:35'),
(116, '87', 'Association', 'Barasat Association ', 'Mothers day', '10', '1', '1', '', '', NULL, '1177', 's12', 'd', '2020-07-30 00:00:00', '{\"2\":\"4\",\"6\":\"6\"}', '', '65', '', '', 'Gratis', '', ' 237', ' 49.77', ' 286.77', NULL, 'Y', 1, '2020-07-23 18:47:06'),
(117, '88', 'Association', 'Vereniging ooigem', 'test Event ooigem', '1000', '3', '2', '', '', NULL, '8710', 'ooigem', '23', '2020-07-31 00:00:00', '{\"1\":\"4\",\"2\":\"3\",\"3\":\"1\",\"6\":\"3\"}', '', '65', '', '20', '', '', ' 227', ' 47.67', ' 274.67', NULL, 'N', 1, '2020-07-24 07:11:12'),
(118, '88', 'Association', 'Vereniging ooigem', 'test Event ooigem', '1000', '3', '2', '', '', NULL, '8710', 'ooigem', '23', '2020-07-24 00:00:00', '{\"1\":\"4\",\"2\":\"3\",\"3\":\"1\",\"6\":\"3\"}', '65', '', '', '20', '', '', ' 227', ' 47.67', ' 274.67', NULL, 'N', 1, '2020-07-24 07:14:40'),
(119, '7', 'Association', 'gjy gj', 'edf', 'ewf', 'few', 'few', '', '', NULL, 'few', 'fe', '8765439087', '2020-07-24 00:00:00', 'null', '65', '', '', '20', '', '', ' 85', ' 17.85', ' 102.85', NULL, 'Y', 0, '2020-07-24 07:32:54'),
(120, '7', 'Association', 'gjy gj', 'sdfv', 'vsd', 'vs', 'vs', '', '', NULL, 'vs', 'v', '8765432190', '2020-07-24 00:00:00', 'null', '65.0', '', '', '20', '', '', ' 85', ' 17.85', ' 102.85', NULL, 'N', 0, '2020-07-24 07:38:53'),
(121, '7', 'Association', 'gjy gj', 'asdx', 'asd', 'ds', 'dsa', '', '', NULL, 'da', 'ds', '76543908762', '2020-07-24 00:00:00', 'null', '65.0', '', '', '20', '', '', ' 85', ' 17.85', ' 102.85', NULL, 'N', 0, '2020-07-24 07:46:23'),
(122, '7', 'Association', 'gjy gj', 'fgh', 'fg', 'fg', 'hg', '', '', NULL, 'f', 'fg', '5678903456', '2020-07-24 00:00:00', 'null', '65.0', '', '', '', '', 'Gratis', ' 65', ' 13.65', ' 78.65', NULL, 'N', 0, '2020-07-24 10:20:41'),
(123, '7', 'Association', 'gjy gj', 'gsdr', 'gr', 'gr', 'gr', '', '', NULL, 'gr', 'gr', '9807654321', '2020-07-24 00:00:00', 'null', '65.0', '', '', '', '', 'Gratis', ' 65', ' 13.65', ' 78.65', NULL, 'N', 0, '2020-07-24 12:45:37'),
(124, '7', 'Association', 'gjy gj', 'saecf', 'efs', 'fes', 'fes', '', '', NULL, 'fes', 'fe', '765432190', '2020-07-24 00:00:00', 'null', '65.0', '', '', '', '', 'Gratis', ' 65', ' 13.65', ' 78.65', NULL, 'N', 0, '2020-07-24 13:12:29'),
(125, '7', 'Association', 'gjy gj', 'thd', 'trfh', 'trh', 'trh', '', '', NULL, 'tr', 'tr', '5678901234', '2020-07-27 00:00:00', 'null', '65.0', '', '', '', 'Gratis', '', ' 65', ' 13.65', ' 78.65', NULL, 'N', 0, '2020-07-27 04:58:17'),
(126, '7', 'Association', 'gjy gj', 'sfasfas', 'fsgaga', 'gdgdg', 'gddagadgg', '', '', NULL, '222222', 'rqeteggvz', 'fwafwfqefqe', '2020-07-28 00:00:00', '{\"1\":\"2\",\"2\":\"2\",\"3\":\"1\"}', '', '65.0', '', '', 'Gratis', '', ' 109', ' 22.89', ' 131.89', NULL, 'N', 0, '2020-07-27 05:23:28'),
(127, '7', 'Association', 'gjy gj', 'fgb', 'fg', 'fchn', 'fhn', '', '', NULL, 'nh', 'nfgh', '9876543210', '2020-07-27 00:00:00', 'null', '65.0', '', '', '', '', 'Gratis', ' 65', ' 13.65', ' 78.65', NULL, 'N', 0, '2020-07-27 05:24:39'),
(128, '7', 'Association', 'gjy gj', 'grtf', 'grt', 'gtrf', 'gtr', '', '', NULL, 'gtrf', 'gtr', '9876543210', '2020-07-27 00:00:00', 'null', '65.0', '', '', '20', '', '', ' 85', ' 17.85', ' 102.85', NULL, 'N', 0, '2020-07-27 05:25:22'),
(129, '7', 'Association', 'gjy gj', 'fgh', 'ghn', 'hg', 'hg', '', '', NULL, 'hfg', 'hg', '9876543210', '2020-07-27 00:00:00', 'null', '', '65.0', '', '20', '', '', ' 85', ' 17.85', ' 102.85', NULL, 'N', 0, '2020-07-27 05:25:59'),
(130, '7', 'Association', 'gjy gj', 'grtv', 'gr', 'grt', 'gd', '', '', NULL, 'gdesrt', 'desrt', '9876543210', '2020-07-27 00:00:00', 'null', '', '65.0', '', '', 'Gratis', '', ' 65', ' 13.65', ' 78.65', NULL, 'N', 0, '2020-07-27 05:26:41'),
(131, '7', 'Association', 'gjy gj', 'g', 'gh', 'gh', 'gh', '', '', NULL, 'gh', 'hg', '9876543210', '2020-07-27 00:00:00', 'null', '', '65.0', '', '', '', 'Gratis', ' 65', ' 13.65', ' 78.65', NULL, 'N', 0, '2020-07-27 05:27:13'),
(132, '7', 'Association', 'gjy gj', 'fgv', 'gfb', 'fg', 'fgb', '', '', NULL, 'fgb', 'fgb', '9876543210', '2020-07-27 00:00:00', 'null', '', '', '20', '20', '', '', ' 40', ' 8.4', ' 48.4', NULL, 'N', 0, '2020-07-27 05:27:47'),
(133, '7', 'Association', 'gjy gj', 'dfyhn', 'gh', 'fg', 'fhg', '', '', NULL, 'hfg', 'hfg', '9876543210', '2020-07-27 00:00:00', 'null', '', '', '20', '', '', 'Gratis', ' 20', ' 4.2', ' 24.2', NULL, 'N', 0, '2020-07-27 05:28:44'),
(134, '7', 'Association', 'gjy gj', 'fdsseg', 'etgegw', 'egesgsrhte', 'gGEGw', '', '', NULL, '3342214', 'fvxzv', 'zdafafef', '2020-07-29 00:00:00', '{\"1\":\"2\",\"2\":\"2\",\"3\":\"2\"}', '', '', '20', '20', '', '', ' 104', ' 21.84', ' 125.84', NULL, 'N', 0, '2020-07-27 05:29:32'),
(135, '7', 'Association', 'gjy gj', 'sdf', 'xc', 'x c', 'dc', '', '', NULL, '123456', 'asda f', '654', '2020-07-30 00:00:00', '{\"1\":\"2\"}', '', '65.0', '', '20', '', '', ' 101', ' 21.21', ' 122.21', NULL, 'N', 0, '2020-07-27 05:33:53'),
(136, '7', 'Association', 'gjy gj', 'sdf', 'xc', 'x c', 'dc', '', '', NULL, '123456', 'asda f', '654', '2020-07-27 00:00:00', '{\"1\":\"2\"}', '', '65.0', '', '20', '', '', ' 101', ' 21.21', ' 122.21', NULL, 'N', 0, '2020-07-27 05:35:01'),
(137, '7', 'Association', 'gjy gj', 'df', 'dbf', 'db', 'db', '', '', NULL, 'bd', 'dfb', '9876543210', '2020-07-27 00:00:00', 'null', '', '65.0', '', '20', '', '', ' 85', ' 17.85', ' 102.85', NULL, 'N', 0, '2020-07-27 05:45:23'),
(138, '98', 'Association', 'Merelbeke 27', 'test Event', '2000', '2', '3', '', '', NULL, '9820', 'test', '3', '2020-07-30 00:00:00', '{\"1\":\"3\",\"2\":\"3\",\"3\":\"1\",\"4\":\"1\",\"6\":\"3\"}', '65.0', '', '', '20', '', '', ' 224', ' 47.04', ' 271.04', NULL, 'N', 0, '2020-07-27 08:51:23'),
(139, '100', 'Association', 'SK testing association ', 'birthday', '111', '1', '1', '', '', NULL, '1111', 's1', 'n1', '2020-07-31 00:00:00', '{\"1\":\"1\",\"6\":\"1\"}', '', '', '', '', '', '', ' 34.08', ' 7.1568', ' 41.2368', NULL, 'N', 0, '2020-07-27 10:43:52'),
(140, '100', 'Association', 'SK testing association ', 'spouse birthday', '200', '2', '2', '', '', NULL, '2222', 's2', 'n2', '2020-07-31 00:00:00', '{\"2\":\"2\",\"4\":\"2\"}', '', '', '', '', '', '', ' 28', ' 5.88', ' 33.88', NULL, 'Y', 1, '2020-07-27 10:51:38'),
(141, '100', 'Association', 'SK testing association ', 'childern\'s birthday', '300', '3', '3', '', '', NULL, '3333', 's3', 'n3', '2020-07-27 00:00:00', '{\"2\":\"3\"}', '', '', '', '', '', '', ' 12', ' 2.52', ' 14.52', NULL, 'Y', 1, '2020-07-27 10:55:45'),
(142, '7', 'City', NULL, 'sd', 'fdg', 'dfg', 'dfg', '', '', NULL, '45', 'asda f', '654', '2020-07-29 00:00:00', '{\"1\":\"1\"}', '65.0', '', '', '', '', 'Gratis', ' 73', ' 15.33', ' 88.33', NULL, 'N', 0, '2020-07-27 11:26:26'),
(143, '7', 'Association', 'gjy gj', 'sd', 'fdg', 'dfg', 'dfg', '', '', NULL, '45', 'asda f', '654', '2020-07-27 00:00:00', '{\"1\":\"1\"}', '65.0', '', '', '', '', 'Gratis', ' 73', ' 15.33', ' 88.33', NULL, 'N', 0, '2020-07-27 11:28:48'),
(144, '4', 'City', NULL, 'df', 'dsf', 'dsf', 'dsf', '', '', NULL, '09090', 'asda f', 'xvv', '2020-07-29 00:00:00', '{\"1\":\"2\"}', '65.0', '', '', '', 'Gratis', '', ' 81', ' 17.01', ' 98.01', NULL, 'N', 0, '2020-07-27 11:33:37'),
(146, '7', 'Association', 'gjy gj', 'sdc', 'ds', 'ds', 'ds', '', '', NULL, 'ds', 'ds', '9876543210', '2020-07-27 00:00:00', 'null', '', '', '20.10', '', '', 'Gratis', ' 20.1', ' 4.221', ' 24.321', NULL, 'N', 0, '2020-07-27 13:07:58'),
(164, '4', 'City', NULL, 'zxc ', 'zc x', 'zxc', 'xzc', '', '', NULL, 'cxz', 'cx', '9876543210', '2020-07-27 00:00:00', '{\"1\":\"1\",\"2\":\"2\",\"3\":\"3\",\"4\":\"4\",\"6\":\"5\"}', '', '', '20.10', '20.20', '', '', ' 288.7', ' 60.627', ' 349.327', NULL, 'N', 0, '2020-07-27 14:14:02'),
(168, '4', 'City', NULL, 'fsafsaf', 'ADADAd', 'dsafae', 'httdhdrhr', '', '', NULL, '33333', 'tetewt', '34566667', '2020-07-29 00:00:00', '{\"1\":\"1\",\"2\":\"1\",\"3\":\"1\"}', '65.0', '', '', '', 'Gratis', '', ' 97', ' 20.37', ' 117.37', NULL, 'N', 0, '2020-07-28 05:01:49'),
(170, '7', 'Association', 'gjy gj', 'fsdv', 'fdvf', 'v', 'fd', '', '', NULL, 'fvd', 'vf', '9876543210', '2020-07-28 00:00:00', '{\"1\":\"1\",\"2\":\"2\",\"3\":\"3\",\"4\":\"4\",\"6\":\"5\"}', '65.0', '', '', '', 'Gratis', '', ' 313.4', ' 65.814', ' 379.214', NULL, 'N', 0, '2020-07-28 07:05:43'),
(171, '7', 'Association', 'gjy gj', 'fd', 'dsfg', 'fg', 'fg', '', '', NULL, 'fgdf', 'fd', '9876543210', '2020-07-28 00:00:00', 'null', '65.0', '', '', '', '', 'Gratis', ' 65', ' 13.65', ' 78.65', NULL, 'N', 0, '2020-07-28 08:06:18');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(11) NOT NULL,
  `order_id` varchar(300) NOT NULL,
  `order_p_id` varchar(300) NOT NULL,
  `order_qty` varchar(255) NOT NULL,
  `used_cups` varchar(300) NOT NULL,
  `lost_cup` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `order_p_id`, `order_qty`, `used_cups`, `lost_cup`) VALUES
(1, '1', '1', '3', '3', '3'),
(2, '1', '2', '2', '1', '2'),
(3, '1', '3', '1', '0', '2'),
(4, '1', '4', '8', '6', '4'),
(5, '1', '6', '4', '3', '10'),
(11, '5', '1', '3', '2', '10'),
(12, '5', '2', '2', '2', '0'),
(13, '5', '3', '5', '4', '0'),
(14, '5', '4', '2', '1', '2'),
(15, '5', '6', '3', '2', '5'),
(16, '6', '1', '2', '', ''),
(17, '6', '2', '4', '', ''),
(18, '6', '3', '2', '', ''),
(19, '7', '1', '3', '3', '1'),
(20, '7', '3', '1', '1', '0'),
(21, '8', '1', '2', '1', '2'),
(22, '8', '2', '5', '5', '1'),
(23, '9', '1', '3', '', ''),
(24, '9', '2', '2', '', ''),
(25, '9', '3', '1', '', ''),
(26, '9', '6', '4', '', ''),
(27, '11', '1', '1', '1', '0'),
(28, '11', '2', '1', '1', '0'),
(29, '11', '3', '2', '2', '1'),
(30, '11', '4', '4', '4', '2'),
(31, '11', '6', '5', '5', '0'),
(32, '12', '1', '2', '', ''),
(33, '13', '1', '2', '', ''),
(34, '14', '3', '9', '', ''),
(35, '15', '1', '5', '', ''),
(36, '16', '1', '1', '', ''),
(37, '16', '2', '2', '', ''),
(38, '16', '3', '3', '', ''),
(39, '16', '4', '4', '', ''),
(40, '16', '6', '5', '', ''),
(41, '17', '1', '1', '', ''),
(42, '17', '2', '2', '', ''),
(43, '17', '3', '3', '', ''),
(44, '17', '4', '4', '', ''),
(45, '17', '6', '5', '', ''),
(46, '18', '1', '1', '', ''),
(47, '18', '2', '2', '', ''),
(48, '18', '3', '3', '', ''),
(49, '18', '4', '4', '', ''),
(50, '18', '6', '5', '', ''),
(51, '19', '1', '1', '', ''),
(52, '19', '2', '1', '', ''),
(53, '19', '3', '1', '', ''),
(54, '20', '1', '1', '1', '2'),
(55, '20', '2', '2', '2', '0'),
(56, '20', '3', '3', '2', '1'),
(57, '20', '4', '4', '3', '3'),
(58, '20', '6', '5', '3', '1'),
(59, '21', '1', '1', '', ''),
(60, '21', '2', '2', '', ''),
(61, '21', '3', '3', '', ''),
(62, '21', '4', '4', '', ''),
(63, '21', '6', '5', '', ''),
(64, '22', '1', '1', '', ''),
(65, '22', '2', '2', '', ''),
(66, '22', '3', '5', '', ''),
(67, '22', '4', '7', '', ''),
(68, '22', '6', '8', '', ''),
(69, '24', '1', '2', '', ''),
(70, '25', '1', '2', '', ''),
(71, '26', '1', '2', '', ''),
(72, '27', '1', '2', '', ''),
(73, '27', '2', '1', '', ''),
(74, '28', '1', '2', '', ''),
(75, '28', '2', '1', '', ''),
(76, '29', '1', '2', '', ''),
(77, '29', '2', '1', '', ''),
(78, '30', '1', '2', '', ''),
(79, '30', '2', '1', '', ''),
(80, '31', '1', '2', '', ''),
(81, '32', '1', '1', '', ''),
(82, '32', '2', '2', '', ''),
(83, '32', '3', '3', '', ''),
(84, '32', '4', '4', '', ''),
(85, '32', '6', '5', '', ''),
(86, '33', '1', '2', '2', '0'),
(87, '33', '2', '3', '3', '1'),
(88, '33', '3', '5', '5', '3'),
(89, '33', '4', '7', '7', '2'),
(90, '33', '6', '10', '10', '2'),
(91, '34', '1', '1', '', ''),
(92, '34', '2', '2', '', ''),
(93, '34', '3', '3', '', ''),
(94, '34', '4', '4', '', ''),
(95, '34', '6', '5', '', ''),
(96, '35', '1', '1', '', ''),
(97, '35', '2', '2', '', ''),
(98, '35', '3', '3', '', ''),
(99, '35', '4', '4', '', ''),
(100, '35', '6', '5', '', ''),
(101, '36', '1', '1', '', ''),
(102, '36', '2', '2', '', ''),
(103, '36', '3', '3', '', ''),
(104, '36', '4', '4', '', ''),
(105, '36', '6', '5', '', ''),
(106, '37', '1', '2', '', ''),
(107, '37', '2', '1', '', ''),
(108, '38', '1', '2', '', ''),
(109, '38', '2', '1', '', ''),
(110, '40', '3', '4', '3', '5'),
(111, '41', '1', '5', '5', '80'),
(112, '41', '2', '6', '5', '8'),
(113, '42', '1', '3', '2', '2'),
(114, '42', '2', '2', '1', '2'),
(115, '42', '3', '4', '3', '3'),
(116, '42', '4', '2', '1', '3'),
(117, '42', '6', '10', '8', '11'),
(118, '43', '1', '4', '', ''),
(119, '44', '1', '1', '', ''),
(120, '44', '2', '1', '', ''),
(121, '45', '1', '3', '2', '2'),
(122, '45', '2', '2', '1', '4'),
(123, '45', '4', '2', '2', '2'),
(124, '45', '6', '4', '4', '3'),
(125, '46', '1', '2', '2', '0'),
(126, '46', '2', '1', '1', '0'),
(127, '46', '1', '3', '2', '3'),
(128, '46', '2', '2', '2', '0'),
(129, '46', '3', '4', '3', '3'),
(130, '46', '4', '2', '1', '4'),
(131, '46', '6', '4', '3', '2'),
(132, '47', '1', '4', '', ''),
(133, '48', '1', '2', '2', '0'),
(134, '48', '2', '1', '0', '1'),
(135, '48', '3', '5', '5', '0'),
(136, '49', '1', '2', '', ''),
(137, '49', '2', '2', '', ''),
(138, '49', '8', '3', '', ''),
(139, '50', '1', '3', '', ''),
(140, '50', '2', '2', '', ''),
(141, '50', '3', '2', '', ''),
(142, '50', '4', '2', '', ''),
(143, '50', '6', '10', '', ''),
(144, '51', '1', '3', '', ''),
(145, '51', '2', '2', '', ''),
(146, '51', '3', '2', '', ''),
(147, '51', '4', '2', '', ''),
(148, '51', '6', '10', '', ''),
(149, '52', '1', '1', '', ''),
(150, '52', '2', '3', '', ''),
(151, '52', '3', '2', '', ''),
(152, '52', '4', '1', '', ''),
(153, '52', '6', '10', '', ''),
(154, '53', '1', '2', '', ''),
(155, '53', '6', '2', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `order_items_old`
--

CREATE TABLE `order_items_old` (
  `id` int(11) NOT NULL,
  `order_id` varchar(300) NOT NULL,
  `order_p_id` varchar(300) NOT NULL,
  `order_qty` varchar(255) NOT NULL,
  `used_cups` varchar(300) NOT NULL,
  `lost_cup` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_items_old`
--

INSERT INTO `order_items_old` (`id`, `order_id`, `order_p_id`, `order_qty`, `used_cups`, `lost_cup`) VALUES
(1, '4', '6', '1', '2', '1'),
(2, '5', '1', '5', '2', '1'),
(3, '5', '3', '3', '2', '1'),
(4, '5', '6', '1', '1', '1'),
(5, '6', '1', '5', '', ''),
(6, '6', '2', '1', '1', '1'),
(7, '7', '1', '20', '', ''),
(8, '8', '1', '500', '', ''),
(9, '9', '1', '10', '', ''),
(10, '9', '2', '10', '', ''),
(11, '9', '3', '10', '', ''),
(12, '10', '1', '10', '', ''),
(13, '10', '2', '10', '', ''),
(14, '10', '3', '10', '', ''),
(15, '11', '1', '10', '', ''),
(16, '11', '2', '10', '', ''),
(17, '11', '3', '10', '', ''),
(18, '12', '1', '4', '', ''),
(19, '12', '2', '3', '', ''),
(20, '12', '3', '2', '', ''),
(21, '13', '1', '4', '', ''),
(22, '13', '2', '3', '', ''),
(23, '14', '1', '4', '', ''),
(24, '14', '2', '3', '', ''),
(25, '15', '1', '1000', '', ''),
(26, '15', '2', '200', '', ''),
(27, '16', '1', '3', '1', '2'),
(28, '16', '4', '3', '2', '1'),
(29, '17', '1', '4', '', ''),
(30, '17', '4', '5', '', ''),
(31, '18', '1', '10', '', ''),
(32, '18', '3', '10', '', ''),
(33, '19', '1', '10', '', ''),
(34, '19', '4', '20', '', ''),
(35, '20', '1', '10', '', ''),
(36, '20', '2', '20', '', ''),
(37, '21', '1', '10', '', ''),
(38, '22', '1', '1000', '', ''),
(39, '23', '1', '5', '3', '20'),
(40, '24', '1', '5', '3', '20'),
(41, '24', '2', '10', '2', '3'),
(42, '25', '1', '2', '', ''),
(43, '25', '2', '3', '', ''),
(44, '25', '3', '1', '', ''),
(45, '26', '1', '3', '', ''),
(46, '26', '2', '2', '', ''),
(47, '26', '3', '1', '', ''),
(48, '26', '4', '2', '', ''),
(49, '26', '6', '3', '', ''),
(50, '27', '1', '4', '3', '0'),
(51, '27', '2', '3', '2', '0'),
(52, '27', '6', '2', '2', '0'),
(53, '28', '1', '10', '', ''),
(54, '28', '2', '3', '', ''),
(55, '28', '6', '5', '', ''),
(56, '29', '1', '10', '5', '10'),
(57, '29', '2', '3', '3', '20'),
(58, '29', '6', '5', '3', '5'),
(59, '30', '1', '10', '', ''),
(60, '30', '2', '3', '', ''),
(61, '30', '6', '5', '', ''),
(62, '31', '1', '3', '', ''),
(63, '31', '2', '5', '', ''),
(64, '32', '1', '3', '2', '1'),
(65, '33', '2', '5', '4', '-3'),
(66, '34', '1', '5', '', ''),
(67, '35', '1', '10', '8', '10'),
(68, '35', '2', '20', '12', '6'),
(69, '35', '6', '6', '5', '3'),
(70, '36', '1', '1222', '', ''),
(71, '36', '2', '111', '', ''),
(72, '36', '4', '111', '', ''),
(73, '36', '6', '111', '', ''),
(74, '37', '1', '1212', '', ''),
(75, '37', '2', '12121', '', ''),
(76, '38', '1', '12', '', ''),
(77, '38', '2', '21', '', ''),
(78, '38', '3', '212', '', ''),
(79, '39', '1', '2', '', ''),
(80, '40', '6', '7', '', ''),
(81, '41', '6', '10', '', ''),
(82, '42', '6', '6', '1', '1'),
(83, '43', '6', '7', '0', '0'),
(84, '44', '6', '2', '', ''),
(85, '45', '2', '5', '', ''),
(86, '46', '1', '10', '', ''),
(87, '47', '1', '8', '', ''),
(88, '47', '2', '7', '', ''),
(89, '47', '3', '3', '', ''),
(90, '47', '6', '5', '', ''),
(91, '48', '2', '5', '', ''),
(92, '48', '3', '8', '', ''),
(93, '49', '2', '700', '', ''),
(94, '50', '1', '2', '', ''),
(95, '50', '2', '3', '', ''),
(96, '50', '3', '4', '', ''),
(97, '51', '4', '5', '', ''),
(98, '51', '6', '7', '', ''),
(99, '52', '4', '10', '', ''),
(100, '52', '6', '5', '', ''),
(101, '53', '2', '5', '', ''),
(102, '53', '3', '8', '', ''),
(103, '54', '2', '5', '', ''),
(104, '54', '3', '2', '', ''),
(105, '55', '1', '3', '', ''),
(106, '55', '2', '3', '', ''),
(107, '55', '3', '8', '', ''),
(108, '55', '4', '4', '', ''),
(109, '55', '6', '6', '', ''),
(110, '56', '1', '4', '', ''),
(111, '57', '1', '2', '', ''),
(112, '57', '2', '1', '', ''),
(113, '57', '6', '5', '', ''),
(114, '58', '1', '2', '', ''),
(115, '58', '2', '1', '', ''),
(116, '58', '6', '5', '', ''),
(117, '59', '1', '2', '', ''),
(118, '59', '2', '1', '', ''),
(119, '59', '6', '5', '', ''),
(120, '60', '4', '9', '', ''),
(121, '60', '6', '7', '', ''),
(122, '61', '1', '5', '', ''),
(123, '61', '2', '6', '', ''),
(124, '62', '1', '5', '', ''),
(125, '62', '2', '6', '', ''),
(126, '63', '1', '5', '', ''),
(127, '63', '2', '6', '', ''),
(128, '64', '1', '5', '', ''),
(129, '64', '2', '6', '', ''),
(130, '65', '1', '5', '', ''),
(131, '65', '2', '1', '', ''),
(132, '66', '1', '4', '', ''),
(133, '66', '2', '5', '', ''),
(134, '67', '1', '2', '', ''),
(135, '67', '2', '3', '', ''),
(136, '68', '1', '5', '', ''),
(137, '68', '2', '8', '', ''),
(138, '69', '1', '5', '', ''),
(139, '69', '2', '8', '', ''),
(140, '70', '1', '5', '', ''),
(141, '70', '2', '6', '', ''),
(142, '71', '1', '3', '', ''),
(143, '71', '2', '4', '', ''),
(144, '72', '1', '3', '', ''),
(145, '72', '2', '4', '', ''),
(146, '73', '1', '5', '', ''),
(147, '73', '2', '6', '', ''),
(148, '74', '1', '2', '', ''),
(149, '74', '2', '3', '', ''),
(150, '75', '1', '2', '', ''),
(151, '75', '2', '3', '', ''),
(152, '75', '3', '8', '', ''),
(153, '76', '1', '5', '', ''),
(154, '76', '6', '7', '', ''),
(155, '77', '1', '4', '', ''),
(156, '77', '2', '2', '', ''),
(157, '78', '1', '4', '', ''),
(158, '78', '2', '2', '', ''),
(159, '79', '1', '2', '', ''),
(160, '79', '3', '5', '', ''),
(161, '80', '1', '2', '', ''),
(162, '80', '3', '5', '', ''),
(163, '81', '4', '8', '', ''),
(164, '81', '6', '7', '', ''),
(165, '82', '1', '3', '', ''),
(166, '82', '2', '4', '', ''),
(167, '83', '1', '2', '', ''),
(168, '83', '2', '5', '', ''),
(169, '84', '1', '2', '', ''),
(170, '84', '2', '3', '', ''),
(171, '85', '1', '2', '', ''),
(172, '85', '2', '3', '', ''),
(173, '86', '1', '2', '', ''),
(174, '86', '2', '1', '', ''),
(175, '87', '2', '3', '', ''),
(176, '87', '3', '4', '', ''),
(177, '88', '1', '3', '', ''),
(178, '88', '2', '4', '', ''),
(179, '88', '3', '5', '', ''),
(180, '89', '1', '4', '', ''),
(181, '89', '6', '5', '', ''),
(182, '90', '1', '4', '', ''),
(183, '90', '6', '5', '', ''),
(184, '91', '1', '4', '', ''),
(185, '91', '6', '5', '', ''),
(186, '92', '1', '2', '', ''),
(187, '92', '3', '1', '', ''),
(188, '93', '1', '3', '', ''),
(189, '93', '3', '4', '', ''),
(190, '93', '6', '2', '', ''),
(191, '94', '1', '1', '1', '0'),
(192, '94', '4', '2', '2', '2'),
(193, '94', '6', '2', '1', '5'),
(194, '96', '1', '3', '3', '0'),
(195, '96', '2', '2', '1', '5'),
(196, '97', '1', '2', '', ''),
(197, '97', '2', '3', '', ''),
(198, '97', '3', '4', '', ''),
(199, '98', '1', '3', '', ''),
(200, '98', '2', '2', '', ''),
(201, '98', '6', '1', '', ''),
(202, '101', '1', '4', '', ''),
(203, '101', '2', '6', '', ''),
(204, '101', '3', '8', '', ''),
(205, '101', '4', '3', '', ''),
(206, '101', '6', '5', '', ''),
(207, '104', '1', '2', '', ''),
(208, '105', '2', '5', '', ''),
(209, '106', '2', '9', '', ''),
(210, '107', '2', '9', '1', '1'),
(211, '108', '2', '3', '', ''),
(212, '109', '2', '3', '', ''),
(213, '110', '1', '2', '', ''),
(214, '110', '2', '3', '', ''),
(215, '111', '1', '2', '', ''),
(216, '111', '2', '3', '', ''),
(217, '112', '1', '2', '1', '1'),
(218, '112', '2', '3', '1', '3'),
(219, '113', '1', '2', '2', '2'),
(220, '113', '2', '3', '1', '1'),
(221, '114', '1', '2', '1', '1'),
(222, '114', '2', '3', '2', '2'),
(223, '115', '2', '5', '1', '1'),
(224, '115', '6', '5', '1', '2'),
(225, '116', '2', '4', '1', '1'),
(226, '116', '6', '6', '2', '2'),
(227, '117', '1', '4', '2', '2'),
(228, '117', '2', '3', '1', '2'),
(229, '117', '3', '1', '1', '0'),
(230, '117', '6', '3', '1', '2'),
(231, '118', '1', '4', '1', '1'),
(232, '118', '2', '3', '1', '1'),
(233, '118', '3', '1', '1', '1'),
(234, '118', '6', '3', '1', '1'),
(235, '126', '1', '2', '', ''),
(236, '126', '2', '2', '', ''),
(237, '126', '3', '1', '', ''),
(238, '134', '1', '2', '', ''),
(239, '134', '2', '2', '', ''),
(240, '134', '3', '2', '', ''),
(241, '135', '1', '2', '', ''),
(242, '136', '1', '2', '', ''),
(243, '138', '1', '3', '', ''),
(244, '138', '2', '3', '', ''),
(245, '138', '3', '1', '', ''),
(246, '138', '4', '1', '', ''),
(247, '138', '6', '3', '', ''),
(248, '139', '1', '1', '', ''),
(249, '139', '6', '1', '', ''),
(250, '140', '2', '2', '1', '1'),
(251, '140', '4', '2', '1', '1'),
(252, '141', '2', '3', '1', '1'),
(253, '142', '1', '1', '', ''),
(254, '143', '1', '1', '', ''),
(255, '144', '1', '2', '', ''),
(256, '145', '1', '4', '4', '0'),
(257, '145', '2', '2', '2', '0'),
(258, '145', '3', '1', '0', '2'),
(259, '145', '6', '3', '2', '0'),
(260, '163', '1', '1', '', ''),
(261, '163', '2', '1', '', ''),
(262, '163', '3', '1', '', ''),
(263, '163', '4', '2', '', ''),
(264, '163', '6', '2', '', ''),
(265, '164', '1', '1', '', ''),
(266, '164', '2', '2', '', ''),
(267, '164', '3', '3', '', ''),
(268, '164', '4', '4', '', ''),
(269, '164', '6', '5', '', ''),
(270, '166', '1', '1', '', ''),
(271, '166', '2', '2', '', ''),
(272, '166', '3', '3', '', ''),
(273, '166', '4', '4', '', ''),
(274, '166', '6', '5', '', ''),
(275, '168', '1', '1', '', ''),
(276, '168', '2', '1', '', ''),
(277, '168', '3', '1', '', ''),
(278, '169', '1', '1', '', ''),
(279, '169', '2', '1', '', ''),
(280, '169', '3', '1', '', ''),
(281, '169', '4', '1', '', ''),
(282, '169', '6', '1', '', ''),
(283, '170', '1', '1', '', ''),
(284, '170', '2', '2', '', ''),
(285, '170', '3', '3', '', ''),
(286, '170', '4', '4', '', ''),
(287, '170', '6', '5', '', ''),
(288, '1', '1', '3', '3', '3'),
(289, '1', '2', '2', '1', '2'),
(290, '1', '3', '1', '0', '2'),
(291, '1', '4', '8', '6', '4'),
(292, '1', '6', '4', '3', '10');

-- --------------------------------------------------------

--
-- Table structure for table `order_page_settings`
--

CREATE TABLE `order_page_settings` (
  `id` int(11) NOT NULL,
  `collection_by_profiwash_at_the_event` varchar(300) NOT NULL,
  `return_to_address` varchar(300) NOT NULL,
  `collection_by_profiwash_at_collection_point` varchar(300) NOT NULL,
  `return_via_collection_point` varchar(300) NOT NULL,
  `delivery_to_profiwash` varchar(300) NOT NULL,
  `pick_up_at_profiwash` varchar(300) NOT NULL,
  `terms_and_con` longtext NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_page_settings`
--

INSERT INTO `order_page_settings` (`id`, `collection_by_profiwash_at_the_event`, `return_to_address`, `collection_by_profiwash_at_collection_point`, `return_via_collection_point`, `delivery_to_profiwash`, `pick_up_at_profiwash`, `terms_and_con`, `updated_at`) VALUES
(1, '65.0', '65.0', '20.10', '20.20', '0.0', '0.0', '[\"Elk type beker is per doos te huur.\",\"De dozen zijn bij levering verzegeld. Elke geopende box is volledig opgeladen: zowel de huur als de schoonmaak.\",\"De dozen zijn bij levering verzegeld. Elke geopende box is volledig opgeladen: zowel de huur als de schoonmaak.\",\"De dozen zijn bij levering verzegeld. Elke geopende box is volledig opgeladen: zowel de huur als de schoonmaak.\"]', '2020-07-27 00:07:51');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `page_name` varchar(300) NOT NULL,
  `page_sort_name` varchar(300) NOT NULL,
  `page_url` varchar(300) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `page_name`, `page_sort_name`, `page_url`, `updated_at`) VALUES
(1, 'home', '', '', '2020-07-20 06:07:18'),
(2, 'Aanbod', '', 'aanbod', '2020-07-27 01:07:52'),
(3, 'Referenties  ', '', 'referenties', '0000-00-00 00:00:00'),
(4, 'bio', '', 'bio', '0000-00-00 00:00:00'),
(6, 'Bekers huren', '', 'user/products', '0000-00-00 00:00:00'),
(7, 'Mijn evenementen', '', 'user/mijievenementen', '0000-00-00 00:00:00'),
(8, 'Aanbevelingen', '', 'user/aanbeve', '2020-07-27 05:07:58'),
(9, 'Inbox', '', 'user/inbox', '0000-00-00 00:00:00'),
(10, 'Dashboard', '', 'user/dashboard', '2020-12-16 07:12:25'),
(11, 'Bekers huren', '', 'user/cityproducts', '0000-00-00 00:00:00'),
(12, 'Bekers reinigen', '', 'user/bekers', '0000-00-00 00:00:00'),
(13, 'Verenigingen', '', 'user/vereniging', '0000-00-00 00:00:00'),
(14, 'Mijn evenementen', '', 'user/cityevenementen', '0000-00-00 00:00:00'),
(15, 'Inbox', '', 'user/city_inbox', '0000-00-00 00:00:00'),
(17, 'Afwassen', '', 'aanbod', '2020-07-27 01:07:20'),
(18, 'Verpakken', '', 'aanbod', '2020-07-27 01:07:02'),
(19, 'Bekers huren', '', 'aanbod', '2020-07-27 01:07:22'),
(20, 'Bekers reinigen', '', 'aanbod', '2020-07-27 01:07:34'),
(23, 'Contact', '', 'contact', '2020-06-10 05:06:55'),
(24, 'Tarieven', '', 'tarieven', '2020-12-16 09:12:42');

-- --------------------------------------------------------

--
-- Table structure for table `page_by_menu`
--

CREATE TABLE `page_by_menu` (
  `id` int(11) NOT NULL,
  `menu_id` varchar(300) NOT NULL,
  `page_id` varchar(300) NOT NULL,
  `page_name` varchar(300) NOT NULL,
  `sort` int(50) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `page_by_menu`
--

INSERT INTO `page_by_menu` (`id`, `menu_id`, `page_id`, `page_name`, `sort`, `updated_at`) VALUES
(2, '3', '1', '', 0, '2020-06-10 00:06:23'),
(3, '3', '10', '', 1, '2020-06-10 00:06:47'),
(6, '3', '12', '', 3, '2020-06-10 00:06:03'),
(7, '3', '13', '', 4, '2020-06-10 00:06:12'),
(8, '3', '14', '', 5, '2020-06-10 00:06:25'),
(9, '3', '15', '', 6, '2020-06-10 00:06:33'),
(10, '1', '1', '', 0, '2020-06-10 00:06:10'),
(11, '1', '2', '', 1, '2020-06-10 00:06:19'),
(12, '1', '3', '', 2, '2020-06-10 00:06:30'),
(13, '1', '4', '', 3, '2020-06-10 00:06:40'),
(15, '2', '1', '', 0, '2020-06-10 00:06:50'),
(18, '2', '8', '', 3, '2020-06-10 00:06:30'),
(19, '2', '9', '', 4, '2020-06-10 00:06:49'),
(20, '4', '1', '', 0, '2020-06-10 00:06:10'),
(21, '4', '2', '', 1, '2020-06-10 00:06:19'),
(22, '4', '3', '', 2, '2020-06-10 00:06:30'),
(23, '4', '4', '', 3, '2020-06-10 00:06:40'),
(24, '4', '5', '', 4, '2020-06-10 00:06:56'),
(27, '5', '17', '', 0, '2020-06-10 04:06:16'),
(28, '5', '18', '', 1, '2020-06-10 04:06:25'),
(29, '5', '19', '', 2, '2020-06-10 04:06:33'),
(30, '5', '20', '', 3, '2020-06-10 04:06:44'),
(32, '1', '22', '', 4, '2020-06-10 05:06:22'),
(34, '1', '23', '', 4, '2020-06-10 05:06:04'),
(35, '2', '6', '', 1, '2020-06-16 07:06:40'),
(36, '2', '7', '', 2, '2020-06-16 07:06:12'),
(38, '3', '11', '', 2, '2020-06-16 07:06:23'),
(39, '1', '24', '', 5, '2020-11-30 08:11:39');

-- --------------------------------------------------------

--
-- Table structure for table `password_otp`
--

CREATE TABLE `password_otp` (
  `id` int(11) NOT NULL,
  `email` varchar(300) NOT NULL,
  `otp` varchar(300) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `password_otp`
--

INSERT INTO `password_otp` (`id`, `email`, `otp`, `created_at`, `updated_at`) VALUES
(6, 'sg@fg.fg', '5635', '2020-07-27 15:14:01', NULL),
(8, 'test@test.com', '54599', '2020-07-27 15:23:36', NULL),
(9, 'hallo2@mailinator.com', '46577', '2020-07-28 06:38:53', NULL),
(10, 'testcity1@gmail.com', '42750', '2020-09-04 07:50:55', NULL),
(21, 'testcity@gmail.com', '22320', '2020-09-04 12:36:10', NULL),
(22, 'test15@mailinator.com', '5411', '2020-11-15 15:15:46', NULL),
(23, 'new1711@mailinator.com', '18472', '2020-11-17 10:23:41', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `p_id` int(11) NOT NULL,
  `name` varchar(300) NOT NULL,
  `material` varchar(300) NOT NULL,
  `qty` int(50) NOT NULL,
  `box_prc` double NOT NULL,
  `loss_prc` double NOT NULL,
  `wash_prc` double NOT NULL,
  `sort_desc` longtext NOT NULL,
  `image` varchar(300) NOT NULL,
  `p_status` enum('Y','N') NOT NULL,
  `p_created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`p_id`, `name`, `material`, `qty`, `box_prc`, `loss_prc`, `wash_prc`, `sort_desc`, `image`, `p_status`, `p_created_at`, `updated_at`) VALUES
(1, 'Productnaam 5', 'Polypropylene', 100, 4, 1, 4, 'Ideaal voor een pintje', '1588763692_product_image.png', 'Y', '2020-05-06 10:36:20', '2020-07-23 08:07:08'),
(2, 'Productnaam 4', 'Polypropylene', 10, 4, 1, 0, 'test ', '1588763703_product_image.png', 'Y', '2020-05-06 10:40:23', '2020-08-12 07:08:41'),
(3, 'Productnaam 3', 'Polypropylene', 100, 4, 1, 16, 'test', '1588763720_product_image.png', 'Y', '2020-05-06 10:45:32', '2020-07-30 00:07:37'),
(4, 'Productnaam 2', 'Polypropylene', 100, 5, 1.1, 5.5, 'test', '1588763642_product_image.png', 'Y', '2020-05-06 10:47:29', '2020-07-30 00:07:55'),
(6, 'Productnaam 1', 'Sterke materialen', 5, 10.03, 2.04, 16.06, 'test info', '1589181278_product_image.png', 'Y', '2020-05-11 07:14:38', '2020-12-16 08:12:41');

-- --------------------------------------------------------

--
-- Table structure for table `product_price_by_city`
--

CREATE TABLE `product_price_by_city` (
  `id` int(11) NOT NULL,
  `p_id` varchar(300) NOT NULL,
  `super_city_id` varchar(300) NOT NULL,
  `min_qty` int(50) NOT NULL,
  `box_prc` varchar(300) NOT NULL,
  `loss_prc` varchar(300) NOT NULL,
  `wash_prc` varchar(300) NOT NULL,
  `status` enum('Y','N') NOT NULL DEFAULT 'Y'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_price_by_city`
--

INSERT INTO `product_price_by_city` (`id`, `p_id`, `super_city_id`, `min_qty`, `box_prc`, `loss_prc`, `wash_prc`, `status`) VALUES
(5, '17', '2', 1, '11', '11', '11', 'Y'),
(6, '17', '2', 10, '1', '11', '1', 'Y'),
(7, '17', '120', 12, '1', '1', '1', 'Y'),
(8, '17', '120', 1, '11', '23', '32', 'Y'),
(9, '17', '128', 12, '1', '1', '1', 'Y'),
(10, '17', '129', 12, '2', '1', '1', 'Y'),
(11, '18', '0', 1, '102', '100', '100', 'Y'),
(12, '18', '0', 10, '50', '50', '50', 'Y'),
(13, '18', '0', 5, '75', '75', '75', 'Y'),
(14, '18', '2', 12, '11', '11', '1', 'Y'),
(15, '18', '120', 12, '1', '11', '11', 'Y'),
(16, '18', '120', 56, '2.5', '11', '11', 'Y'),
(17, '18', '128', 15, '1', '11', '11', 'Y'),
(18, '18', '128', 28, '11', '11', '11', 'Y'),
(19, '18', '129', 15, '11', '11', '11', 'Y'),
(20, '6', '0', 0, '10', '1', '1', 'Y'),
(21, '6', '0', 10, '9', '1', '1', 'Y'),
(22, '6', '0', 20, '8', '1', '1', 'Y'),
(23, '6', '0', 50, '5', '0,5', '0,5', 'Y'),
(24, '6', '128', 0, '20', '2', '2', 'Y'),
(25, '6', '128', 10, '10', '1', '1', 'Y'),
(26, '6', '128', 20, '5', '0,2', '0,2', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `subscribed`
--

CREATE TABLE `subscribed` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `browser` varchar(255) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `u_id` int(11) NOT NULL,
  `usertype` varchar(300) NOT NULL,
  `city_id` varchar(300) NOT NULL,
  `super_city_id` int(100) NOT NULL,
  `association` varchar(300) NOT NULL,
  `city_name` varchar(300) DEFAULT NULL,
  `post_code` varchar(300) NOT NULL,
  `u_image` varchar(300) DEFAULT NULL,
  `email` varchar(300) NOT NULL,
  `username` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `added_by` enum('City','Admin','Association') NOT NULL,
  `street` varchar(300) DEFAULT NULL,
  `number` varchar(300) DEFAULT NULL,
  `contact_details` varchar(300) NOT NULL,
  `f_name` varchar(300) NOT NULL,
  `name` varchar(300) NOT NULL,
  `phone` varchar(300) NOT NULL,
  `gsm` varchar(300) NOT NULL,
  `contact_email` varchar(300) NOT NULL,
  `user_created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `u_status` enum('Y','N') NOT NULL DEFAULT 'Y'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`u_id`, `usertype`, `city_id`, `super_city_id`, `association`, `city_name`, `post_code`, `u_image`, `email`, `username`, `password`, `added_by`, `street`, `number`, `contact_details`, `f_name`, `name`, `phone`, `gsm`, `contact_email`, `user_created_at`, `updated_at`, `u_status`) VALUES
(1, 'Admin', '', 0, '', '', '', '', 'admin@gmail.com', 'admin', '4acb4bc224acbbe3c2bfdcaa39a4324e', 'Admin', '', '', '', '', '', '', '', '', '2020-05-03 14:54:19', '0000-00-00 00:00:00', 'Y'),
(3, 'City', '', 0, '', 'Merelbeke', '9820', '', 'nicolas1@mtea.be', '', '25d55ad283aa400af464c76d713c07ad', 'City', NULL, NULL, '{\"Voornaam\":[\"Rune\"],\"Naam\":[\"Dewael\"],\"Dienst\":[\"88\"],\"Functie\":[\"00\"],\"Telefoon\":[\"9717129324\"],\"GSM\":[\"yyy\"],\"Emailadres\":[\"nicolas1@mtea.be\"]}', '', '', '', '', '', '2020-04-28 04:18:41', '2020-12-03 11:12:12', 'Y'),
(6, 'Association', '', 0, '5', 'fcbv', '123456', '', 'dg@G.FG', '', '2be9bd7a3434f7038ca27d1918de58bd', 'Association', 'ddf', 'xvv', '', 'x g', 'fx ', '4545', '45', '', '2020-05-09 10:26:07', '0000-00-00 00:00:00', 'Y'),
(7, 'Association', '4', 2, '78', 'Waregem', '8790', '1589875005_user_image.jpg', 'sg@fg.fg', '', '96e79218965eb72c92a549dd5a330112', 'Association', 'cdv', '4545', '', 'g ', 'f gb', '56', '546', 'sg@fg.fg', '2020-05-09 10:32:09', '0000-00-00 00:00:00', 'Y'),
(12, 'Association', '', 0, '2', 'test stad', '09090', '', 'ttt@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'dzf', '646464', '', 'zdsgv', 'test', '123456', '65695', '', '2020-05-14 18:55:34', '0000-00-00 00:00:00', 'Y'),
(13, 'Association', '2', 0, '8', 'Waregem', '8790', '', 'info@mtea.be', '', '36e7729fd51c90767c3c49004f0b9b37', 'Association', 'zuiderprom', '49', '', 'Matthias', 'Matthias Rijnwalt', '047328392', '0493295063', 'info@mtea.be', '2020-05-15 06:47:55', '0000-00-00 00:00:00', 'Y'),
(14, 'Association', '2', 0, '9', 'waregem', '8790', '', 'nicolas@mtea.be', '', '81dc9bdb52d04dc20036dbd8313ed055', 'Association', 'gfd', '2', '', 'matthias', 'rijnwa', '038920', '7382', '', '2020-05-15 06:54:42', '0000-00-00 00:00:00', 'Y'),
(15, 'Association', '', 0, '13', 'fdsg', '09090', '', 'gg@hk.df', '', '96e79218965eb72c92a549dd5a330112', 'Association', 'fg', '4545', '', 'dsf ', 'fgfg', '24545', '45', '', '2020-05-15 15:28:08', '0000-00-00 00:00:00', 'Y'),
(16, 'City', '', 0, '', 'Gent', '9000', '', 'nicolas@mtea.be', '', '81dc9bdb52d04dc20036dbd8313ed055', 'Admin', NULL, NULL, '{\"Voornaam\":[\"\"],\"Naam\":[\"\"],\"Dienst\":[\"\"],\"Functie\":[\"\"],\"Telefoon\":[\"\"],\"GSM\":[\"\"],\"Emailadres\":[\"\"]}', '', '', '', '', '', '2020-05-16 07:34:09', '2020-12-03 11:12:02', 'Y'),
(17, 'Association', '16', 0, '16', 'New Delhi', '110091', '', 'abcassociation@test.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'street', '12', '', 'Test ', 'Test ', 'Test', 'Test', '', '2020-05-16 07:42:15', '0000-00-00 00:00:00', 'Y'),
(19, 'Association', '18', 2, '17', 'Test City', '700150', '', 'titu@gmail.com', '', '961851a897dcd48b934ae44eb9755a24', 'Association', 'zXsXz', '1234567890', '', 'sdfsdfsdf', 'xcvdfvxcv', '5656565656', '535353535', '', '2020-05-16 09:31:42', '0000-00-00 00:00:00', 'Y'),
(20, 'Association', '', 0, '18', 'dfdf', '09090', '', 'hr@gmail.com', '', '96e79218965eb72c92a549dd5a330112', 'Association', 'df', '45435', '', 'dfg', 'dfds', '4545', '546', '', '2020-05-16 09:56:04', '0000-00-00 00:00:00', 'Y'),
(21, 'Association', '2', 0, '11', 'waregem', '201014', '', 'df2FY@J.GRF', '', '96e79218965eb72c92a549dd5a330112', 'Association', 'fgh ', '546', '', 'vbn', 'fgh', '4545', '45', '', '2020-05-16 18:09:36', '0000-00-00 00:00:00', 'Y'),
(22, 'Association', '18', 2, '20', 'Test City', '700150', '', 'xcfvg@fh.fg', '', '96e79218965eb72c92a549dd5a330112', 'Association', 'rdg', '554', '', 'zdsgv', 'admin', '123456', 'we r', '', '2020-05-16 18:30:06', '0000-00-00 00:00:00', 'N'),
(23, 'Association', '2', 0, '21', 'Waregem', '8790', '', 'f@hjg.dg', '', '96e79218965eb72c92a549dd5a330112', 'Association', 'dzf', '654', '', 'fgg', 'test', '123456', '23', '', '2020-05-16 18:35:32', '0000-00-00 00:00:00', 'N'),
(24, 'City', '', 129, '', 'Gentbrugge', '9050', '', 'gentb@mailinator.com', '', '25d55ad283aa400af464c76d713c07ad', 'Admin', NULL, NULL, '{\"Voornaam\":[\"\"],\"Naam\":[\"\"],\"Dienst\":[\"\"],\"Functie\":[\"\"],\"Telefoon\":[\"\"],\"GSM\":[\"\"],\"Emailadres\":[\"\"]}', '', '', '', '', '', '2020-05-18 04:54:36', '2020-12-03 11:12:06', 'Y'),
(25, 'Association', '24', 0, '', 'Gentbrugge', '9050', '', 'mtea1@mailinator.com', '', '36e7729fd51c90767c3c49004f0b9b37', 'Association', 'test gentbrug', '2', '', 'Test', 'achternaam', '03830483830', '093032029839', 'mtea1@mailinator.com', '2020-05-18 05:17:50', '0000-00-00 00:00:00', 'Y'),
(26, 'Association', '24', 0, '87', 'Gentbrugge', '9050', '', 'mtea12@mailinator.com', '', '81dc9bdb52d04dc20036dbd8313ed055', 'Association', 'rtyu', '2', '', '56789', '678', '789', '789', 'mtea12@mailinator.com', '2020-05-18 05:19:41', '0000-00-00 00:00:00', 'N'),
(28, 'Association', '24', 0, '', 'Gentbrugge', '9050', NULL, 'mtea123@mailinator.com', '', '81dc9bdb52d04dc20036dbd8313ed055', 'Association', 'straat test', '2', '', 'Voornaam ', 'Naam', '038920', '09832', 'mtea123@mailinator.com', '2020-05-20 09:00:11', '0000-00-00 00:00:00', 'Y'),
(29, 'Association', '16', 0, '88', 'Gent', '9000', NULL, 'mtea@mailinator.com', '', '81dc9bdb52d04dc20036dbd8313ed055', 'Association', 'Nieuwe straat', '5', '', 'Matthias', 'Rijnwalt', '93829', '892', 'mtea@mailinator.com', '2020-05-20 10:06:59', '0000-00-00 00:00:00', 'N'),
(30, 'Association', '16', 0, '89', 'Gent', '9000', NULL, 'mtea11@mailinator.com', '', '81dc9bdb52d04dc20036dbd8313ed055', 'Association', 'ghjk', '2', '', 'frde', 'frde', 'cexz', 'à8', 'mtea11@mailinator.com', '2020-05-20 10:11:55', '0000-00-00 00:00:00', 'N'),
(35, 'Association', '2', 0, '95', 'Waregem', '8790', NULL, 'mtea1234@mailinator.com', '', '36e7729fd51c90767c3c49004f0b9b37', 'Association', 'test', '2', '', 'Matthias', 'Rijnwalt', '03920', '89302', 'mtea1234@mailinator.com', '2020-05-24 17:06:28', '0000-00-00 00:00:00', 'Y'),
(36, 'Association', '18', 0, '96', 'Test City 2', '9070', NULL, 'new_test2@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'noida', '20', '', 'pradeep', 'kumar', '8383855251', 'no', 'new_test2@gmail.com', '2020-05-25 06:48:59', '0000-00-00 00:00:00', 'Y'),
(37, 'Association', '18', 0, '', 'Test City2', '9070', NULL, 'new2@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'noida', '7503813802', '', 'pradeep', 'pradeep', '8383855251', 'no', 'new2@gmail.com', '2020-05-25 07:25:43', '0000-00-00 00:00:00', 'Y'),
(38, 'Association', '2', 0, '97', 'Waregem', '8790', NULL, 'mtea12345@mailinator.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'rty', '21', '', 'Nieuw 25', '555', '5555', '555', 'mtea12345@mailinator.com', '2020-05-25 07:46:29', '0000-00-00 00:00:00', 'Y'),
(39, 'Association', '2', 0, '98', 'Waregem', '8790', NULL, 'mtea323@mailinator.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'ghj', '1', '', '67', '78', '78', '78', 'mtea323@mailinator.com', '2020-05-25 08:10:06', '0000-00-00 00:00:00', 'Y'),
(40, 'Association', '18', 0, '99', 'Test City2', '9070', NULL, 'pk2@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'noida', '20', '', 'pradeep', 'test5', '8383855251', 'no', 'pk2@gmail.com', '2020-05-25 08:17:03', '0000-00-00 00:00:00', 'Y'),
(42, 'Association', '2', 0, '101', 'Waregem', '8790', NULL, 'soumya.dev234@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'Straat_ttt', 'number_ttt', '', 'V', 'N', 'T', 'G', 'E', '2020-05-25 13:11:50', '0000-00-00 00:00:00', 'N'),
(43, 'Association', '2', 0, '102', 'Waregem', '8790', NULL, 'mtea222@mailinator.com', '', '81dc9bdb52d04dc20036dbd8313ed055', 'Association', 'Test', '2', '', 'Matthias', 'Rijnwalt', '098203', '89028', 'mtea222@mailinator.com', '2020-05-25 13:58:02', '0000-00-00 00:00:00', 'N'),
(44, 'Association', '24', 0, '', 'Gentbrugge', '9050', NULL, 'testcity11@gmail.com', '', '81dc9bdb52d04dc20036dbd8313ed055', 'Association', 'rfd', 'cex', '', 'fredz', 'vcx', '09789', '09', 'testcity11@gmail.com', '2020-05-25 14:00:46', '0000-00-00 00:00:00', 'Y'),
(45, 'Association', '24', 0, '103', 'Gentbrugge', '9050', NULL, 'abc@test.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'test', '1', '', 'Stephan', 'smith', '9717129324', 'Test', 'abc@test.com', '2020-05-25 14:01:18', '0000-00-00 00:00:00', 'Y'),
(46, 'Association', '18', 0, '104', 'Test City2', '9070', NULL, 'soumya.dev2345@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'S-1', 'N-1', '', 'V', 'N', 'T', 'G', 'E', '2020-05-25 14:27:22', '0000-00-00 00:00:00', 'Y'),
(47, 'Association', '18', 0, '', 'Test City2', '9070', NULL, 'soumya.dev123@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'S-77', 'N-77', '', 'V', 'N', 'T', 'G', 'E', '2020-05-25 14:29:45', '0000-00-00 00:00:00', 'Y'),
(48, 'Association', '18', 0, '', 'Test City2', '9070', NULL, 'soumya.dev823@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'S-88', 'N-88', '', 'V', 'user 1', 'T', 'G', 'E', '2020-05-25 14:31:59', '0000-00-00 00:00:00', 'Y'),
(49, 'Association', '18', 0, '105', 'Test City2', '9070', NULL, 'soumya.dev0123@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'S-99', 'N-99', '', 'V', 'N', 'T', 'G', 'E', '2020-05-25 14:33:17', '0000-00-00 00:00:00', 'N'),
(50, 'Association', '18', 0, '106', 'Test City2', '9070', NULL, 'soumya.dev786@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'S-786', 'N-786', '', 'V', 'N', 'T', 'G', 'E', '2020-05-25 15:02:40', '0000-00-00 00:00:00', 'N'),
(51, 'Association', '3', 0, '107', 'Merelbeke', '9820', NULL, 'soumya.dev666@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'S-666', 'N-666', '', 'V', 'N', 'T', 'G', 'E', '2020-05-25 15:15:34', '0000-00-00 00:00:00', 'N'),
(52, 'Association', '18', 0, '108', 'Test City2', '9070', NULL, 'soumya.dev000@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'S-000', 'N-000', '', 'V', 'N', 'T', 'G', 'E', '2020-05-25 15:18:01', '0000-00-00 00:00:00', 'N'),
(53, 'Association', '18', 0, '109', 'Test City2', '9070', NULL, 'soumya.dev000@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'S-000', 'N-000', '', 'V', 'N', 'T', 'G', 'E', '2020-05-25 15:21:15', '0000-00-00 00:00:00', 'N'),
(54, 'Association', '2', 0, '110', 'Waregem', '8790', NULL, 'manu1234@mailinator.com', '', '81dc9bdb52d04dc20036dbd8313ed055', 'Association', 'Zuiderlaand', '2', '', 'Manu', 'Profiwash', '00000000', '11111111', 'manu1234@mailinator.com', '2020-05-27 06:18:46', '0000-00-00 00:00:00', 'Y'),
(55, 'Association', '2', 0, '111', 'Waregem', '8790', NULL, 'pinki@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'X-11', 'T-11', '', 'V', 'N', 'T', 'G', 'E', '2020-05-27 07:36:22', '0000-00-00 00:00:00', 'Y'),
(56, 'Association', '16', 0, '112', 'Gent', '9000', NULL, 'testnew1@gmail.com', '', '33626c0067226387c340035c3a24a319', 'Association', 'Test', '1234567890', '', 'Ftjgjjvgjv', 'Ggjkgjoj', '46557777', '5656565656', 'testnew1@gmail.com', '2020-05-27 08:21:44', '0000-00-00 00:00:00', 'N'),
(57, 'Association', '16', 0, '113', 'Gent', '9000', NULL, 'nilam@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'SB-001', 'N-001', '', 'V', 'N', 'T', 'G', 'E', '2020-05-27 08:35:51', '0000-00-00 00:00:00', 'N'),
(58, 'Association', '2', 0, '114', 'Waregem', '8790', NULL, 'payel@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'P-999', 'N-999', '', 'V', 'N', 'T', 'G', 'E', '2020-05-27 08:42:28', '0000-00-00 00:00:00', 'N'),
(59, 'Association', '16', 0, '115', 'Gent', '9000', NULL, 'merry@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'PY-001', 'NY-001', '', 'V', 'N', 'T', 'G', 'E', '2020-05-27 08:52:46', '0000-00-00 00:00:00', 'Y'),
(60, 'Association', '3', 2, '116', 'Merelbeke', '9820', NULL, 'mamuni@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'M-009', 'N-009', '', 'V', 'N', 'T', 'G', 'E', '2020-05-27 09:05:50', '0000-00-00 00:00:00', 'Y'),
(61, 'Association', '2', 0, '117', 'Waregem', '8790', NULL, 'mtea3333@mailinator.com', '', '81dc9bdb52d04dc20036dbd8313ed055', 'Association', 'test', 'test', '', 'TY', 'TYU', 'YU', 'YU', 'mtea3333@mailinator.com', '2020-05-27 14:10:09', '0000-00-00 00:00:00', 'N'),
(62, 'Association', '2', 0, '118', 'Waregem', '8790', NULL, 'test3333@mailinator.com', '', '81dc9bdb52d04dc20036dbd8313ed055', 'Association', '6783', '2', '', '56', 'TYU', 'YU', 'YU', 'test3333@mailinator.com', '2020-05-27 14:13:18', '0000-00-00 00:00:00', 'Y'),
(63, 'Association', '16', 0, '119', 'Gent', '9000', NULL, 'testnew2@gmail.com', '', '961851a897dcd48b934ae44eb9755a24', 'Association', 'hfhfhfh', '1234567899', '', 'aSAsaS', 'ASDASDAD', 'CSDCDSCZC', '65656565656', 'testnew2@gmail.com', '2020-05-27 14:38:27', '0000-00-00 00:00:00', 'Y'),
(64, 'Association', '16', 0, '120', 'Gent', '9000', NULL, 'soumyadip@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'SOU', 'NUM', '', 'V', 'N', 'T', 'G', 'E', '2020-05-27 14:59:16', '0000-00-00 00:00:00', 'Y'),
(65, 'Association', '2', 0, '121', 'Waregem', '8790', NULL, 'palash@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'Pal', 'PAL1', '', 'V', 'N', 'T', 'G', 'E', '2020-05-27 15:06:13', '0000-00-00 00:00:00', 'Y'),
(66, 'Association', '16', 0, '122', 'Gent', '9000', NULL, 'testnew3@gmail.com', '', '81dc9bdb52d04dc20036dbd8313ed055', 'Association', 'Testsgsg', '45r5678898', '', 'Hxhdhdhdh', 'Dhdhdhdhd', 'R445544', '12345668907', 'testnew3@gmail.com', '2020-05-28 04:16:26', '0000-00-00 00:00:00', 'N'),
(67, 'Association', '24', 0, '123', 'Gentbrugge', '9050', NULL, 'testdip1@email.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'testt street', '6767', '', 'testdip1', 'td1', '1111111111', '2222222222', 'testdip1@email.com', '2020-05-28 04:49:20', '0000-00-00 00:00:00', 'Y'),
(68, 'Association', '24', 0, '124', 'Gentbrugge', '9050', NULL, 'dipa@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'Z-1', 'Z-1', '', 'V', 'N', 'T', 'G', 'E', '2020-05-28 05:02:35', '0000-00-00 00:00:00', 'Y'),
(69, 'Association', '18', 0, '125', 'Test City2', '9070', NULL, 'sou@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'PA', 'PA', '', 'V', 'N', 'T', 'G', 'E', '2020-05-28 05:11:05', '0000-00-00 00:00:00', 'Y'),
(70, 'Association', '16', 2, '126', 'Ghent', '9000', NULL, 'testdip2@email.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'test street', '1234', '', 'testdip2', 'td2', '3333333333', '4444444444', 'testdip2@email.com', '2020-05-28 05:29:05', '0000-00-00 00:00:00', 'Y'),
(71, 'Association', '2', 0, '127', 'Waregem', '8790', NULL, 'demomanu@mailinator.com', '', '81dc9bdb52d04dc20036dbd8313ed055', 'Association', 'Test', '21', '', 'Manu', 'Profiwash', '0000000', '000000', 'demomanu@mailinator.com', '2020-05-29 08:11:25', '0000-00-00 00:00:00', 'Y'),
(73, 'Association', '24', 0, '128', 'Gentbrugge', '9050', NULL, 'mtea56@mailinator.com', '', '81dc9bdb52d04dc20036dbd8313ed055', 'Association', 'Test', '123', '', 'Matthias', 'Test', '083832', '78289', 'mtea56@mailinator.com', '2020-06-05 07:59:17', '0000-00-00 00:00:00', 'Y'),
(74, 'Association', '24', 0, '129', 'Gentbrugge', '9050', NULL, '906test@mailinator.com', '', '81dc9bdb52d04dc20036dbd8313ed055', 'Association', 'Teststraat', '2', '', 'Matthias', 'UIOEJ', '083984392', '83929', '906test@mailinator.com', '2020-06-09 12:48:35', '0000-00-00 00:00:00', 'Y'),
(75, 'Association', '4', 2, '130', 'Waregem', '8790', NULL, 'test1006@mailinator.com', '', '81dc9bdb52d04dc20036dbd8313ed055', 'Association', 'Teststraat ', '23', '', 'Test', 'test', '000000', '00000', 'test1006@mailinator.com', '2020-06-10 12:07:25', '0000-00-00 00:00:00', 'Y'),
(76, 'Association', '18', 0, '131', 'Test City2', '9070', NULL, 'soumya.dev23@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'S-15', 'N-15', '', 'V', 'N', 'T', 'G', 'E', '2020-06-12 13:44:36', '0000-00-00 00:00:00', 'Y'),
(77, 'Association', '24', 0, '132', 'Gentbrugge', '9050', NULL, 'mamchak007@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'Street', 'Number', '', 'V', 'N', 'T', 'G', 'E', '2020-06-17 08:42:57', '0000-00-00 00:00:00', 'Y'),
(78, 'Association', '4', 2, '133', 'Waregem', '8790', NULL, 'soumya@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'S-77', 'N-88', '', 'V', 'N', 'T', 'G', 'E', '2020-06-22 07:43:16', '0000-00-00 00:00:00', 'N'),
(79, 'Association', '4', 0, '', 'Waregem', '8790', NULL, 'mtea39430@mailinator.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'Test 2', '3', '', 'Matthias', 'rijnwalt', '0830283200', '083293020', 'mtea39430@mailinator.com', '2020-07-13 07:10:26', '0000-00-00 00:00:00', 'Y'),
(80, 'Association', '24', 0, '135', 'Gentbrugge', '9050', NULL, 'eentweedrie@mailinator.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'Teststraat ', '17', '', 'Matthias', 'Rijnwalt', '048349383932', '048349383932', 'eentweedrie@mailinator.com', '2020-07-21 10:19:59', '0000-00-00 00:00:00', 'Y'),
(81, 'Association', '3', 2, '136', 'Merelbeke', '9820', NULL, 'test1111@mailinator.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'Nieuwe straat', '23', '', 'Matthias', 'Rijnwaltt', '0983943929', '0493295063', 'test1111@mailinator.com', '2020-07-22 07:23:34', '0000-00-00 00:00:00', 'Y'),
(82, 'Association', '16', 2, '', 'Gent', '9000', NULL, 'test@test.com', '', '25f9e794323b453885f5181f1b624d0b', 'Association', 'fvdvb', 'fvds', '', 'fsd', 'fd', 'df', '8765432908', 'test@test.com', '2020-07-22 07:57:26', '0000-00-00 00:00:00', 'Y'),
(83, 'Association', '24', 0, '', 'Gentbrugge', '9050', NULL, 'test10@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'ZXDzXzX', '1234567890', '', 'ASAsa', 'sdsdsd', '1234567890', '9876543210', 'test20@gmail.com', '2020-07-22 17:31:28', '0000-00-00 00:00:00', 'Y'),
(84, 'Association', '3', 0, '137', 'Merelbeke', '9820', NULL, 'nieuw1122@mailinator.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'NIeuwe test', '32', '', 'Test', 'Test', '0938390033', '038399393', 'Nieuw1122@mailinator.com', '2020-07-23 07:09:14', '0000-00-00 00:00:00', 'Y'),
(85, 'Association', '3', 0, '138', 'Merelbeke', '9820', NULL, 'nicolas1@mailinator.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'Straat test', 'Nummer test', '', 'Nicolas', 'nicolas 2', '09839320', '0493295062', 'nicolas1@mailinator.com', '2020-07-23 07:55:43', '0000-00-00 00:00:00', 'Y'),
(86, 'Association', '24', 0, '139', 'Gentbrugge', '9050', NULL, 'soumyadip.bhattacharya@inwebinfo.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'SD', 'ND', '', 'Dip ', 'Khan', '9007100974', 'GSM', 'soumyadip.bhattacharya@inwebinfo.com', '2020-07-23 16:36:48', '0000-00-00 00:00:00', 'Y'),
(87, 'Association', '24', 0, '140', 'Gentbrugge', '9050', NULL, 'shouvikmaj@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'SP', 'NP', '', 'Shouvik', 'Majumdar', '9007100974', 'GSM', 'shouvikmaj@gmail.com', '2020-07-23 16:52:19', '0000-00-00 00:00:00', 'Y'),
(88, 'Association', '3', 0, '141', 'Merelbeke', '9820', NULL, 'ooigem@mailinator.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'teststraat', '23', '', 'Matthias', 'Rijnwalt', '03843984930', '09394030384', 'ooigem@mailinator.com', '2020-07-24 06:47:58', '0000-00-00 00:00:00', 'N'),
(89, 'Association', '9', 0, '142', 'Test City', '56546', NULL, 'test@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'ds', '8765432190', '', 'acx', '8765432190', '456789', '4567890324', 'test@gmail.com', '2020-07-24 07:57:20', '0000-00-00 00:00:00', 'N'),
(90, 'Association', '3', 0, '', 'Merelbeke', '9820', NULL, 'test@tim.com', '', '81dc9bdb52d04dc20036dbd8313ed055', 'Association', 'yygfhfhgfhgfhfytyryryryryrryr', '9876543210', '', 'sef', '9876543210', '23', '32', 'test@tim.com', '2020-07-24 08:01:41', '0000-00-00 00:00:00', 'Y'),
(91, 'Association', '24', 0, '', 'Gentbrugge', '9050', NULL, 'imgrv19@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'G', 'NG', '', 'Gourav', 'Gourav', '9007100974', 'GSM', 'imgrv19@gmail.com', '2020-07-27 07:54:12', '0000-00-00 00:00:00', 'Y'),
(100, 'Association', '24', 0, '144', 'Gentbrugge', '9050', NULL, 'peterkhan019@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'S11', 'N11', '', 'Dip ', 'user 8', '9007100974', 'GSM', 'peterkhan019@gmail.com', '2020-07-27 09:16:09', '0000-00-00 00:00:00', 'Y'),
(101, 'Association', '16', 2, '145', 'Gent', '9000', NULL, 'sdsf@sd.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'h ioasjd sd ', '646464', '', 'df ', 'test name', '4545', 'gredg', 'sdsf@sd.com', '2020-07-27 09:39:40', '0000-00-00 00:00:00', 'N'),
(102, 'Association', '24', 0, '', 'Gentbrugge', '9050', NULL, 'aaa@hkjh.dfh', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'dzf', '646464', '', 'vb', 'test', '46546546', 'we r', 'fgv@iu.cs', '2020-07-27 09:40:32', '0000-00-00 00:00:00', 'Y'),
(103, 'Association', '4', 0, '', 'Waregem', '8790', NULL, 'testing12345@gmail.com', '', '81dc9bdb52d04dc20036dbd8313ed055', 'Association', 'Frefgg', '1234567890', '', 'Ffg', 'Ffffg', '1234567892', '1234567894', 'ggggg@ggg.com', '2020-07-27 09:48:19', '0000-00-00 00:00:00', 'Y'),
(104, 'Association', '3', 0, '146', 'Merelbeke', '9820', NULL, 'hallo2@mailinator.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'Nieuwe test', '23', '', 'Test hallo', 'hallo achtern', '04939493', '049393820', 'hallo2@mailinator.com', '2020-07-27 12:03:09', '0000-00-00 00:00:00', 'Y'),
(105, 'Association', '3', 2, '147', 'Merelbeke', '9820', NULL, 'merelbeke28@mailinator.com', '', '25d55ad283aa400af464c76d713c07ad', 'Association', 'Test merelbeke ', '28', '', 'Matthias', 'Rijnwalt', '093849238', '0474731053', 'merelbeke28@mailinator.com', '2020-07-28 08:59:36', '0000-00-00 00:00:00', 'Y'),
(106, 'Association', '3', 2, '148', 'Merelbeke', '9820', NULL, 'merelbeketest@mailinator.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'Teststraat', '3', '', 'Matthias', 'Rijnwalt', '09393829', '0000000', 'merelbeketest@mailinator.com', '2020-07-28 11:13:22', '0000-00-00 00:00:00', 'Y'),
(107, 'Association', '4', 0, '', 'Waregem', '8790', NULL, 'testass@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'dasf', '454665', '', 'edf', 'dsf', '2355', 'dsf', 'sfd@fh.fg', '2020-08-12 14:38:02', '0000-00-00 00:00:00', 'Y'),
(108, 'Association', '4', 0, '150', 'Waregem', '8790', NULL, 'ass@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'Test str', '2388', '', 'Fhb', 'Cvbb', '150', '567', 'ff@ghj.vhh', '2020-08-12 19:44:52', '0000-00-00 00:00:00', 'Y'),
(109, 'Association', '3', 2, '151', 'Merelbeke', '9820', NULL, 'kerkwegel@mailinator.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'Kerkwegel', '23', '', 'Matthias', 'Rijnwalt', '0988888', '04999999', 'kerkwegel@mailinator.com', '2020-08-19 11:15:03', '0000-00-00 00:00:00', 'Y'),
(110, 'Association', '4', 0, '152', 'Waregem', '8790', NULL, 'client3@mailinator.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'Kerkwegel', '23', '', 'Cleint 3', '00', '0000', '0000', 'client3@mailinator.com', '2020-08-20 15:23:19', '0000-00-00 00:00:00', 'N'),
(111, 'Association', '3', 0, '153', 'Merelbeke', '9820', NULL, 'test123@mailinator.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'Test', '23', '', 'Test', 'test', '0383983', '983292', 'test123@mailinator.com', '2020-09-02 06:09:28', '0000-00-00 00:00:00', 'N'),
(112, 'Association', '3', 2, '154', 'Merelbeke', '9820', NULL, 'sluis1@mailinator.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'Sluisstraat', '11', '', 'Matthias', 'Rijnwalt', '0494839283', '0494839283', 'sluis1@mailinator.com', '2020-09-07 08:57:29', '0000-00-00 00:00:00', 'Y'),
(113, 'Association', '24', 0, '155', 'Gentbrugge', '9050', NULL, 'test22@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'dzf', '646464', '', 'sa', 's', '123456', 'we r', 'sg@fg.fg', '2020-10-19 18:33:23', '0000-00-00 00:00:00', 'Y'),
(114, 'Association', '24', 0, '156', 'Gentbrugge', '9050', NULL, 'test111@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'asda f', '646464', '', 'zdsgv', 'admin', '455', '65695', 'test111@gmail.com', '2020-10-19 18:39:00', '0000-00-00 00:00:00', 'Y'),
(115, 'Association', '18', 0, '157', 'Test City2', '9070', NULL, 'test2@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'asda f', '646464', '', 'zdsgv', 'admin', '46546546', 'we r', 'test2@gmail.com', '2020-10-19 18:43:24', '0000-00-00 00:00:00', 'N'),
(116, 'Association', '18', 2, '158', 'Test City2', '9070', NULL, 'test3@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'dzf', '646464', '', 'zdsgv', 'admin', '123456', 'we r', 'test3@gmail.com', '2020-10-19 18:47:29', '0000-00-00 00:00:00', 'Y'),
(117, 'Association', '18', 0, '159', 'Test City2', '9070', NULL, 'test4@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'dzf', '646464', '', 'vb', 'test', '46546546', 'we r', 'test4@gmail.com', '2020-10-20 10:25:03', '0000-00-00 00:00:00', 'Y'),
(118, 'Association', '24', 0, '160', 'Gentbrugge', '9050', NULL, 'test24@gmail.com', '', '961851a897dcd48b934ae44eb9755a24', 'Association', 'Test', '1234567890', '', 'Test24', 'Sparx', '1234567890', '9876543212', 'test24@gmail.com', '2020-10-21 06:55:30', '0000-00-00 00:00:00', 'Y'),
(119, 'Association', '24', 0, '161', 'Gentbrugge', '9050', NULL, 'test25@gmail.com', '', '96f3206f529f94c8490b2ac1fe5ce498', 'Association', 'test25', '1234567890', '', 'Test25', 'title ', '1234567890', '9876543216', 'test25@gmail.com', '2020-10-21 08:17:04', '0000-00-00 00:00:00', 'Y'),
(122, 'Association', '4', 0, '162', 'Waregem', '8790', NULL, 'test15@mailinator.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'Sluisstraat', '17', '', 'Matthias', 'Rijnwalt', '049499494993', '938399499393', 'test15@mailinator.com', '2020-11-15 15:15:09', '0000-00-00 00:00:00', 'Y'),
(123, 'Association', '18', 0, '163', 'Test City2', '9070', NULL, 'test20@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'Test', '6291432537', '', 'Abraham', 'Jones ', '1234567895', '1234567894', 'test20@gmail.com', '2020-11-15 16:19:36', '0000-00-00 00:00:00', 'Y'),
(124, 'Association', '4', 0, '164', 'Waregem', '8790', NULL, 'test1611@mailinator.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'Test', '2', '', 'tes', 'test', 'test', 'tes', 'test1611@mailinator.com', '2020-11-16 10:26:54', '0000-00-00 00:00:00', 'Y'),
(125, 'Association', '4', 0, '165', 'Waregem', '8790', NULL, 'new1711@mailinator.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'Test', '3', '', 'Test', 'test', 'test', 'test', 'new1711@mailinator.com', '2020-11-17 10:11:48', '0000-00-00 00:00:00', 'Y'),
(126, 'Association', '3', 0, '166', 'Merelbeke', '9820', NULL, 'new1811@mailinator.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', '5TEy', 'yez', '', 'tes', 'tet', 'tes', 'test', 'new1811@mailinator.com', '2020-11-17 10:18:19', '0000-00-00 00:00:00', 'Y'),
(127, 'Association', '18', 0, '167', 'Test City2', '9070', NULL, 'test30@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'ahahahah', '1234567895', '', 'Abraham', 'Jones`', '1234567898', '1234567898', 'test30@gmail.com', '2020-11-17 10:29:34', '0000-00-00 00:00:00', 'Y'),
(128, 'Super_City', '', 0, '', 'mtea SC', '', NULL, 'info@mtea.be', '', '81dc9bdb52d04dc20036dbd8313ed055', 'Admin', NULL, NULL, '{\"Voornaam\":[\"tes\"],\"Naam\":[\"test\"],\"Dienst\":[\"tes\"],\"Functie\":[\"test\"],\"Telefoon\":[\"tes\"],\"GSM\":[\"tes\"],\"Emailadres\":[\"info@mtea.be\"]}', '', '', '', '', '', '2020-11-17 10:56:58', '2020-12-02 11:12:21', 'Y'),
(129, 'Super_City', '', 0, '', 'IGEAN', '', NULL, 'IGEAN@mailinator.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Admin', NULL, NULL, '{\"Voornaam\":[\"\"],\"Naam\":[\"\"],\"Dienst\":[\"\"],\"Functie\":[\"\"],\"Telefoon\":[\"\"],\"GSM\":[\"\"],\"Emailadres\":[\"\"]}', '', '', '', '', '', '2020-11-24 13:26:05', '2020-12-03 10:12:14', 'Y'),
(130, 'Association', '24', 0, '168', 'Gentbrugge', '9050', NULL, 'profiwash@mailinator.com', '', '25d55ad283aa400af464c76d713c07ad', 'Association', 'Kerkwegel', '23', '', 'tes', 'test', 'test', 'tes', 'profiwash@mailinator.com', '2020-12-01 11:01:37', '0000-00-00 00:00:00', 'Y'),
(131, 'Association', '4', 0, '169', 'Waregem', '8790', NULL, 'naam@mailinator.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'Test23', '12', '', 'naaam', 'naam', '0990', '092', 'naam@mailinator.com', '2020-12-02 09:58:32', '0000-00-00 00:00:00', 'Y'),
(134, 'Association', '16', 0, '170', 'Gent', '9000', NULL, 'kerkwegel22@mailinator.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'Kerkwegel ', '33', '', 'Matthias', 'Rijnwalt', '04748493', '04748493', 'kerkwegel22@mailinator.com', '2020-12-16 08:01:22', '0000-00-00 00:00:00', 'Y'),
(135, 'Association', '16', 0, '171', 'Gent', '9000', NULL, 'kerkwegel222@mailinator.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'Test straat', '23', '', 'Mattthias', 'test', '08329398', '93820', 'kerkwegel222@mailinator.com', '2020-12-16 09:34:47', '0000-00-00 00:00:00', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `verenigings`
--

CREATE TABLE `verenigings` (
  `v_id` int(11) NOT NULL,
  `city_id` varchar(255) NOT NULL,
  `created_by` enum('Admin','City Admin','Association') NOT NULL,
  `post_code` varchar(255) NOT NULL,
  `association` varchar(300) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `v_status` enum('Y','N') NOT NULL DEFAULT 'Y'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `verenigings`
--

INSERT INTO `verenigings` (`v_id`, `city_id`, `created_by`, `post_code`, `association`, `created_at`, `updated_at`, `v_status`) VALUES
(6, '9', 'City Admin', '123654', 'dc sd sd ', '2020-05-09 12:19:37', '0000-00-00 00:00:00', 'Y'),
(16, '', 'Association', '110091', 'Abhishek', '2020-05-16 07:42:15', '0000-00-00 00:00:00', 'Y'),
(17, '', 'Association', '700150', 'Test Test', '2020-05-16 09:31:42', '0000-00-00 00:00:00', 'N'),
(18, '', 'Association', '09090', 'r tg tg htr ', '2020-05-16 09:56:04', '0000-00-00 00:00:00', 'N'),
(19, '', 'Association', '201014', 'gy fjh fyf  ', '2020-05-16 18:09:36', '0000-00-00 00:00:00', 'N'),
(20, '', 'Association', '700150', '12121', '2020-05-16 18:30:06', '0000-00-00 00:00:00', 'N'),
(21, '', 'Association', '8790', 'df dfg gh', '2020-05-16 18:35:32', '0000-00-00 00:00:00', 'N'),
(78, '', 'Association', '8790', 'sg fg fg', '2020-05-16 18:35:32', '0000-00-00 00:00:00', 'N'),
(87, '', 'Association', '9050', 'test nieuwe verneniging', '2020-05-18 05:19:41', '0000-00-00 00:00:00', 'N'),
(88, '', 'Association', '9000', 'Nieuwe ver gent', '2020-05-20 10:06:59', '0000-00-00 00:00:00', 'N'),
(89, '', 'Association', '9000', 'test2', '2020-05-20 10:11:55', '0000-00-00 00:00:00', 'N'),
(91, '', 'Association', '110091', 'Stephan_other', '2020-05-23 08:22:09', '0000-00-00 00:00:00', 'Y'),
(92, '', 'Association', '110091', 'Pradeep_association', '2020-05-23 11:41:16', '0000-00-00 00:00:00', 'Y'),
(93, '', 'Association', '110091', 'amit', '2020-05-23 11:45:40', '0000-00-00 00:00:00', 'Y'),
(95, '', 'Association', '8790', 'nieuwe waregem', '2020-05-24 17:06:28', '0000-00-00 00:00:00', 'Y'),
(96, '', 'Association', '9070', 'new associaion', '2020-05-25 06:48:59', '0000-00-00 00:00:00', 'Y'),
(97, '', 'Association', '8790', 'Nieuw test 25', '2020-05-25 07:46:29', '0000-00-00 00:00:00', 'Y'),
(98, '', 'Association', '8790', '2321', '2020-05-25 08:10:06', '0000-00-00 00:00:00', 'Y'),
(99, '', 'Association', '9070', 'new2 associaion', '2020-05-25 08:17:03', '0000-00-00 00:00:00', 'Y'),
(100, '', 'Association', '8790', 'S-V', '2020-05-25 11:18:51', '0000-00-00 00:00:00', 'Y'),
(142, '9', 'Association', '56546', 'acs', '2020-07-24 07:57:20', '0000-00-00 00:00:00', 'N'),
(154, '3', 'Association', '9820', 'Sluis 1', '2020-09-07 08:57:29', '0000-00-00 00:00:00', 'Y'),
(155, '24', 'Association', '9050', 'test ', '2020-10-19 18:33:23', '0000-00-00 00:00:00', 'Y'),
(156, '24', 'Association', '9050', 'tttt', '2020-10-19 18:39:00', '0000-00-00 00:00:00', 'Y'),
(157, '18', 'Association', '9070', 'test2', '2020-10-19 18:43:24', '0000-00-00 00:00:00', 'Y'),
(158, '18', 'Association', '9070', 'test 3', '2020-10-19 18:47:29', '0000-00-00 00:00:00', 'Y'),
(159, '18', 'Association', '9070', 'r tg tg htr ', '2020-10-20 10:25:02', '0000-00-00 00:00:00', 'Y'),
(162, '4', 'Association', '8790', 'Test 15/11', '2020-11-15 15:15:08', '0000-00-00 00:00:00', 'Y'),
(163, '18', 'Association', '9070', 'Test Association', '2020-11-15 16:19:36', '0000-00-00 00:00:00', 'Y'),
(164, '4', 'Association', '8790', 'Test', '2020-11-16 10:26:53', '0000-00-00 00:00:00', 'Y'),
(165, '4', 'Association', '8790', 'Test new1711', '2020-11-17 10:11:48', '0000-00-00 00:00:00', 'Y'),
(166, '3', 'Association', '9820', 'testt', '2020-11-17 10:18:19', '0000-00-00 00:00:00', 'Y'),
(167, '18', 'Association', '9070', 'test association 25', '2020-11-17 10:29:33', '0000-00-00 00:00:00', 'Y'),
(168, '24', 'Association', '9050', 'Test', '2020-12-01 11:01:37', '0000-00-00 00:00:00', 'Y'),
(169, '4', 'Association', '8790', 'Naam vereniging', '2020-12-02 09:58:32', '0000-00-00 00:00:00', 'Y'),
(170, '16', 'Association', '9000', 'kerkwgel bedrijf', '2020-12-16 08:01:22', '0000-00-00 00:00:00', 'Y'),
(171, '16', 'Association', '9000', 'Test naham Matthias2', '2020-12-16 09:34:47', '0000-00-00 00:00:00', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `wash_order`
--

CREATE TABLE `wash_order` (
  `id` int(11) NOT NULL,
  `user_id` varchar(300) NOT NULL,
  `u_type` enum('Association','City') NOT NULL,
  `event_date` datetime NOT NULL,
  `postcode` int(11) NOT NULL,
  `street` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  `products` longtext NOT NULL,
  `collection_by_profiwash_at_the_event` varchar(300) NOT NULL,
  `return_to_address` varchar(300) NOT NULL,
  `collection_by_profiwash_at_collection_point` varchar(300) NOT NULL,
  `return_via_collection_point` varchar(300) NOT NULL,
  `delivery_to_profiwash` varchar(300) NOT NULL,
  `pick_up_at_profiwash` varchar(300) NOT NULL,
  `sub_total` varchar(300) NOT NULL,
  `order_status` enum('Y','N') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wash_order`
--

INSERT INTO `wash_order` (`id`, `user_id`, `u_type`, `event_date`, `postcode`, `street`, `number`, `products`, `collection_by_profiwash_at_the_event`, `return_to_address`, `collection_by_profiwash_at_collection_point`, `return_via_collection_point`, `delivery_to_profiwash`, `pick_up_at_profiwash`, `sub_total`, `order_status`, `created_at`) VALUES
(1, '2', 'City', '2020-05-27 00:00:00', 9090, 0, 454665, '{\"1\":\"2\",\"2\":\"2\",\"3\":\"1\"}', '65', '', '', '', 'Gratis', '', ' 81', 'Y', '2020-05-17 19:33:56'),
(2, '31', 'City', '2020-05-25 00:00:00', 201302, 0, 2147483647, 'null', '65', '', '', '', '', '', ' 65', 'Y', '2020-05-23 17:57:17'),
(3, '4', 'City', '2020-07-08 00:00:00', 12121, 21212, 1212122, '{\"1\":\"4\",\"2\":\"6\",\"3\":\"3\",\"6\":\"4\"}', '', '65', '20', '', 'Gratis', 'Gratis', ' 213', 'Y', '2020-07-02 07:09:38'),
(4, '7', 'City', '2020-07-17 00:00:00', 0, 0, 0, '{\"1\":\"1\",\"2\":\"4\",\"3\":\"3\",\"4\":\"2\",\"6\":\"4\"}', '65', '', '', '', '', '', ' 181', 'Y', '2020-07-17 10:47:12'),
(5, '7', 'City', '2020-07-17 00:00:00', 0, 0, 0, '{\"1\":\"5\",\"2\":\"4\",\"3\":\"3\"}', '', '', '', '', '', '', ' 68', 'Y', '2020-07-17 11:16:24'),
(6, '4', 'City', '2020-07-18 00:00:00', 0, 0, 0, '{\"1\":\"5\",\"2\":\"8\",\"3\":\"3\",\"4\":\"3\"}', '', '', '', '', '', '', ' 68', 'Y', '2020-07-18 06:13:09'),
(7, '4', 'City', '2020-07-31 00:00:00', 7777, 0, 0, '{\"1\":\"6\",\"3\":\"5\",\"4\":\"3\"}', '', '', '', '', '', '', ' 104', 'Y', '2020-07-18 06:25:20'),
(8, '4', 'City', '2020-07-18 00:00:00', 1111, 0, 0, '{\"1\":\"2\",\"6\":\"3\"}', '', '', '', '', '', '', ' 56', 'Y', '2020-07-18 06:26:43'),
(9, '4', 'City', '2020-07-29 00:00:00', 2222, 0, 0, '{\"1\":\"3\",\"3\":\"3\",\"6\":\"4\"}', '65', '65', '', '', 'Gratis', '', ' 254', 'Y', '2020-07-18 06:34:37'),
(10, '4', 'City', '2020-07-18 00:00:00', 0, 0, 0, '{\"1\":\"4\",\"2\":\"4\",\"4\":\"2\"}', '', '', '', '', '', '', ' 16', 'Y', '2020-07-18 16:22:22'),
(11, '4', 'City', '2020-07-18 00:00:00', 0, 0, 0, '{\"1\":\"4\",\"2\":\"6\",\"3\":\"6\"}', '', '', '', '', '', '', ' 112', 'Y', '2020-07-18 18:27:06'),
(12, '4', 'City', '2020-07-18 00:00:00', 0, 0, 0, '{\"1\":\"4\",\"2\":\"6\",\"3\":\"6\"}', '', '', '', '', '', '', ' 112', 'Y', '2020-07-18 18:27:33'),
(13, '2', 'City', '2020-07-23 00:00:00', 9090, 0, 454665, '{\"1\":\"2\",\"2\":\"1\",\"3\":\"1\"}', '', '65', '', '', '', '', ' 89', 'Y', '2020-07-19 07:27:48'),
(14, '4', 'City', '2020-07-20 00:00:00', 0, 0, 0, '{\"1\":\"2\",\"2\":\"2\",\"3\":\"2\",\"4\":\"2\",\"6\":\"2\"}', '', '', '', '', 'Gratis', 'Gratis', ' 72', 'Y', '2020-07-19 07:55:43'),
(15, '4', 'City', '2020-07-24 00:00:00', 0, 0, 1234567890, 'null', '65.0', '65.0', '20', '20', 'Gratis', 'Gratis', ' 170', 'Y', '2020-07-24 08:14:29'),
(16, '4', 'City', '2020-07-24 00:00:00', 0, 0, 765432190, 'null', '65.0', '65.0', '20', '20', 'Gratis', 'Gratis', ' 170', 'Y', '2020-07-24 13:14:30'),
(17, '4', 'City', '2020-08-28 00:00:00', 123456, 0, 454665, '{\"1\":\"2\",\"2\":\"1\"}', '', '65.0', '', '', 'Gratis', '', ' 73', 'Y', '2020-08-07 07:24:40'),
(18, '3', 'City', '2020-08-21 00:00:00', 8710, 0, 3, '{\"1\":\"3\",\"2\":\"2\",\"4\":\"1\"}', '', '65.0', '', '', 'Gratis', '', ' 82.5', 'Y', '2020-08-12 10:08:05'),
(19, '2', 'City', '2020-08-14 00:00:00', 9090, 0, 646464, '{\"1\":\"2\"}', '', '', '20.10', '', '', '', ' 28.1', 'Y', '2020-08-12 10:09:53'),
(20, '4', 'City', '2020-08-12 00:00:00', 0, 0, 1234567890, '{\"1\":\"3\",\"2\":\"3\",\"3\":\"2\",\"4\":\"3\",\"6\":\"3\"}', '65.0', '', '', '', '', '', ' 173.68', 'Y', '2020-08-12 11:23:09'),
(21, '2', 'City', '2020-08-21 00:00:00', 9090, 0, 454665, '{\"2\":\"1\",\"3\":\"1\"}', '', '65.0', '', '', 'Gratis', '', ' 81', 'Y', '2020-08-12 11:46:34'),
(22, '4', 'City', '2020-08-27 00:00:00', 0, 0, 454665, '{\"1\":\"2\",\"2\":\"1\"}', '', '65.0', '', '', 'Gratis', '', ' 73', 'Y', '2020-08-14 21:39:42'),
(23, '4', 'City', '2020-08-18 00:00:00', 0, 0, 1234567890, '{\"1\":\"1\",\"2\":\"1\",\"3\":\"1\",\"4\":\"1\",\"6\":\"1\"}', '65.0', '', '', '', '', 'Gratis', ' 106.56', 'Y', '2020-08-17 11:46:31'),
(24, '4', 'City', '2020-08-21 00:00:00', 9090, 0, 454665, '{\"1\":\"2\",\"2\":\"1\",\"4\":\"2\"}', '', '', '20.10', '', '', 'Gratis', ' 39.1', 'Y', '2020-08-19 10:30:41');

-- --------------------------------------------------------

--
-- Table structure for table `wash_order_items`
--

CREATE TABLE `wash_order_items` (
  `id` int(11) NOT NULL,
  `order_id` varchar(300) NOT NULL,
  `order_p_id` varchar(300) NOT NULL,
  `order_qty` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wash_order_items`
--

INSERT INTO `wash_order_items` (`id`, `order_id`, `order_p_id`, `order_qty`) VALUES
(1, '1', '1', '2'),
(2, '1', '2', '2'),
(3, '1', '3', '1'),
(4, '3', '1', '4'),
(5, '3', '2', '6'),
(6, '3', '3', '3'),
(7, '3', '6', '4'),
(8, '4', '1', '1'),
(9, '4', '2', '4'),
(10, '4', '3', '3'),
(11, '4', '4', '2'),
(12, '4', '6', '4'),
(13, '5', '1', '5'),
(14, '5', '2', '4'),
(15, '5', '3', '3'),
(16, '6', '1', '5'),
(17, '6', '2', '8'),
(18, '6', '3', '3'),
(19, '6', '4', '3'),
(20, '7', '1', '6'),
(21, '7', '3', '5'),
(22, '7', '4', '3'),
(23, '8', '1', '2'),
(24, '8', '6', '3'),
(25, '9', '1', '3'),
(26, '9', '3', '3'),
(27, '9', '6', '4'),
(28, '10', '1', '4'),
(29, '10', '2', '4'),
(30, '10', '4', '2'),
(31, '11', '1', '4'),
(32, '11', '2', '6'),
(33, '11', '3', '6'),
(34, '12', '1', '4'),
(35, '12', '2', '6'),
(36, '12', '3', '6'),
(37, '13', '1', '2'),
(38, '13', '2', '1'),
(39, '13', '3', '1'),
(40, '14', '1', '2'),
(41, '14', '2', '2'),
(42, '14', '3', '2'),
(43, '14', '4', '2'),
(44, '14', '6', '2'),
(45, '17', '1', '2'),
(46, '17', '2', '1'),
(47, '18', '1', '3'),
(48, '18', '2', '2'),
(49, '18', '4', '1'),
(50, '19', '1', '2'),
(51, '20', '1', '3'),
(52, '20', '2', '3'),
(53, '20', '3', '2'),
(54, '20', '4', '3'),
(55, '20', '6', '3'),
(56, '21', '2', '1'),
(57, '21', '3', '1'),
(58, '22', '1', '2'),
(59, '22', '2', '1'),
(60, '23', '1', '1'),
(61, '23', '2', '1'),
(62, '23', '3', '1'),
(63, '23', '4', '1'),
(64, '23', '6', '1'),
(65, '24', '1', '2'),
(66, '24', '2', '1'),
(67, '24', '4', '2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `all_associations`
--
ALTER TABLE `all_associations`
  ADD PRIMARY KEY (`a_id`);

--
-- Indexes for table `cms_aanbod`
--
ALTER TABLE `cms_aanbod`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_bekers`
--
ALTER TABLE `cms_bekers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_bio`
--
ALTER TABLE `cms_bio`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_cityevenementen`
--
ALTER TABLE `cms_cityevenementen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_cityproducts`
--
ALTER TABLE `cms_cityproducts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_city_inbox`
--
ALTER TABLE `cms_city_inbox`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_contact`
--
ALTER TABLE `cms_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_home`
--
ALTER TABLE `cms_home`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_inbox`
--
ALTER TABLE `cms_inbox`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_mijidashboard`
--
ALTER TABLE `cms_mijidashboard`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_mijievenementen`
--
ALTER TABLE `cms_mijievenementen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_missie`
--
ALTER TABLE `cms_missie`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_products`
--
ALTER TABLE `cms_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_referenties`
--
ALTER TABLE `cms_referenties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_vereniging`
--
ALTER TABLE `cms_vereniging`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_msg`
--
ALTER TABLE `contact_msg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gemeenten`
--
ALTER TABLE `gemeenten`
  ADD PRIMARY KEY (`g_id`);

--
-- Indexes for table `inbox`
--
ALTER TABLE `inbox`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders_bk_08-08`
--
ALTER TABLE `orders_bk_08-08`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders_old`
--
ALTER TABLE `orders_old`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items_old`
--
ALTER TABLE `order_items_old`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_page_settings`
--
ALTER TABLE `order_page_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_by_menu`
--
ALTER TABLE `page_by_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_otp`
--
ALTER TABLE `password_otp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `product_price_by_city`
--
ALTER TABLE `product_price_by_city`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribed`
--
ALTER TABLE `subscribed`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `verenigings`
--
ALTER TABLE `verenigings`
  ADD PRIMARY KEY (`v_id`);

--
-- Indexes for table `wash_order`
--
ALTER TABLE `wash_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wash_order_items`
--
ALTER TABLE `wash_order_items`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `all_associations`
--
ALTER TABLE `all_associations`
  MODIFY `a_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cms_aanbod`
--
ALTER TABLE `cms_aanbod`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cms_bekers`
--
ALTER TABLE `cms_bekers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cms_bio`
--
ALTER TABLE `cms_bio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cms_cityevenementen`
--
ALTER TABLE `cms_cityevenementen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cms_cityproducts`
--
ALTER TABLE `cms_cityproducts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cms_city_inbox`
--
ALTER TABLE `cms_city_inbox`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cms_contact`
--
ALTER TABLE `cms_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cms_home`
--
ALTER TABLE `cms_home`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cms_inbox`
--
ALTER TABLE `cms_inbox`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cms_mijidashboard`
--
ALTER TABLE `cms_mijidashboard`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cms_mijievenementen`
--
ALTER TABLE `cms_mijievenementen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cms_missie`
--
ALTER TABLE `cms_missie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cms_products`
--
ALTER TABLE `cms_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cms_referenties`
--
ALTER TABLE `cms_referenties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cms_vereniging`
--
ALTER TABLE `cms_vereniging`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact_msg`
--
ALTER TABLE `contact_msg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `gemeenten`
--
ALTER TABLE `gemeenten`
  MODIFY `g_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `inbox`
--
ALTER TABLE `inbox`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=501;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `orders_bk_08-08`
--
ALTER TABLE `orders_bk_08-08`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `orders_old`
--
ALTER TABLE `orders_old`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=172;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=156;

--
-- AUTO_INCREMENT for table `order_items_old`
--
ALTER TABLE `order_items_old`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=293;

--
-- AUTO_INCREMENT for table `order_page_settings`
--
ALTER TABLE `order_page_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `page_by_menu`
--
ALTER TABLE `page_by_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `password_otp`
--
ALTER TABLE `password_otp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `product_price_by_city`
--
ALTER TABLE `product_price_by_city`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `subscribed`
--
ALTER TABLE `subscribed`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- AUTO_INCREMENT for table `verenigings`
--
ALTER TABLE `verenigings`
  MODIFY `v_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=172;

--
-- AUTO_INCREMENT for table `wash_order`
--
ALTER TABLE `wash_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `wash_order_items`
--
ALTER TABLE `wash_order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
