-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 05, 2021 at 08:03 AM
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
(1, '1591103313_banner_image.jpg', 'Aanbod', '', '{\"content_image\":[\"1609751475_content_image.jpg\",\"1609948543_content_image.png\",\"1609949031_content_image.png\"],\"content_heading\":[\"Topkwaliteit onbreekbaar glas\",\"Topkwaliteit reiniging\",\"Oplossingen op maat\"],\"content_text\":[\"Dit onbreekbaar glas is gemaakt van polycarbonaat. <br \\/> Superieur aan polypropyleen (PP) op vlak van <br \\/>  smaakbeleving, kwaliteit en duurzaamheid. <br \\/><br \\/>\\r\\nMaak uw account aan en check ons volledig aanbod van herbruikbare bekers (bier, wijn, cocktails, champagne...). <br \\/><br \\/>\\r\\nWij, <a href=\\\"https:\\/\\/profiwash.be\\\">Profiwash<\\/a> beschikken zelf over professionele wasstraten (https:\\/\\/profiwash.be) met grote capaciteit.<br \\/><br \\/>\\r\\nJe kan je bestelde kisten met bekers ook bij ons ophalen en terugbrengen.<br \\/><br \\/>\\r\\nEenmaal je account aangemaakt kan je de volledige flow (van bestellilng tot betaling) volgen.\",\"Ook post-Covid19 zal de garantie op professionele reiniging cruciaal blijven. <br \\/><br \\/>Met ruim 35 jaar ervaring heeft onze dochter Profiwash daartoe alle installaties en expertise in huis. <br \\/><br \\/>Naast glazen en bekers reinigen we bijvoorbeeld ook bestekken, dispensers, food containers...<br \\/><br \\/>\\r\\n<a href=\\\"https:\\/\\/profiwash.be\\\">>>Klik hier voor meer info<\\/a>\\r\\n\",\"Voor grotere events, zoals festivals en sportmanifestaties, luisteren we eerst naar alle bezorgdheden van de klant. <br \\/>\\r\\nSamen met hem werken we zijn specifieke business case. Daarbij zijn de uitgangspunten volledige ontzorging en een positieve netto-marge voor de klant. <br \\/>\\r\\nBen je zo\'n event organizer? Gebruik dan alvast onze online simulator zodat je een idee krijgt van kosten \\u00e9n mogelijke opbrengsten. <br \\/>\\r\\n<a href=\\\"https:\\/\\/www.durafest.be\\/cost-calculator-reusable-cups\\/\\\">>>Klik hier voor onze tool<\\/a>\\r\\n\"]}', '2020-06-02 13:08:19');

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
(1, '1589962481_banner_image.jpg', 'Durafest', 'Het serviceplatform voor Herbruikbare Bekers', '2020-05-19 16:56:08');

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
(1, '1591107110_banner_image.jpg', 'Over ons', 'Ontdek wie we zijn en wat we doen.', 'Hoe het allemaal begon...', 'Het begon allemaal een paar jaar geleden met de Original Cupkeeper, onze populaire bekerhouder die wordt gebruikt voor grote evenementen. <br /> De Cupkeeper is  een compacte, mooie en duurzame bekerhouder voor zes bekers in één hand. Geen kartonafval meer op de festivalweide als gevolg van wegwerpdrankhouders! <br />\r\nToen we aan het einde van een rockfestivaldag de laag van 2,5 cm wegwerpbekers zagen, begrepen we dat we naar een next level moesten gaan. En vermits we de bekerhouder al hadden, was de overstap naar duurzame bekers een logische stap. <br />\r\nBij de meeste van onze concurrenten merkten we dat hun businessmodel gebaseerd is op een logistiek model van produceren (of aankopen), verkopen, verhuren, reinigen en stockeren. <br />\r\nBij Durafest gaan we uit van een klantgerichte aanpak. Door goed te luisteren naar de uitdagingen van onze klanten, bouwen we op maat gemaakte all-in oplossingen die perfect zijn voor hun evenement.', '{\"content_image\":[\"1609958922_content_image.jpg\",\"1609959379_content_image.jpg\",\"1609959686_content_image.jpg\",\"1609959802_content_image.png\"],\"content_heading\":[\"De meest innovatieve bekerhouder\",\"De founding fathers\",\"Duurzame verpakking voor take-away\",\"De afwasfabriek van Vlaanderen\"],\"content_text\":[\"Je herkent hem wel van op Rock Werchter, Tomorrowland, Crammerock of \\u00e9\\u00e9n van de vele andere festivals? <br \\/>\\r\\nBen je ge\\u00efnteresseerd? Neem dan een kijkje op <a href=\\\"https:\\/\\/originalcupkeeper.com\\\">originalcupkeeper.com<\\/a>\\r\\n <br \\/>\\r\\nWe hebben vier verschillende versies van de Cupkeeper.\",\"In maart 2020 richtten Koen, Dieter en Johan (op de foto van links naar rechts) Durafest BV op. <br \\/>\\r\\nEnkele weken later werd het grootste event van Belgi\\u00eb, Ros Beiaard, gegund aan Durafest. <br \\/>\\r\\nDoor Covid19 is dit event uitgesteld naar 2022.\",\"Kort na de oprichting werd Roltex NV vennoot van Durafest. Op die manier haalde Durafest onder meer de expertise binnen voor sourcing van Europese topkwaliteit bekers, voornamelijk in het superieure segment van \\\"onbreekbaar glas\\\" of polycarbonaat ( en tritan).<br \\/>\\r\\nDanielle (CEO Roltex) is tevens de bezielster van RedUse, de nieuwste telg in de Durafest-familie: duurzame verpakking voor take-away!\",\"En nog in maart 2020 nam Durafest de BV Profiwash over, d\\u00e9 afwasfabriek van Vlaanderen met ruim 30 jaar ervaring in de industri\\u00eble reiniging.<br \\/>\\r\\nWe beschikken daardoor over grote afwascapaciteit. Naast glazen en bekers reinigen we bijvoorbeeld ook bestekken, dispensers, food containers...\"]}', '2020-06-02 13:25:14');

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
(1, '1589962481_banner_image.jpg', 'Durafest', 'Het serviceplatform voor herbruikbare bekers', '2020-05-19 16:56:08');

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
(1, '1589962481_banner_image.jpg', 'Durafest', 'Het platform voor herbruikbare bekers', '2020-05-19 16:56:08');

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
(1, '1589962481_banner_image.jpg', 'Durafest', 'Het serviceplatform voor herbruikbare bekers', '2020-05-19 16:56:08');

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
(1, '1591128267_banner_image.jpg', 'Contact', 'Contacteer ons.', '1591128302_section_1_big_image.jpg', 'Durafest', '<p>Kwintijnpoort 106 <br />\r\n\r\n                                9200 Dendermonde<br />\r\n                                <br />\r\n                                Tel. +32 475 833 087<br />\r\n                            </p>\r\n                            <a href=\"#\" class=\"info\">info@durafest.be</a>\r\n\r\n                            <p>Ondernemingsnummer<br />\r\n\r\n                                BE0744.832.118\r\n                            </p>', 'Profiwash', '<p>Wingepark 4a <br />\r\n\r\n                                3110 Rotselaar<br />\r\n                                <br />\r\n                                Tel. 016/24.14.81<br />\r\n                            </p>\r\n                            <a href=\"#\" class=\"info\">info@profiwash.be</a>\r\n\r\n                            <p>Ondernemingsnummer<br />\r\n\r\n                                BE 0479.870.579\r\n                            </p>', '1591128329_section_2_image.jpg');

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
(1, '1589962481_banner_image.jpg', 'Het serviceplatform voor', 'Herbruikbare Bekers', 'Durafest is gespecialiseerd in klantgerichte bekeroplossingen <br /> voor alle soorten grote events zoals festivals, concerten en sportmanifestaties.', 'Onze diensten', 'https://serviceplatform.durafest.be/aanbod', 'Account aanmaken', 'https://serviceplatform.durafest.be/profiwashvoorverenigingen', 'Herbruikbare Bekers', 'Een groot assortiment aan herbruikbare bekers van uitstekende Europese kwaliteit', '1589962604_service_icon_1.png', 'Industriële reiniging', 'Onze vier wasstraten bij Profiwash zorgen voor de best mogelijke reiniging', '1589962983_service_icon_2.png', 'Dashboard', 'Volg onder meer het verlies aan bekers op elk van jouw events en overleg met ons hoe je dit verder kan beperken', '1609947984_service_icon_3.png', 'Customized solutions', 'Voor grote events: contacteer ons voor oplossingen op maat voor een volledige ontzorging', '1609948235_service_icon_4.png', 'Testimonials', 'Onze dranksponsor wilde zijn duurzame bekers \"gratis\" aan ons leveren maar we moesten wel opdraaien voor de kosten van verloren en gebroken bekers alsook van de reiniging. <br />\r\nDurafest kwam met een all-in oplossing: totale ontzorging én een positieve netto-marge op het einde van de rit. Dank je!', 'Mark V.', '1589963061_testimonial_image.png', 'Registreren', 'https://serviceplatform.durafest.be/profiwashvoorverenigingen', 'Durafest', 'Op dit platform kunnen steden, gemeenten en hun verenigingen\r\nherbruikbare bekers huren. Het leveren en terugbezorgen kan op\r\nhet event, aan een afhaalpunt of bij ons in Rotselaar.', 'De bekers worden na het event op professionele wijze gereinigd en gedroogd in\r\nspeciale wasstraten. Via je account kan je de rapportering van al je evenementen\r\nopvolgen. Veel plezier!', '1609954479_section_1_big_image.png', 'Meer info', 'https://serviceplatform.durafest.be/profiwashvoorverenigingen', '+32 472 985 637', 'sales@durafest.be', 'Kortingen', 'Indien we met jouw gemeente een overeenkomst hebben, zal je van betere prijzen genieten. <br />Het correct ingeven van je postcode is dus erg belangrijk wanneer je een aanvraag lanceert via ons platform.', '1609950247_section_2_big_image.jpg', '2500', '0', '10', '2020-05-19 16:56:08');

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
(1, '1589962481_banner_image.jpg', 'Durafest', 'Het serviceplatform voor herbruikbare bekers', '2020-05-19 16:56:08');

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
(1, '1589962481_banner_image.jpg', 'Dashboard', 'Mijn dashboard', '2020-05-19 16:56:08');

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
(1, '1589962481_banner_image.jpg', 'Durafest', 'Het serviceplatform voor herbruikbare bekers', '2020-05-19 16:56:08');

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
(1, '1589962481_banner_image.jpg', 'Durafest', 'Het serviceplatform voor herbruikbare bekers', '2020-05-19 16:56:08');

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
(1, '1591105321_banner_image.jpg', 'Referenties', 'Wat zeggen onze klanten.', '1591105321_section_1_big_image.jpg', 'Referenties', '', '2500', '0', '10', '', '', '', '', '', '1591105430_section_2_image.png', '', '', '1591105430_section_3_image.png');

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
(1, '1589962481_banner_image.jpg', 'Durafest', 'Het serviceplatform voor Herbruikbare Bekers', '2020-05-19 16:56:08');

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
(515, '140', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 7 ]  By Admin.', '2020-12-17 12:37:48', 'Y'),
(516, '141', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 8. We will get back to you soon.', '2020-12-17 12:50:12', 'Y'),
(517, '141', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 8 ]  By Admin.', '2020-12-17 12:50:59', 'Y'),
(518, '141', '1', 'Admin', 'Hi, Your requested event [ ID: 8 ] is Ativated.', '2020-12-17 12:51:10', 'Y'),
(519, '134', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 9. We will get back to you soon.', '2020-12-17 13:53:44', 'Y'),
(520, '134', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 9 ]  By Admin.', '2020-12-17 14:02:05', 'Y'),
(521, '142', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 10. We will get back to you soon.', '2020-12-18 16:24:25', 'Y'),
(522, '142', '1', 'Admin', 'Hi, Your requested event [ ID: 10 ] is Ativated.', '2020-12-18 16:25:17', 'Y'),
(523, '144', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 11. We will get back to you soon.', '2020-12-21 06:42:05', 'Y'),
(524, '144', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 11 ]  By Admin.', '2020-12-21 06:55:13', 'Y'),
(525, '144', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 12. We will get back to you soon.', '2020-12-21 08:18:48', 'Y'),
(526, '144', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 13. We will get back to you soon.', '2020-12-21 08:19:40', 'Y'),
(527, '144', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 14. We will get back to you soon.', '2020-12-21 08:22:57', 'Y'),
(528, '144', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is . We will get back to you soon.', '2020-12-21 08:24:05', 'Y'),
(529, '144', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 15. We will get back to you soon.', '2020-12-21 08:32:15', 'Y'),
(530, '144', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 16. We will get back to you soon.', '2020-12-21 08:53:50', 'Y'),
(531, '144', '1', 'Admin', 'Hi, Your requested event [ ID: 16 ] is Ativated.', '2020-12-21 09:10:16', 'Y'),
(532, '144', '1', 'Admin', 'Hi, Your requested event [ ID: 15 ] is Ativated.', '2020-12-21 09:12:05', 'Y'),
(533, 'undefined', '1', 'Admin', 'Hi, Your requested event [ ID: 15 ] is Inacive.', '2020-12-21 09:14:53', 'Y'),
(534, '144', '1', 'Admin', 'Hi, Your requested event [ ID: 16 ] is Inacive.', '2020-12-21 09:28:55', 'Y'),
(535, '144', '1', 'Admin', 'Hi, Your requested event [ ID: 16 ] is Inacive.', '2020-12-21 09:29:23', 'Y'),
(536, '144', '1', 'Admin', 'Hi, Your requested event [ ID: 16 ] is Inacive.', '2020-12-21 09:30:25', 'Y'),
(537, '144', '1', 'Admin', 'Hi, Your requested event [ ID: 16 ] is Inacive.', '2020-12-21 09:31:45', 'Y'),
(538, '144', '1', 'Admin', 'Hi, Your requested event [ ID: 16 ] is Inacive.', '2020-12-21 09:40:03', 'Y'),
(539, '144', '1', 'Admin', 'Hi, Your requested event [ ID: 16 ] is Inacive.', '2020-12-21 09:41:17', 'Y'),
(540, '144', '1', 'Admin', 'Hi, Your requested event [ ID: 16 ] is Inacive.', '2020-12-21 09:42:01', 'Y'),
(541, '144', '1', 'Admin', 'Hi, Your requested event [ ID: 16 ] is Ativated.', '2020-12-21 09:42:03', 'Y'),
(542, '144', '1', 'Admin', 'Hi, Your requested event [ ID: 16 ] is Inacive.', '2020-12-21 09:52:19', 'Y'),
(543, '144', '1', 'Admin', 'Hi, Your requested event [ ID: 16 ] is Ativated.', '2020-12-21 09:52:21', 'Y'),
(544, '144', '1', 'Admin', 'Hi, Your requested event [ ID: 14 ] is Ativated.', '2020-12-21 09:52:39', 'Y'),
(545, '144', '1', 'Admin', 'Hi, Your requested event [ ID: 13 ] is Ativated.', '2020-12-21 09:57:52', 'Y'),
(546, '144', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 16 ]  By Admin.', '2020-12-21 10:07:13', 'Y'),
(547, '144', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 16 ]  By Admin.', '2020-12-21 11:25:50', 'Y'),
(548, '144', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 16 ]  By Admin.', '2020-12-21 11:26:56', 'Y'),
(549, '144', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 16 ]  By Admin.', '2020-12-21 11:27:11', 'Y'),
(550, '144', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 16 ]  By Admin.', '2020-12-21 11:28:52', 'Y'),
(551, '145', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 17. We will get back to you soon.', '2020-12-21 11:43:32', 'Y'),
(552, '145', '1', 'Admin', 'Hi, Your requested event [ ID: 17 ] is Ativated.', '2020-12-21 11:44:32', 'Y'),
(553, '145', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 17 ]  By Admin.', '2020-12-21 11:45:45', 'Y'),
(554, '145', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 17 ]  By Admin.', '2020-12-21 12:50:24', 'Y'),
(555, '145', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 17 ]  By Admin.', '2020-12-21 12:56:32', 'Y'),
(556, '145', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 17 ]  By Admin.', '2020-12-21 13:44:49', 'Y'),
(557, '145', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 17 ]  By Admin.', '2020-12-21 13:46:06', 'Y'),
(558, '145', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 17 ]  By Admin.', '2020-12-21 13:46:12', 'Y'),
(559, '145', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 17 ]  By Admin.', '2020-12-21 13:46:46', 'Y'),
(560, '145', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 17 ]  By Admin.', '2020-12-21 13:47:37', 'Y'),
(561, '145', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 17 ]  By Admin.', '2020-12-21 13:51:22', 'Y'),
(562, '145', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 17 ]  By Admin.', '2020-12-21 13:52:15', 'Y'),
(563, '145', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 17 ]  By Admin.', '2020-12-21 13:54:11', 'Y'),
(564, '145', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 17 ]  By Admin.', '2020-12-21 13:54:17', 'Y'),
(565, '145', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 17 ]  By Admin.', '2020-12-21 13:54:44', 'Y'),
(566, '145', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 17 ]  By Admin.', '2020-12-21 13:56:00', 'Y'),
(567, '145', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 17 ]  By Admin.', '2020-12-21 13:58:32', 'Y'),
(568, '145', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 17 ]  By Admin.', '2020-12-21 13:58:52', 'Y'),
(569, '145', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 17 ]  By Admin.', '2020-12-21 14:00:26', 'Y'),
(570, '145', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 17 ]  By Admin.', '2020-12-21 14:11:38', 'Y'),
(571, '145', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 17 ]  By Admin.', '2020-12-21 14:14:31', 'Y'),
(572, '145', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 17 ]  By Admin.', '2020-12-21 14:16:22', 'Y'),
(573, '145', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 17 ]  By Admin.', '2020-12-21 14:17:18', 'Y'),
(574, '145', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 17 ]  By Admin.', '2020-12-21 14:25:25', 'Y'),
(575, '145', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 17 ]  By Admin.', '2020-12-21 14:25:30', 'Y'),
(576, '145', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 17 ]  By Admin.', '2020-12-21 14:26:03', 'Y'),
(577, '145', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 17 ]  By Admin.', '2020-12-21 14:26:04', 'Y'),
(578, '145', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 17 ]  By Admin.', '2020-12-21 14:26:04', 'Y'),
(579, '145', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 17 ]  By Admin.', '2020-12-21 14:26:04', 'Y'),
(580, '145', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 17 ]  By Admin.', '2020-12-21 14:26:04', 'Y'),
(581, '145', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 17 ]  By Admin.', '2020-12-21 14:26:04', 'Y'),
(582, '145', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 17 ]  By Admin.', '2020-12-21 14:26:04', 'Y'),
(583, '145', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 17 ]  By Admin.', '2020-12-21 14:26:04', 'Y'),
(584, '145', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 17 ]  By Admin.', '2020-12-21 14:26:04', 'Y'),
(585, '145', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 17 ]  By Admin.', '2020-12-21 14:26:04', 'Y'),
(586, '145', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 17 ]  By Admin.', '2020-12-21 14:26:04', 'Y'),
(587, '145', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 17 ]  By Admin.', '2020-12-21 14:26:04', 'Y'),
(588, '145', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 17 ]  By Admin.', '2020-12-21 14:26:04', 'Y'),
(589, '145', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 17 ]  By Admin.', '2020-12-21 14:26:05', 'Y'),
(590, '145', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 17 ]  By Admin.', '2020-12-21 14:26:05', 'Y'),
(591, '145', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 17 ]  By Admin.', '2020-12-21 14:29:06', 'Y'),
(592, '145', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 17 ]  By Admin.', '2020-12-21 14:29:45', 'Y'),
(593, '145', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 17 ]  By Admin.', '2020-12-21 14:29:53', 'Y'),
(594, '145', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 17 ]  By Admin.', '2020-12-21 14:29:57', 'Y'),
(595, '145', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 17 ]  By Admin.', '2020-12-21 14:31:44', 'Y'),
(596, '145', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 17 ]  By Admin.', '2020-12-21 14:32:55', 'Y'),
(597, '145', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 17 ]  By Admin.', '2020-12-21 14:34:43', 'Y'),
(598, '145', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 17 ]  By Admin.', '2020-12-21 14:36:39', 'Y'),
(599, '145', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 17 ]  By Admin.', '2020-12-21 14:40:46', 'Y'),
(600, '145', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 17 ]  By Admin.', '2020-12-21 14:41:36', 'Y'),
(601, '145', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 17 ]  By Admin.', '2020-12-21 14:42:59', 'Y'),
(602, '145', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 17 ]  By Admin.', '2020-12-21 14:43:17', 'Y'),
(603, '145', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 17 ]  By Admin.', '2020-12-21 14:50:34', 'Y'),
(604, '145', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 17 ]  By Admin.', '2020-12-21 14:52:15', 'Y'),
(605, '145', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 17 ]  By Admin.', '2020-12-21 14:57:13', 'Y'),
(606, '145', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 17 ]  By Admin.', '2020-12-21 15:02:20', 'Y'),
(607, '145', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 17 ]  By Admin.', '2020-12-21 15:02:41', 'Y'),
(608, '145', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 17 ]  By Admin.', '2020-12-21 15:07:53', 'Y'),
(609, '145', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 17 ]  By Admin.', '2020-12-21 15:11:01', 'Y'),
(610, '145', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 17 ]  By Admin.', '2020-12-21 15:13:33', 'Y'),
(611, '145', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 17 ]  By Admin.', '2020-12-21 15:14:06', 'Y'),
(612, '137', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 18. We will get back to you soon.', '2020-12-22 12:55:26', 'Y'),
(613, '146', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 19. We will get back to you soon.', '2021-01-08 10:16:49', 'Y'),
(614, '146', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 19 ]  By Admin.', '2021-01-08 14:46:34', 'Y'),
(615, '147', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 20. We will get back to you soon.', '2021-01-08 14:52:39', 'Y'),
(616, '147', '1', 'Admin', 'Hi, Your requested event [ ID: 20 ] is Ativated.', '2021-01-08 14:57:43', 'Y'),
(617, '148', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 21. We will get back to you soon.', '2021-01-15 06:04:24', 'Y'),
(618, '148', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 22. We will get back to you soon.', '2021-01-15 14:34:24', 'Y'),
(619, '148', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 23. We will get back to you soon.', '2021-01-15 16:17:12', 'Y'),
(620, '149', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 24. We will get back to you soon.', '2021-01-16 10:30:31', 'Y'),
(621, '149', '1', 'Admin', 'Hi, Your requested event [ ID: 24 ] is Ativated.', '2021-01-16 10:34:33', 'Y'),
(622, '149', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 24 ]  By Admin.', '2021-01-16 10:36:55', 'Y'),
(623, '149', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 25. We will get back to you soon.', '2021-01-16 10:59:31', 'Y'),
(624, '137', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 25. We will get back to you soon.', '2021-01-16 12:03:44', 'Y'),
(625, '149', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 25 ]  By Admin.', '2021-01-18 06:41:42', 'Y'),
(626, '149', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 25 ]  By Admin.', '2021-01-18 08:17:06', 'Y'),
(627, '150', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 26. We will get back to you soon.', '2021-01-19 09:20:32', 'Y'),
(628, '150', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 26 ]  By Admin.', '2021-01-19 09:56:32', 'Y'),
(629, '150', '1', 'Admin', 'Hi, Your requested event [ ID: 26 ] is Ativated.', '2021-01-19 10:00:30', 'Y'),
(630, '148', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 27. We will get back to you soon.', '2021-01-19 11:13:10', 'Y'),
(631, '148', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 27 ]  By Admin.', '2021-01-19 11:16:33', 'Y'),
(632, '148', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 27 ]  By Admin.', '2021-01-19 11:19:21', 'Y'),
(633, '148', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 27 ]  By Admin.', '2021-01-19 11:20:14', 'Y'),
(634, '148', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 27 ]  By Admin.', '2021-01-19 11:22:11', 'Y'),
(635, '148', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 27 ]  By Admin.', '2021-01-19 11:24:11', 'Y'),
(636, '148', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 27 ]  By Admin.', '2021-01-19 11:25:35', 'Y'),
(637, '148', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 27 ]  By Admin.', '2021-01-19 11:27:49', 'Y'),
(638, '148', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 27 ]  By Admin.', '2021-01-19 11:48:30', 'Y'),
(639, '148', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 27 ]  By Admin.', '2021-01-19 11:49:17', 'Y'),
(640, '148', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 27 ]  By Admin.', '2021-01-19 11:49:44', 'Y'),
(641, '148', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 27 ]  By Admin.', '2021-01-19 11:50:03', 'Y'),
(642, '148', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 27 ]  By Admin.', '2021-01-19 12:05:53', 'Y'),
(643, '148', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 27 ]  By Admin.', '2021-01-19 12:06:39', 'Y'),
(644, '148', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 27 ]  By Admin.', '2021-01-19 12:06:53', 'Y'),
(645, '148', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 27 ]  By Admin.', '2021-01-19 12:11:16', 'Y'),
(646, '148', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 27 ]  By Admin.', '2021-01-19 12:11:28', 'Y'),
(647, '148', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 27 ]  By Admin.', '2021-01-19 12:12:44', 'Y'),
(648, '148', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 27 ]  By Admin.', '2021-01-19 12:29:57', 'Y'),
(649, '148', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 27 ]  By Admin.', '2021-01-19 12:32:05', 'Y'),
(650, '148', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 27 ]  By Admin.', '2021-01-19 12:32:26', 'Y'),
(651, '148', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 27 ]  By Admin.', '2021-01-19 13:49:42', 'Y'),
(652, '148', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 27 ]  By Admin.', '2021-01-19 13:50:58', 'Y'),
(653, '148', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 27 ]  By Admin.', '2021-01-19 14:07:29', 'Y'),
(654, '150', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 26 ]  By Admin.', '2021-01-19 15:52:03', 'Y'),
(655, '145', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 17 ]  By Admin.', '2021-01-19 15:54:03', 'Y'),
(656, '145', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 17 ]  By Admin.', '2021-01-19 15:56:19', 'Y'),
(657, '145', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 17 ]  By Admin.', '2021-01-19 15:56:38', 'Y'),
(658, '145', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 17 ]  By Admin.', '2021-01-19 15:56:54', 'Y'),
(659, '145', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 17 ]  By Admin.', '2021-01-19 15:57:05', 'Y'),
(660, '145', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 17 ]  By Admin.', '2021-01-19 15:57:15', 'Y'),
(661, '145', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 17 ]  By Admin.', '2021-01-19 15:57:27', 'Y'),
(662, '145', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 17 ]  By Admin.', '2021-01-19 15:58:19', 'Y'),
(663, '145', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 17 ]  By Admin.', '2021-01-19 15:58:35', 'Y'),
(664, '145', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 17 ]  By Admin.', '2021-01-19 15:58:47', 'Y'),
(665, '145', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 17 ]  By Admin.', '2021-01-19 15:59:01', 'Y'),
(666, '145', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 17 ]  By Admin.', '2021-01-19 16:00:23', 'Y'),
(667, '145', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 17 ]  By Admin.', '2021-01-19 16:00:33', 'Y'),
(668, '145', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 17 ]  By Admin.', '2021-01-19 16:00:36', 'Y'),
(669, '145', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 17 ]  By Admin.', '2021-01-19 16:01:04', 'Y'),
(670, '145', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 17 ]  By Admin.', '2021-01-19 16:02:55', 'Y'),
(671, '145', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 17 ]  By Admin.', '2021-01-19 16:04:52', 'Y'),
(672, '148', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 27 ]  By Admin.', '2021-01-19 16:26:04', 'Y'),
(673, '148', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 27 ]  By Admin.', '2021-01-19 16:30:08', 'Y'),
(674, '148', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 27 ]  By Admin.', '2021-01-19 16:43:32', 'Y'),
(675, '148', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 27 ]  By Admin.', '2021-01-19 16:46:31', 'Y'),
(676, '148', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 27 ]  By Admin.', '2021-01-19 16:53:16', 'Y'),
(677, '148', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 27 ]  By Admin.', '2021-01-19 16:59:57', 'Y'),
(678, '148', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 27 ]  By Admin.', '2021-01-19 17:00:12', 'Y'),
(679, '148', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 27 ]  By Admin.', '2021-01-19 17:00:19', 'Y'),
(680, '148', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 27 ]  By Admin.', '2021-01-19 17:00:26', 'Y'),
(681, '148', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 27 ]  By Admin.', '2021-01-19 17:01:01', 'Y'),
(682, '148', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 27 ]  By Admin.', '2021-01-19 17:02:09', 'Y'),
(683, '148', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 27 ]  By Admin.', '2021-01-19 17:03:26', 'Y'),
(684, '148', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 27 ]  By Admin.', '2021-01-19 17:03:28', 'Y'),
(685, '148', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 27 ]  By Admin.', '2021-01-19 17:04:06', 'Y'),
(686, '148', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 27 ]  By Admin.', '2021-01-19 17:04:29', 'Y'),
(687, '148', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 27 ]  By Admin.', '2021-01-19 17:04:41', 'Y'),
(688, '148', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 27 ]  By Admin.', '2021-01-19 17:05:02', 'Y'),
(689, '148', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 27 ]  By Admin.', '2021-01-19 17:05:23', 'Y'),
(690, '148', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 27 ]  By Admin.', '2021-01-19 17:07:22', 'Y'),
(691, '148', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 27 ]  By Admin.', '2021-01-19 17:07:34', 'Y'),
(692, '148', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 27 ]  By Admin.', '2021-01-19 17:08:12', 'Y'),
(693, '148', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 27 ]  By Admin.', '2021-01-19 17:09:58', 'Y'),
(694, '148', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 27 ]  By Admin.', '2021-01-19 17:17:27', 'Y'),
(695, '148', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 27 ]  By Admin.', '2021-01-19 17:17:32', 'Y'),
(696, '148', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 27 ]  By Admin.', '2021-01-19 17:20:27', 'Y'),
(697, '129', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 28. We will get back to you soon.', '2021-01-19 17:31:45', 'Y'),
(698, '129', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 28 ]  By Admin.', '2021-01-19 18:40:54', 'Y'),
(699, '145', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 17 ]  By Admin.', '2021-01-20 07:38:05', 'Y'),
(700, '145', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 17 ]  By Admin.', '2021-01-20 07:38:33', 'Y'),
(701, '145', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 17 ]  By Admin.', '2021-01-20 07:42:16', 'Y'),
(702, '145', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 17 ]  By Admin.', '2021-01-20 07:49:33', 'Y'),
(703, '145', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 17 ]  By Admin.', '2021-01-20 07:57:52', 'Y'),
(704, '145', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 17 ]  By Admin.', '2021-01-20 07:59:00', 'Y'),
(705, '145', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 17 ]  By Admin.', '2021-01-20 07:59:38', 'Y'),
(706, '145', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 17 ]  By Admin.', '2021-01-20 07:59:47', 'Y'),
(707, '145', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 17 ]  By Admin.', '2021-01-20 08:01:28', 'Y'),
(708, '145', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 17 ]  By Admin.', '2021-01-20 08:01:47', 'Y'),
(709, '145', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 17 ]  By Admin.', '2021-01-20 08:02:07', 'Y'),
(710, '145', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 17 ]  By Admin.', '2021-01-20 08:03:29', 'Y'),
(711, '148', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 29. We will get back to you soon.', '2021-01-20 08:06:33', 'Y'),
(712, '145', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 17 ]  By Admin.', '2021-01-20 08:14:20', 'Y'),
(713, '145', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 17 ]  By Admin.', '2021-01-20 08:14:24', 'Y'),
(714, '145', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 17 ]  By Admin.', '2021-01-20 08:15:10', 'Y'),
(715, '145', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 17 ]  By Admin.', '2021-01-20 08:15:41', 'Y'),
(716, '145', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 17 ]  By Admin.', '2021-01-20 08:16:25', 'Y'),
(717, '145', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 17 ]  By Admin.', '2021-01-20 08:16:35', 'Y'),
(718, '145', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 17 ]  By Admin.', '2021-01-20 08:16:48', 'Y'),
(719, '145', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 17 ]  By Admin.', '2021-01-20 08:17:28', 'Y'),
(720, '145', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 17 ]  By Admin.', '2021-01-20 08:19:26', 'Y'),
(721, '145', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 17 ]  By Admin.', '2021-01-20 08:20:47', 'Y'),
(722, '145', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 17 ]  By Admin.', '2021-01-20 08:23:20', 'Y'),
(723, '145', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 17 ]  By Admin.', '2021-01-20 08:26:05', 'Y'),
(724, '145', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 17 ]  By Admin.', '2021-01-20 08:26:22', 'Y'),
(725, '145', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 17 ]  By Admin.', '2021-01-20 08:30:29', 'Y'),
(726, '145', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 17 ]  By Admin.', '2021-01-20 08:31:54', 'Y'),
(727, '145', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 17 ]  By Admin.', '2021-01-20 09:01:34', 'Y'),
(728, '145', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 17 ]  By Admin.', '2021-01-20 09:02:21', 'Y'),
(729, '145', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 17 ]  By Admin.', '2021-01-20 09:03:46', 'Y'),
(730, '145', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 17 ]  By Admin.', '2021-01-20 09:09:59', 'Y'),
(731, '145', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 17 ]  By Admin.', '2021-01-20 09:11:49', 'Y'),
(732, '145', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 17 ]  By Admin.', '2021-01-20 09:13:05', 'Y'),
(733, '145', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 17 ]  By Admin.', '2021-01-20 09:13:48', 'Y'),
(734, '145', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 17 ]  By Admin.', '2021-01-20 09:15:20', 'Y'),
(735, '145', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 17 ]  By Admin.', '2021-01-20 09:15:52', 'Y'),
(736, '145', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 17 ]  By Admin.', '2021-01-20 09:17:53', 'Y'),
(737, '145', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 17 ]  By Admin.', '2021-01-20 09:18:08', 'Y'),
(738, '145', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 17 ]  By Admin.', '2021-01-20 09:19:41', 'Y'),
(739, '145', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 17 ]  By Admin.', '2021-01-20 09:20:54', 'Y'),
(740, '145', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 17 ]  By Admin.', '2021-01-20 09:21:58', 'Y'),
(741, '145', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 17 ]  By Admin.', '2021-01-20 09:23:30', 'Y'),
(742, '145', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 17 ]  By Admin.', '2021-01-20 09:24:10', 'Y'),
(743, '145', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 17 ]  By Admin.', '2021-01-20 09:24:36', 'Y'),
(744, '145', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 17 ]  By Admin.', '2021-01-20 09:25:01', 'Y'),
(745, '145', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 17 ]  By Admin.', '2021-01-20 09:25:46', 'Y'),
(746, '146', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 19 ]  By Admin.', '2021-01-20 10:56:46', 'Y'),
(747, '148', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 29 ]  By Admin.', '2021-01-20 10:58:37', 'Y'),
(748, '148', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 29 ]  By Admin.', '2021-01-20 11:38:31', 'Y'),
(749, '148', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 29 ]  By Admin.', '2021-01-21 06:29:32', 'Y'),
(750, '148', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 29 ]  By Admin.', '2021-01-22 09:28:35', 'Y'),
(751, '148', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 29 ]  By Admin.', '2021-01-22 09:34:00', 'Y'),
(752, '148', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 29 ]  By Admin.', '2021-01-22 09:34:00', 'Y'),
(753, '148', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 29 ]  By Admin.', '2021-01-22 09:44:22', 'Y'),
(754, '148', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 29 ]  By Admin.', '2021-01-22 09:45:00', 'Y'),
(755, '148', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 29 ]  By Admin.', '2021-01-22 09:45:22', 'Y'),
(756, '148', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 29 ]  By Admin.', '2021-01-22 09:46:33', 'Y'),
(757, '148', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 29 ]  By Admin.', '2021-01-22 09:46:54', 'Y'),
(758, '148', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 29 ]  By Admin.', '2021-01-22 09:49:19', 'Y'),
(759, '148', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 29 ]  By Admin.', '2021-01-22 09:51:24', 'Y'),
(760, '148', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 29 ]  By Admin.', '2021-01-22 09:52:13', 'Y'),
(761, '148', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 29 ]  By Admin.', '2021-01-22 09:54:30', 'Y'),
(762, '148', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 29 ]  By Admin.', '2021-01-22 09:54:43', 'Y'),
(763, '148', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 29 ]  By Admin.', '2021-01-22 09:56:11', 'Y'),
(764, '148', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 29 ]  By Admin.', '2021-01-22 09:59:21', 'Y'),
(765, '148', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 29 ]  By Admin.', '2021-01-22 10:33:29', 'Y'),
(766, '148', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 29 ]  By Admin.', '2021-01-22 10:35:17', 'Y'),
(767, '148', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 29 ]  By Admin.', '2021-01-22 10:35:47', 'Y'),
(768, '148', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 29 ]  By Admin.', '2021-01-22 10:36:23', 'Y'),
(769, '148', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 29 ]  By Admin.', '2021-01-22 10:36:41', 'Y'),
(770, '148', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 29 ]  By Admin.', '2021-01-22 13:37:56', 'Y'),
(771, '151', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 30. We will get back to you soon.', '2021-01-25 13:14:51', 'Y'),
(772, '151', '1', 'Admin', 'Hi, Your requested event [ ID: 30 ] is Ativated.', '2021-01-25 13:28:18', 'Y'),
(773, '151', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 30 ]  By Admin.', '2021-01-25 13:30:00', 'Y'),
(774, '151', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 31. We will get back to you soon.', '2021-01-25 13:55:46', 'Y'),
(775, '151', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 31 ]  By Admin.', '2021-01-25 14:02:28', 'Y'),
(776, '151', '1', 'Admin', 'Hi, Your requested event [ ID: 31 ] is Ativated.', '2021-01-27 09:49:53', 'Y'),
(777, '152', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 32. We will get back to you soon.', '2021-01-27 10:37:07', 'Y'),
(778, '152', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 32 ]  By Admin.', '2021-01-27 10:45:10', 'Y'),
(779, '152', '1', 'Admin', 'Hi, Your requested event [ ID: 32 ] is Ativated.', '2021-01-27 11:09:53', 'Y'),
(780, '129', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 33. We will get back to you soon.', '2021-01-27 11:15:14', 'Y'),
(781, '129', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 33 ]  By Admin.', '2021-01-27 11:18:00', 'Y'),
(782, '129', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 26. We will get back to you soon.', '2021-01-27 12:10:21', 'Y'),
(783, '151', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 34. We will get back to you soon.', '2021-01-27 13:10:38', 'Y'),
(784, '151', '1', 'Admin', 'Hi, Your requested event [ ID: 34 ] is Ativated.', '2021-01-27 13:23:02', 'Y'),
(785, '151', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 34 ]  By Admin.', '2021-01-27 13:23:49', 'Y'),
(786, '151', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 35. We will get back to you soon.', '2021-01-27 14:06:21', 'Y'),
(787, '151', '1', 'Admin', 'Hi, Your requested event [ ID: 35 ] is Ativated.', '2021-01-27 14:15:27', 'Y'),
(788, '151', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 35 ]  By Admin.', '2021-01-27 14:16:38', 'Y'),
(789, '151', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 36. We will get back to you soon.', '2021-01-27 15:02:37', 'Y'),
(790, '151', '1', 'Admin', 'Hi, Your requested event [ ID: 36 ] is Ativated.', '2021-01-27 15:03:45', 'Y'),
(791, '151', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 36 ]  By Admin.', '2021-01-27 15:05:38', 'Y'),
(792, '151', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 37. We will get back to you soon.', '2021-01-27 16:35:54', 'Y'),
(793, '151', '1', 'Admin', 'Hi, Your requested event [ ID: 37 ] is Ativated.', '2021-01-27 16:36:24', 'Y'),
(794, '151', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 37 ]  By Admin.', '2021-01-27 16:37:53', 'Y'),
(795, '151', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 38. We will get back to you soon.', '2021-01-28 05:17:57', 'Y'),
(796, '151', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 38 ]  By Admin.', '2021-01-28 05:38:35', 'Y'),
(797, '151', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 39. We will get back to you soon.', '2021-01-28 06:25:13', 'Y'),
(798, '151', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 40. We will get back to you soon.', '2021-01-28 06:29:06', 'Y'),
(799, '151', '1', 'Admin', 'Hi, Your requested event [ ID: 40 ] is Ativated.', '2021-01-28 06:29:28', 'Y'),
(800, '151', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 40 ]  By Admin.', '2021-01-28 06:30:28', 'Y'),
(801, '151', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 41. We will get back to you soon.', '2021-01-28 12:56:21', 'Y'),
(802, '151', '1', 'Admin', 'Hi, Your requested event [ ID: 41 ] is Ativated.', '2021-01-28 13:11:59', 'Y'),
(803, '151', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 41 ]  By Admin.', '2021-01-28 13:12:21', 'Y'),
(804, '137', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 42. We will get back to you soon.', '2021-01-28 15:14:35', 'Y'),
(805, '151', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 43. We will get back to you soon.', '2021-01-28 15:31:37', 'Y'),
(806, '151', '1', 'Admin', 'Hi, Your requested event [ ID: 43 ] is Ativated.', '2021-01-28 15:34:15', 'Y'),
(807, '151', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 43 ]  By Admin.', '2021-01-28 15:36:23', 'Y'),
(808, '151', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 43 ]  By Admin.', '2021-01-29 11:44:28', 'Y'),
(809, '151', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 43 ]  By Admin.', '2021-01-29 11:49:32', 'Y'),
(810, '156', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 44. We will get back to you soon.', '2021-02-02 10:25:42', 'Y'),
(811, '166', '1', 'Admin', 'Hi, You have successfully requested for your event. Your request id is 45. We will get back to you soon.', '2021-02-02 14:24:11', 'Y'),
(812, '166', '1', 'Admin', 'Hi, Your requested event [ ID: 45 ] is Ativated.', '2021-02-02 14:25:33', 'Y'),
(813, '166', '1', 'Admin', 'Hi, Invoice Generated for Your event [ ID: 45 ]  By Admin.', '2021-02-02 14:27:09', 'Y');

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
(43, '151', 'Association', NULL, 'Event 28', '1000', '5', '2', '', '', NULL, '9000', 'Teststraat', '3', '0000-00-00 00:00:00', '2021-01-29', '11:00', '2021-01-29', '22:00', '{\"2\":\"10\",\"3\":\"10\",\"4\":\"3\",\"19\":\"2\",\"20\":\"3\",\"21\":\"2\",\"22\":\"4\",\"23\":\"2\"}', '', '20', '', '', '20', '', 91, 8.4, 99.4, NULL, 'Y', 1, '2021-01-28 14:31:37'),
(44, '156', 'Association', 'Test gemeente Gent', 'Muziekevent', '1500', '4', '2', '', '', NULL, '9000', 'Sint-Elisabethplein', '12', '0000-00-00 00:00:00', '2021-02-19', '10:00', '2021-02-20', '22:00', '{\"2\":\"5\",\"4\":\"15\",\"19\":\"10\",\"21\":\"5\"}', '65', '', '', '65', '', '', 916.25, 192.413, 1108.66, NULL, 'N', 0, '2021-02-02 09:25:42'),
(45, '166', 'Association', 'Test vereniging Verko', 'Verko Testbestelling', '2000', '4', '2', '', '', NULL, '9090', 'Eventstraat', '3', '0000-00-00 00:00:00', '2021-02-18', '09:00', '2021-02-27', '07:00', '{\"2\":\"20\",\"3\":\"2\",\"4\":\"4\",\"19\":\"3\",\"20\":\"2\",\"21\":\"3\"}', '65', '', '', '', '20', '', 895, 187.95, 1082.95, NULL, 'Y', 1, '2021-02-02 13:24:11');

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
  `order_time_max_rental_cost_per_product` varchar(300) NOT NULL,
  `order_time_max_wash_cost_per_product` varchar(300) NOT NULL,
  `order_time_max_lost_cost_per_product` varchar(300) NOT NULL,
  `used_cups` varchar(300) NOT NULL,
  `lost_cup` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `order_p_id`, `order_qty`, `order_time_max_rental_cost_per_product`, `order_time_max_wash_cost_per_product`, `order_time_max_lost_cost_per_product`, `used_cups`, `lost_cup`) VALUES
(1, '1', '2', '5', '0,00', '0,00', '0,00', '', ''),
(2, '1', '6', '5', '10,00', '1,00', '0,00', '', ''),
(3, '2', '2', '5', '4,00', '0,00', '0,00', '1', '2'),
(4, '2', '6', '3', '10,00', '1,00', '0,00', '2', '2'),
(5, '3', '2', '5', '0,00', '0,00', '0,00', '', ''),
(6, '3', '6', '3', '10,00', '1,00', '0,00', '', ''),
(7, '4', '1', '2', '0,00', '0,00', '0,00', '', ''),
(8, '4', '2', '2', '0,00', '0,00', '0,00', '', ''),
(9, '4', '3', '1', '0,00', '0,00', '0,00', '', ''),
(10, '4', '4', '2', '0,00', '0,00', '0,00', '', ''),
(11, '4', '6', '1', '10,00', '1,00', '0,00', '', ''),
(12, '5', '1', '10', '0,00', '0,00', '0,00', '', ''),
(13, '5', '2', '10', '0,00', '0,00', '0,00', '', ''),
(14, '5', '3', '10', '0,00', '0,00', '0,00', '', ''),
(15, '6', '6', '2', '10,00', '1,00', '0,00', '', ''),
(16, '7', '1', '2', '0,00', '0,00', '0,00', '1', '1'),
(17, '7', '2', '2', '0,00', '0,00', '0,00', '2', '2'),
(18, '7', '3', '1', '0,00', '0,00', '0,00', '1', '2'),
(19, '7', '4', '3', '0,00', '0,00', '0,00', '2', '3'),
(20, '7', '6', '1', '10,00', '1,00', '0,00', '1', '1'),
(21, '8', '1', '20', '0,00', '0,00', '0,00', '1', '1'),
(22, '8', '2', '20', '0,00', '0,00', '0,00', '1', '1'),
(23, '8', '3', '20', '0,00', '0,00', '0,00', '1', '1'),
(24, '9', '1', '1', '0,00', '0,00', '0,00', '1', '0'),
(25, '9', '2', '2', '0,00', '0,00', '0,00', '2', '0'),
(26, '9', '3', '3', '0,00', '0,00', '0,00', '3', '0'),
(27, '9', '4', '2', '0,00', '0,00', '0,00', '1', '0'),
(28, '9', '6', '3', '10,00', '1,00', '0,00', '2', '0'),
(29, '10', '1', '2', '0,00', '0,00', '0,00', '', ''),
(30, '10', '2', '1', '0,00', '0,00', '0,00', '', ''),
(31, '10', '3', '2', '0,00', '0,00', '0,00', '', ''),
(32, '10', '4', '3', '0,00', '0,00', '0,00', '', ''),
(33, '10', '6', '5', '10,00', '1,00', '0,00', '', ''),
(34, '11', '6', '3', '10,00', '1,00', '0,00', '1', '2'),
(35, '12', '6', '2', '10,00', '1,00', '0,00', '', ''),
(36, '13', '6', '2', '10,00', '1,00', '0,00', '', ''),
(37, '14', '6', '2', '10,00', '1,00', '0,00', '', ''),
(38, '15', '6', '2', '10,03', '16,06', '0,00', '', ''),
(39, '16', '6', '2', '10,03', '16,06', '0,00', '1', '1'),
(40, '17', '1', '2', '0,00', '0,00', '0,00', '1', '0'),
(41, '17', '2', '2', '0,00', '0,00', '0,00', '1', '0'),
(42, '17', '3', '3', '0,00', '0,00', '0,00', '2', '0'),
(43, '17', '4', '2', '0,00', '0,00', '0,00', '2', '0'),
(44, '17', '6', '2', '10,00', '1,00', '0,00', '2', '0'),
(45, '18', '6', '30', '1,00', '1,00', '0,00', '', ''),
(46, '19', '2', '25', '18,00', '10,00', '0,00', '10', '5'),
(47, '19', '3', '11', '4,00', '3,00', '0,00', '0', '0'),
(48, '19', '4', '10', '10,00', '19,00', '0,00', '0', '0'),
(49, '19', '22', '25', '2,00', '2,00', '0,00', '0', '0'),
(50, '19', '23', '5', '1,00', '1,00', '0,00', '0', '0'),
(51, '20', '2', '3', '19,00', '12,00', '0,00', '', ''),
(52, '20', '3', '2', '0,00', '0,00', '0,00', '', ''),
(53, '20', '4', '5', '10,00', '20,00', '0,00', '', ''),
(54, '20', '19', '3', '10,00', '8,00', '0,00', '', ''),
(55, '20', '20', '4', '2,00', '2,00', '0,00', '', ''),
(56, '20', '21', '2', '2,00', '2,00', '0,00', '', ''),
(57, '20', '22', '4', '2,00', '2,00', '0,00', '', ''),
(58, '20', '23', '2', '1,00', '1,00', '0,00', '', ''),
(59, '20', '24', '3', '2,00', '2,00', '0,00', '', ''),
(60, '21', '2', '20', '18,00', '11,00', '0,00', '', ''),
(61, '21', '3', '20', '3,00', '2,00', '0,00', '', ''),
(62, '21', '4', '20', '10,00', '19,00', '0,00', '', ''),
(63, '22', '3', '31', '3,00', '2,00', '0,00', '', ''),
(64, '23', '3', '31', '3,00', '2,00', '0,00', '', ''),
(65, '24', '2', '3', '19,00', '12,00', '0,00', '2', '0'),
(66, '24', '3', '2', '0,00', '0,00', '0,00', '1', '1'),
(67, '24', '4', '2', '10,00', '20,00', '0,00', '1', '0'),
(68, '24', '19', '4', '10,00', '8,00', '0,00', '2', '1'),
(69, '24', '20', '3', '2,00', '2,00', '0,00', '0', '0'),
(70, '24', '21', '1', '2,00', '2,00', '0,00', '1', '1'),
(71, '24', '22', '2', '2,00', '2,00', '0,00', '1', '1'),
(72, '24', '23', '4', '1,00', '1,00', '0,00', '2', '0'),
(73, '24', '24', '1', '2,00', '2,00', '0,00', '1', '0'),
(74, '25', '2', '2', '19,00', '12,00', '0,00', '0', '0'),
(75, '25', '3', '3', '0,00', '0,00', '0,00', '1', '0'),
(76, '25', '4', '3', '11,00', '22,00', '0,00', '1', '0'),
(77, '25', '20', '4', '2,00', '2,00', '0,00', '1', '0'),
(78, '25', '21', '5', '2,00', '2,00', '0,00', '1', '0'),
(79, '26', '2', '10', '19,00', '12,00', '0,00', '6', '0'),
(80, '26', '3', '8', '0,00', '0,00', '0,00', '4', '0'),
(81, '26', '4', '4', '11,00', '22,00', '0,00', '3', '0'),
(82, '26', '19', '2', '10,00', '8,00', '0,00', '2', '0'),
(83, '26', '20', '3', '2,00', '2,00', '0,00', '1', '0'),
(84, '26', '21', '2', '2,00', '2,00', '0,00', '2', '0'),
(85, '26', '22', '2', '2,00', '2,00', '0,00', '2', '2'),
(86, '26', '23', '4', '70,00', '50,00', '0,00', '1', '3'),
(87, '26', '24', '4', '2,00', '2,00', '0,00', '3', '2'),
(88, '27', '3', '10', '3,00', '2,00', '0,00', '6', '3'),
(89, '28', '2', '10', '18,00', '11,00', '0,00', '10', '10'),
(90, '28', '3', '10', '3,00', '2,00', '0,00', '10', '10'),
(91, '29', '3', '10', '3,00', '2,00', '0,00', '1', '3'),
(92, '30', '2', '7', '18,00', '11,00', '0,00', '2', '0'),
(93, '30', '3', '5', '4,00', '3,00', '0,00', '1', '0'),
(94, '30', '4', '7', '10,00', '20,00', '0,00', '2', '2'),
(95, '30', '19', '4', '10,00', '8,00', '0,00', '2', '2'),
(96, '30', '20', '6', '2,00', '2,00', '0,00', '2', '2'),
(97, '30', '21', '3', '2,00', '2,00', '0,00', '3', '2'),
(98, '30', '22', '4', '2,00', '2,00', '0,00', '3', '2'),
(99, '30', '23', '10', '70,00', '50,00', '0,00', '8', '2'),
(100, '30', '24', '2', '2,00', '2,00', '0,00', '2', '2'),
(101, '31', '2', '3', '19,00', '12,00', '1,00', '2', '2'),
(102, '31', '3', '2', '4,00', '3,00', '1,00', '2', '2'),
(103, '31', '4', '4', '11,00', '22,00', '1,00', '3', '0'),
(104, '31', '19', '4', '10,00', '8,00', '0,00', '3', '0'),
(105, '31', '20', '3', '2,00', '2,00', '0,00', '2', '0'),
(106, '31', '21', '4', '2,00', '2,00', '0,00', '4', '0'),
(107, '31', '22', '6', '2,00', '2,00', '0,00', '2', '0'),
(108, '31', '23', '20', '70,00', '50,00', '0,00', '4', '0'),
(109, '31', '24', '10', '2,00', '2,00', '0,00', '8', '0'),
(110, '32', '2', '11', '18,00', '11,00', '1,00', '3', '1'),
(111, '32', '3', '21', '3,00', '2,00', '1,00', '1', '3'),
(112, '33', '2', '11', '18,00', '11,00', '1,00', '3', '1'),
(113, '33', '3', '21', '3,00', '2,00', '1,00', '1', '3'),
(114, '34', '2', '2', '19,00', '12,00', '1,00', '2', '1'),
(115, '34', '3', '1', '4,00', '3,00', '1,00', '1', '1'),
(116, '34', '4', '3', '11,00', '22,00', '1,10', '2', '1'),
(117, '34', '22', '2', '2,00', '2,00', '0,00', '2', '1'),
(118, '34', '23', '1', '1,00', '1,00', '0,00', '1', '1'),
(119, '34', '24', '3', '2,00', '2,00', '0,00', '1', '1'),
(120, '35', '2', '2', '19,00', '12,00', '2,00', '2', '1'),
(121, '35', '3', '1', '4,00', '3,00', '2,00', '1', '1'),
(122, '35', '4', '3', '11', '22', '0,50', '2', '1'),
(123, '35', '22', '2', '2,00', '2,00', '2,00', '2', '1'),
(124, '35', '23', '1', '1,00', '1,00', '1,00', '1', '1'),
(125, '35', '24', '3', '2,00', '2,00', '2,00', '1', '1'),
(126, '36', '2', '2', '19', '12', '2,50', '1', '2'),
(127, '36', '3', '1', '4', '3', '2', '1', '3'),
(128, '36', '4', '4', '11', '22', '0,50', '3', '2'),
(129, '36', '19', '4', '10', '8', '2', '2', '3'),
(130, '36', '20', '3', '2', '2', '2', '2', '2'),
(131, '36', '21', '4', '2', '2', '2', '2', '1'),
(132, '36', '22', '3', '2', '2', '2', '2', '2'),
(133, '36', '23', '2', '1', '1', '1', '1', '3'),
(134, '36', '24', '4', '2', '2', '2', '2', '2'),
(135, '37', '2', '10', '18,50', '11', '2,50', '5', '2'),
(136, '37', '3', '20', '3,5', '2,75', '2', '10', '2'),
(137, '37', '4', '30', '9', '17,50', '0,50', '15', '2'),
(138, '38', '2', '10', '18,50', '11', '2,50', '5', '2'),
(139, '38', '3', '20', '3,5', '2,75', '2', '10', '3'),
(140, '39', '2', '10', '18.50', '11.00', '2,50', '', ''),
(141, '39', '3', '20', '3.50', '2.75', '2,00', '', ''),
(142, '40', '2', '10', '18.50', '11.00', '2,50', '5', '2'),
(143, '40', '3', '20', '3.50', '2.75', '2,00', '10', '2'),
(144, '41', '2', '3', '19.00', '12.00', '2,50', '2', '1'),
(145, '41', '3', '2', '4.00', '3.00', '2,00', '1', '2'),
(146, '41', '4', '3', '11.00', '22.00', '0,50', '2', '1'),
(147, '41', '19', '2', '10.00', '8.00', '2,00', '1', '1'),
(148, '41', '20', '4', '2.00', '2.00', '2,00', '2', '1'),
(149, '41', '21', '2', '2.00', '2.00', '2,00', '2', '3'),
(150, '41', '22', '2', '2.00', '2.00', '2,00', '1', '2'),
(151, '41', '23', '1', '1.00', '1.00', '1,00', '1', '1'),
(152, '41', '24', '4', '2.00', '2.00', '2,00', '3', '1'),
(153, '42', '2', '3', '19.00', '12.00', '2,50', '', ''),
(154, '42', '3', '2', '4.00', '3.00', '2,00', '', ''),
(155, '42', '4', '4', '11.00', '22.00', '1,00', '', ''),
(156, '42', '19', '2', '11.00', '8.00', '2,00', '', ''),
(157, '42', '20', '3', '16.00', '13.00', '1,50', '', ''),
(158, '42', '21', '2', '10.00', '8.00', '1,50', '', ''),
(159, '43', '2', '10', '19.00', '12.00', '2,50', '8', '2'),
(160, '43', '3', '10', '3.50', '2.75', '2,00', '4', '0'),
(161, '43', '4', '3', '11.00', '22.00', '1,00', '3', '10'),
(162, '43', '19', '2', '10.00', '8.00', '2,00', '3', '10'),
(163, '43', '20', '3', '2.00', '2.00', '2,00', '2', '20'),
(164, '43', '21', '2', '2.00', '2.00', '2,00', '2', '2'),
(165, '43', '22', '4', '2.00', '2.00', '2,00', '3', '2'),
(166, '43', '23', '2', '1.00', '1.00', '1,00', '2', '3'),
(167, '44', '2', '5', '18.75', '11.50', '2,50', '', ''),
(168, '44', '4', '15', '10.00', '19.00', '1,00', '', ''),
(169, '44', '19', '10', '10.00', '8.00', '2,00', '', ''),
(170, '44', '21', '5', '2.00', '2.00', '2,00', '', ''),
(171, '45', '2', '20', '18.50', '11.00', '2,50', '15', '10'),
(172, '45', '3', '2', '4.00', '3.00', '2,00', '2', '5'),
(173, '45', '4', '4', '11.00', '22.00', '1,00', '1', '2'),
(174, '45', '19', '3', '10.00', '8.00', '2,00', '3', '0'),
(175, '45', '20', '2', '2.00', '2.00', '2,00', '2', '0'),
(176, '45', '21', '3', '2.00', '2.00', '2,00', '2', '10');

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
(1, '65', '20', '20', '65', '20', '20', '[\"Elk type beker is per kist te huur.\",\"De kisten zijn bij levering verzegeld. Elke geopende kist wordt volledig aangerekend (zowel de huur als de reiniging).\"]', '2021-01-06 07:01:24');

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
(4, 'Over ons', '', 'bio', '2021-01-12 01:01:33'),
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
(18, 'Duurzame food containers', '', 'aanbod', '2021-01-14 08:01:58'),
(19, 'Duurzame reiniging', '', 'aanbod', '2021-01-14 08:01:45'),
(20, 'Duurzame bekers', '', 'aanbod', '2021-01-14 08:01:50'),
(23, 'Contact', '', 'contact', '2020-06-10 05:06:55'),
(24, 'Tarieven', '', 'tarieven', '2020-12-16 09:12:42'),
(25, 'Dashboard ', '', 'user/mijidashboard', '2020-12-17 06:12:45'),
(26, 'Oplossingen op maat', '', 'aanbod', '2021-01-14 08:01:32');

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
(6, '3', '12', '', 3, '2020-06-10 00:06:03'),
(7, '3', '13', '', 4, '2020-06-10 00:06:12'),
(8, '3', '14', '', 5, '2020-06-10 00:06:25'),
(9, '3', '15', '', 6, '2020-06-10 00:06:33'),
(10, '1', '1', '', 0, '2020-06-10 00:06:10'),
(11, '1', '2', '', 1, '2020-06-10 00:06:19'),
(13, '1', '4', '', 3, '2020-06-10 00:06:40'),
(15, '2', '1', '', 0, '2020-06-10 00:06:50'),
(18, '2', '8', '', 3, '2020-06-10 00:06:30'),
(19, '2', '9', '', 4, '2020-06-10 00:06:49'),
(20, '4', '1', '', 0, '2020-06-10 00:06:10'),
(21, '4', '2', '', 1, '2020-06-10 00:06:19'),
(23, '4', '4', '', 3, '2020-06-10 00:06:40'),
(24, '4', '5', '', 4, '2020-06-10 00:06:56'),
(28, '5', '18', '', 1, '2020-06-10 04:06:25'),
(29, '5', '19', '', 2, '2020-06-10 04:06:33'),
(30, '5', '20', '', 3, '2020-06-10 04:06:44'),
(32, '1', '22', '', 4, '2020-06-10 05:06:22'),
(34, '1', '23', '', 4, '2020-06-10 05:06:04'),
(35, '2', '6', '', 1, '2020-06-16 07:06:40'),
(36, '2', '7', '', 2, '2020-06-16 07:06:12'),
(38, '3', '11', '', 2, '2020-06-16 07:06:23'),
(39, '1', '24', '', 5, '2020-11-30 08:11:39'),
(40, '3', '25', '', 1, '2020-12-17 06:12:38'),
(43, '5', '26', '', 4, '2021-01-14 08:01:34');

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
(23, 'new1711@mailinator.com', '18472', '2020-11-17 10:23:41', NULL),
(24, 'gent1234@mailinator.com', '5281', '2020-12-17 08:44:34', NULL),
(25, 'abrahamsparx1@gmail.com', '26734', '2020-12-17 08:44:51', NULL),
(26, 'matthiasrijnwalt25@mailinator.com', '2556', '2021-01-27 08:08:13', NULL),
(27, 'profiwastest@gmail.com', '14738', '2021-01-27 11:18:11', NULL);

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
  `order_by` int(5) NOT NULL DEFAULT 0,
  `p_created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`p_id`, `name`, `material`, `qty`, `box_prc`, `loss_prc`, `wash_prc`, `sort_desc`, `image`, `p_status`, `order_by`, `p_created_at`, `updated_at`) VALUES
(2, 'Wijn, stapelbaar', 'Onbreekbaar glas in polycarbonaat', 140, 4, 1, 0, '22 cl tot aan de rand, glashelder, ideaal voor smaakbeleving, Europese topkwaliteit, 100% recycleerbaar', '1609928196_product_image.png', 'Y', 3, '2020-05-06 10:40:23', '2021-01-28 10:01:17'),
(3, 'Wijn, niet-stapelbaar', 'Onbreekbaar glas van polycarbonaat', 36, 4, 1, 16, '20 cl tot aan de rand, glashelder, ideaal voor smaakbeleving, Europese topkwaliteit, 100% recycleerbaar', '1610378590_product_image.jpg', 'Y', 4, '2020-05-06 10:45:32', '2021-01-28 10:01:23'),
(4, 'Bier en frisdrank, stapelbaar', 'Onbreekbaar glas van polycarbonaat', 280, 5, 1.1, 5.5, '29 cl tot aan de rand, glashelder, ideaal voor smaakbeleving, Europese topkwaliteit, 100% recycleerbaar', '1609928217_product_image.jpg', 'Y', 1, '2020-05-06 10:47:29', '2021-01-28 03:01:38'),
(19, 'Champagne, niet-stapelbaar', 'Onbreekbaar glas van polycarbonaat', 90, 0, 0, 0, '17 cl tot aan de rand, glashelder, ideaal voor smaakbeleving, Europese topkwaliteit, 100% recycleerbaar', '1609929492_product_image.jpg', 'Y', 5, '2021-01-06 10:34:42', '2021-01-28 10:01:52'),
(20, 'Bierglas, geribbeld, stapelbaar', 'Onbreekbaar glas van polycarbonaat', 160, 0, 0, 0, '30 cl tot aan de rand, glashelder, ideaal voor smaakbeleving, Europese topkwaliteit, 100% recycleerbaar', '1609929979_product_image.png', 'Y', 2, '2021-01-06 10:46:19', '2021-01-28 10:01:06'),
(21, 'Cocktails', 'Onbreekbaar glas van polycarbonaat', 96, 0, 0, 0, '35 cl tot aan de rand, glashelder, ideaal voor smaakbeleving, Europese topkwaliteit, 100% recycleerbaar', '1609930381_product_image.png', 'Y', 9, '2021-01-06 10:53:01', '2021-01-28 10:01:53'),
(22, 'Zware bieren', 'Onbreekbaar glas van polycarbonaat', 96, 0, 0, 0, '40 cl tot aan de rand, glashelder, ideaal voor smaakbeleving, Europese topkwaliteit, 100% recycleerbaar', '1609939738_product_image.png', 'Y', 6, '2021-01-06 13:28:58', '2021-01-28 10:01:12'),
(23, 'Handig glaasje voor wijn en koffie', 'Onbreekbaar glas van polycarbonaat', 300, 0, 0, 0, '15 cl tot aan de rand, glashelder, ideaal voor smaakbeleving, Europese topkwaliteit, 100% recycleerbaar', '1609960869_product_image.jpg', 'Y', 7, '2021-01-06 19:21:09', '2021-01-29 02:01:41'),
(24, 'Festivalbeker bier en frisdrank', 'Polypropyleen', 480, 0, 0, 0, '30 cl beker geschikt voor bier en frisdrank op grotere events', '1610103600_product_image.jpeg', 'Y', 8, '2021-01-08 11:00:00', '2021-01-29 02:01:56');

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
(20, '6', '0', 2, '8', '1', '8', 'Y'),
(21, '6', '0', 10, '7,5', '1', '7,5', 'Y'),
(22, '6', '0', 20, '7', '1', '7', 'Y'),
(23, '6', '0', 50, '6,5', '1', '6,5', 'Y'),
(24, '6', '128', 0, '20', '2', '2', 'Y'),
(25, '6', '128', 10, '10', '1', '1', 'Y'),
(26, '6', '128', 20, '5', '0,2', '0,2', 'Y'),
(27, '6', '137', 0, '2', '1', '1', 'Y'),
(28, '6', '137', 10, '1,5', '1', '1', 'Y'),
(29, '4', '0', 0, '11', '1,00', '22', 'Y'),
(30, '4', '0', 5, '10,50', '1,00', '20', 'Y'),
(31, '4', '0', 10, '10', '1,00', '19', 'Y'),
(32, '4', '0', 25, '9', '1,00', '17,50', 'Y'),
(33, '4', '0', 50, '8,5', '1,00', '17', 'Y'),
(34, '3', '0', 0, '4', '2', '3', 'Y'),
(35, '3', '0', 10, '3,5', '2', '2,75', 'Y'),
(36, '3', '0', 25, '3,25', '2', '2,50', 'Y'),
(37, '3', '0', 50, '3', '2', '2,25', 'Y'),
(38, '2', '0', 0, '19', '2,50', '12', 'Y'),
(39, '2', '0', 5, '18,75', '2,50', '11,50', 'Y'),
(40, '2', '0', 10, '18,50', '2,50', '11', 'Y'),
(41, '2', '0', 25, '18,25', '2,50', '10,50', 'Y'),
(42, '19', '0', 0, '11', '2', '8', 'Y'),
(43, '19', '128', 0, '10', '2', '8', 'Y'),
(44, '19', '129', 0, '10', '2', '8', 'Y'),
(45, '19', '137', 0, '10', '2', '8', 'Y'),
(46, '20', '0', 0, '16', '1,50', '13', 'Y'),
(47, '20', '128', 0, '2', '2', '2', 'Y'),
(48, '20', '129', 0, '2', '2', '2', 'Y'),
(49, '20', '137', 0, '2', '2', '2', 'Y'),
(50, '21', '0', 0, '10', '1,50', '8', 'Y'),
(51, '21', '0', 5, '9,75', '1,50', '7,75', 'Y'),
(52, '21', '0', 10, '9,5', '1,50', '7,50', 'Y'),
(53, '21', '0', 25, '9,25', '1,50', '7,25', 'Y'),
(54, '21', '0', 50, '9', '1,50', '7', 'Y'),
(55, '21', '128', 0, '2', '2', '2', 'Y'),
(56, '21', '129', 0, '2', '2', '2', 'Y'),
(57, '21', '137', 0, '2', '2', '2', 'Y'),
(58, '22', '0', 0, '11', '2', '10', 'Y'),
(59, '22', '0', 5, '10,75', '2', '9,75', 'Y'),
(60, '22', '0', 10, '10,50', '2', '9,50', 'Y'),
(61, '22', '0', 25, '10,25', '2', '9,25', 'Y'),
(62, '22', '0', 50, '10', '2', '9', 'Y'),
(63, '22', '0', 100, '9', '2', '7', 'Y'),
(64, '22', '128', 0, '2', '2', '2', 'Y'),
(65, '22', '129', 0, '2', '2', '2', 'Y'),
(66, '22', '137', 0, '2', '2', '2', 'Y'),
(67, '23', '0', 0, '11', '0.50', '8', 'Y'),
(68, '23', '0', 2, '70', '1', '50', 'Y'),
(69, '23', '128', 0, '10', '0.50', '8', 'Y'),
(70, '23', '129', 0, '1', '0.5', '1', 'Y'),
(71, '24', '0', 0, '12,50', '0,50', '32,00', 'Y'),
(72, '24', '0', 10, '12', '0,50', '31,50', 'Y'),
(73, '24', '0', 25, '11,50', '0,50', '31,00', 'Y'),
(74, '24', '0', 50, '10,50', '0,50', '29,50', 'Y'),
(75, '24', '128', 0, '2', '2', '2', 'Y'),
(76, '24', '129', 0, '2', '2', '2', 'Y'),
(77, '24', '137', 0, '2', '2', '2', 'Y'),
(78, '23', '137', 0, '1', '1', '1', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `recommendation`
--

CREATE TABLE `recommendation` (
  `id` int(11) NOT NULL,
  `page_title` varchar(200) DEFAULT NULL,
  `section_img` varchar(200) DEFAULT NULL,
  `section_title` varchar(200) DEFAULT NULL,
  `section_content` mediumtext NOT NULL,
  `create_at` datetime NOT NULL,
  `modify_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `recommendation`
--

INSERT INTO `recommendation` (`id`, `page_title`, `section_img`, `section_title`, `section_content`, `create_at`, `modify_at`) VALUES
(15, 'Aanbevelingen', '15011610741033.jpg', 'Lorem Ipsum is just a dummy text 123', 'Lorem Ipsum is just a dummy text from the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text since the 16th century, when an unknown printer took a typesetter and scrambled them to create one. font catalog. Not only has it survived five centuries, it has also been incorporated, almost unchanged, in electronic typesetting. It gained popularity in the 1960s with the introduction of Letraset sheets containing Lorem Ipsum passages and more recently with desktop publishing software such as Aldus PageMaker containing versions of Lorem Ipsum.', '2021-01-15 19:49:47', '2021-01-28 12:45:04'),
(16, 'Aanbevelingen', '15011610741019.jpg', 'Lorem Ipsum is just a dummy text 1234', 'Lorem Ipsum is just a dummy text from the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text since the 16th century, when an unknown printer took a typesetter and scrambled them to create one. font catalog. Not only has it survived five centuries, it has also been incorporated, almost unchanged, in electronic typesetting. It gained popularity in the 1960s with the introduction of Letraset sheets containing Lorem Ipsum passages and more recently with desktop publishing software such as Aldus PageMaker containing versions of Lorem Ipsum.', '2021-01-15 19:58:24', '2021-01-28 12:45:04'),
(17, 'Aanbevelingen', '15011610741260.jpg', 'Lorem Ipsum is just a dummy text 12345', 'Lorem Ipsum is just a dummy text from the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text since the 16th century, when an unknown printer took a typesetter and scrambled them to create one. font catalog. Not only has it survived five centuries, it has also been incorporated, almost unchanged, in electronic typesetting. It gained popularity in the 1960s with the introduction of Letraset sheets containing Lorem Ipsum passages and more recently with desktop publishing software such as Aldus PageMaker containing versions of Lorem Ipsum.', '2021-01-15 20:00:00', '2021-01-28 12:45:04');

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
  `btw_number` varchar(255) DEFAULT NULL,
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

INSERT INTO `users` (`u_id`, `usertype`, `city_id`, `super_city_id`, `association`, `city_name`, `post_code`, `u_image`, `email`, `username`, `password`, `added_by`, `street`, `number`, `btw_number`, `contact_details`, `f_name`, `name`, `phone`, `gsm`, `contact_email`, `user_created_at`, `updated_at`, `u_status`) VALUES
(1, 'Admin', '', 0, '', '', '', '', 'service@durafest.be', 'admin', '4acb4bc224acbbe3c2bfdcaa39a4324e', 'Admin', '', '', '', '', '', '', '', '', '', '2020-05-03 14:54:19', '0000-00-00 00:00:00', 'Y'),
(3, 'City', '', 129, '', 'Merelbeke', '9820', '', 'nicolas1@mtea.be', '', '25d55ad283aa400af464c76d713c07ad', 'City', NULL, NULL, '', '{\"Voornaam\":[\"Rune\"],\"Naam\":[\"Dewael\"],\"Dienst\":[\"88\"],\"Functie\":[\"00\"],\"Telefoon\":[\"9717129324\"],\"GSM\":[\"yyy\"],\"Emailadres\":[\"nicolas1@mtea.be\"]}', '', '', '', '', '', '2020-04-28 04:18:41', '2020-12-03 11:12:12', 'Y'),
(6, 'Association', '', 0, '5', 'fcbv', '123456', '', 'dg@G.FG', '', '2be9bd7a3434f7038ca27d1918de58bd', 'Association', 'ddf', 'xvv', '', '', 'x g', 'fx ', '4545', '45', '', '2020-05-09 10:26:07', '0000-00-00 00:00:00', 'Y'),
(7, 'Association', '4', 2, '78', 'Waregem', '8790', '1589875005_user_image.jpg', 'sg@fg.fg', '', '96e79218965eb72c92a549dd5a330112', 'Association', 'sdf', 'fdg', 'fdg', '', 'dfg', 'fdg', 'dfg', 'dfg', 'sg@fg.fg', '2020-05-09 10:32:09', '0000-00-00 00:00:00', 'Y'),
(12, 'Association', '', 0, '2', 'test stad', '09090', '', 'ttt@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'dzf', '646464', '', '', 'zdsgv', 'test', '123456', '65695', '', '2020-05-14 18:55:34', '0000-00-00 00:00:00', 'Y'),
(13, 'Association', '2', 0, '8', 'Waregem', '8790', '', 'info@mtea.be', '', '36e7729fd51c90767c3c49004f0b9b37', 'Association', 'zuiderprom', '49', '', '', 'Matthias', 'Matthias Rijnwalt', '047328392', '0493295063', 'info@mtea.be', '2020-05-15 06:47:55', '0000-00-00 00:00:00', 'Y'),
(14, 'Association', '2', 0, '9', 'waregem', '8790', '', 'nicolas@mtea.be', '', '81dc9bdb52d04dc20036dbd8313ed055', 'Association', 'gfd', '2', '', '', 'matthias', 'rijnwa', '038920', '7382', '', '2020-05-15 06:54:42', '0000-00-00 00:00:00', 'Y'),
(15, 'Association', '', 0, '13', 'fdsg', '09090', '', 'gg@hk.df', '', '96e79218965eb72c92a549dd5a330112', 'Association', 'fg', '4545', '', '', 'dsf ', 'fgfg', '24545', '45', '', '2020-05-15 15:28:08', '0000-00-00 00:00:00', 'Y'),
(16, 'City', '', 0, '', 'Gent', '9000', '', 'nicolas@mtea.be', '', 'e10adc3949ba59abbe56e057f20f883e', 'Admin', NULL, NULL, '', '{\"Voornaam\":[\"\"],\"Naam\":[\"\"],\"Dienst\":[\"\"],\"Functie\":[\"\"],\"Telefoon\":[\"\"],\"GSM\":[\"\"],\"Emailadres\":[\"\"]}', '', '', '', '', '', '2020-05-16 07:34:09', '2020-12-22 01:12:13', 'Y'),
(17, 'Association', '16', 0, '16', 'New Delhi', '110091', '', 'abcassociation@test.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'street', '12', '', '', 'Test ', 'Test ', 'Test', 'Test', '', '2020-05-16 07:42:15', '0000-00-00 00:00:00', 'Y'),
(19, 'Association', '18', 2, '17', 'Test City', '700150', '', 'titu@gmail.com', '', '961851a897dcd48b934ae44eb9755a24', 'Association', 'zXsXz', '1234567890', '', '', 'sdfsdfsdf', 'xcvdfvxcv', '5656565656', '535353535', '', '2020-05-16 09:31:42', '0000-00-00 00:00:00', 'Y'),
(20, 'Association', '', 0, '18', 'dfdf', '09090', '', 'hr@gmail.com', '', '96e79218965eb72c92a549dd5a330112', 'Association', 'df', '45435', '', '', 'dfg', 'dfds', '4545', '546', '', '2020-05-16 09:56:04', '0000-00-00 00:00:00', 'Y'),
(21, 'Association', '2', 0, '11', 'waregem', '201014', '', 'df2FY@J.GRF', '', '96e79218965eb72c92a549dd5a330112', 'Association', 'fgh ', '546', '', '', 'vbn', 'fgh', '4545', '45', '', '2020-05-16 18:09:36', '0000-00-00 00:00:00', 'Y'),
(22, 'Association', '18', 2, '20', 'Test City', '700150', '', 'xcfvg@fh.fg', '', '96e79218965eb72c92a549dd5a330112', 'Association', 'rdg', '554', '', '', 'zdsgv', 'admin', '123456', 'we r', '', '2020-05-16 18:30:06', '0000-00-00 00:00:00', 'N'),
(23, 'Association', '2', 0, '21', 'Waregem', '8790', '', 'f@hjg.dg', '', '96e79218965eb72c92a549dd5a330112', 'Association', 'dzf', '654', '', '', 'fgg', 'test', '123456', '23', '', '2020-05-16 18:35:32', '0000-00-00 00:00:00', 'N'),
(24, 'City', '', 129, '', 'Gentbrugge', '9050', '', 'gentb@mailinator.com', '', '25d55ad283aa400af464c76d713c07ad', 'Admin', NULL, NULL, '', '{\"Voornaam\":[\"\"],\"Naam\":[\"\"],\"Dienst\":[\"\"],\"Functie\":[\"\"],\"Telefoon\":[\"\"],\"GSM\":[\"\"],\"Emailadres\":[\"\"]}', '', '', '', '', '', '2020-05-18 04:54:36', '2020-12-03 11:12:06', 'Y'),
(25, 'Association', '24', 0, '', 'Gentbrugge', '9050', '', 'mtea1@mailinator.com', '', '36e7729fd51c90767c3c49004f0b9b37', 'Association', 'test gentbrug', '2', '', '', 'Test', 'achternaam', '03830483830', '093032029839', 'mtea1@mailinator.com', '2020-05-18 05:17:50', '0000-00-00 00:00:00', 'Y'),
(26, 'Association', '24', 0, '87', 'Gentbrugge', '9050', '', 'mtea12@mailinator.com', '', '81dc9bdb52d04dc20036dbd8313ed055', 'Association', 'rtyu', '2', '', '', '56789', '678', '789', '789', 'mtea12@mailinator.com', '2020-05-18 05:19:41', '0000-00-00 00:00:00', 'N'),
(28, 'Association', '24', 0, '', 'Gentbrugge', '9050', NULL, 'mtea123@mailinator.com', '', '81dc9bdb52d04dc20036dbd8313ed055', 'Association', 'straat test', '2', '', '', 'Voornaam ', 'Naam', '038920', '09832', 'mtea123@mailinator.com', '2020-05-20 09:00:11', '0000-00-00 00:00:00', 'Y'),
(29, 'Association', '16', 0, '88', 'Gent', '9000', NULL, 'mtea@mailinator.com', '', '81dc9bdb52d04dc20036dbd8313ed055', 'Association', 'Nieuwe straat', '5', '', '', 'Matthias', 'Rijnwalt', '93829', '892', 'mtea@mailinator.com', '2020-05-20 10:06:59', '0000-00-00 00:00:00', 'N'),
(30, 'Association', '16', 0, '89', 'Gent', '9000', NULL, 'mtea11@mailinator.com', '', '81dc9bdb52d04dc20036dbd8313ed055', 'Association', 'ghjk', '2', '', '', 'frde', 'frde', 'cexz', 'à8', 'mtea11@mailinator.com', '2020-05-20 10:11:55', '0000-00-00 00:00:00', 'N'),
(35, 'Association', '2', 0, '95', 'Waregem', '8790', NULL, 'mtea1234@mailinator.com', '', '36e7729fd51c90767c3c49004f0b9b37', 'Association', 'test', '2', '', '', 'Matthias', 'Rijnwalt', '03920', '89302', 'mtea1234@mailinator.com', '2020-05-24 17:06:28', '0000-00-00 00:00:00', 'Y'),
(36, 'Association', '18', 0, '96', 'Test City 2', '9070', NULL, 'new_test2@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'noida', '20', '', '', 'pradeep', 'kumar', '8383855251', 'no', 'new_test2@gmail.com', '2020-05-25 06:48:59', '0000-00-00 00:00:00', 'Y'),
(37, 'Association', '18', 0, '', 'Test City2', '9070', NULL, 'new2@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'noida', '7503813802', '', '', 'pradeep', 'pradeep', '8383855251', 'no', 'new2@gmail.com', '2020-05-25 07:25:43', '0000-00-00 00:00:00', 'Y'),
(38, 'Association', '2', 0, '97', 'Waregem', '8790', NULL, 'mtea12345@mailinator.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'rty', '21', '', '', 'Nieuw 25', '555', '5555', '555', 'mtea12345@mailinator.com', '2020-05-25 07:46:29', '0000-00-00 00:00:00', 'Y'),
(39, 'Association', '2', 0, '98', 'Waregem', '8790', NULL, 'mtea323@mailinator.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'ghj', '1', '', '', '67', '78', '78', '78', 'mtea323@mailinator.com', '2020-05-25 08:10:06', '0000-00-00 00:00:00', 'Y'),
(40, 'Association', '18', 0, '99', 'Test City2', '9070', NULL, 'pk2@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'noida', '20', '', '', 'pradeep', 'test5', '8383855251', 'no', 'pk2@gmail.com', '2020-05-25 08:17:03', '0000-00-00 00:00:00', 'Y'),
(42, 'Association', '2', 0, '101', 'Waregem', '8790', NULL, 'soumya.dev234@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'Straat_ttt', 'number_ttt', '', '', 'V', 'N', 'T', 'G', 'E', '2020-05-25 13:11:50', '0000-00-00 00:00:00', 'N'),
(43, 'Association', '2', 0, '102', 'Waregem', '8790', NULL, 'mtea222@mailinator.com', '', '81dc9bdb52d04dc20036dbd8313ed055', 'Association', 'Test', '2', '', '', 'Matthias', 'Rijnwalt', '098203', '89028', 'mtea222@mailinator.com', '2020-05-25 13:58:02', '0000-00-00 00:00:00', 'N'),
(44, 'Association', '24', 0, '', 'Gentbrugge', '9050', NULL, 'testcity11@gmail.com', '', '81dc9bdb52d04dc20036dbd8313ed055', 'Association', 'rfd', 'cex', '', '', 'fredz', 'vcx', '09789', '09', 'testcity11@gmail.com', '2020-05-25 14:00:46', '0000-00-00 00:00:00', 'Y'),
(45, 'Association', '24', 0, '103', 'Gentbrugge', '9050', NULL, 'abc@test.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'test', '1', '', '', 'Stephan', 'smith', '9717129324', 'Test', 'abc@test.com', '2020-05-25 14:01:18', '0000-00-00 00:00:00', 'Y'),
(46, 'Association', '18', 0, '104', 'Test City2', '9070', NULL, 'soumya.dev2345@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'S-1', 'N-1', '', '', 'V', 'N', 'T', 'G', 'E', '2020-05-25 14:27:22', '0000-00-00 00:00:00', 'Y'),
(47, 'Association', '18', 0, '', 'Test City2', '9070', NULL, 'soumya.dev123@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'S-77', 'N-77', '', '', 'V', 'N', 'T', 'G', 'E', '2020-05-25 14:29:45', '0000-00-00 00:00:00', 'Y'),
(48, 'Association', '18', 0, '', 'Test City2', '9070', NULL, 'soumya.dev823@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'S-88', 'N-88', '', '', 'V', 'user 1', 'T', 'G', 'E', '2020-05-25 14:31:59', '0000-00-00 00:00:00', 'Y'),
(49, 'Association', '18', 0, '105', 'Test City2', '9070', NULL, 'soumya.dev0123@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'S-99', 'N-99', '', '', 'V', 'N', 'T', 'G', 'E', '2020-05-25 14:33:17', '0000-00-00 00:00:00', 'N'),
(50, 'Association', '18', 0, '106', 'Test City2', '9070', NULL, 'soumya.dev786@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'S-786', 'N-786', '', '', 'V', 'N', 'T', 'G', 'E', '2020-05-25 15:02:40', '0000-00-00 00:00:00', 'N'),
(51, 'Association', '3', 0, '107', 'Merelbeke', '9820', NULL, 'soumya.dev666@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'S-666', 'N-666', '', '', 'V', 'N', 'T', 'G', 'E', '2020-05-25 15:15:34', '0000-00-00 00:00:00', 'N'),
(52, 'Association', '18', 0, '108', 'Test City2', '9070', NULL, 'soumya.dev000@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'S-000', 'N-000', '', '', 'V', 'N', 'T', 'G', 'E', '2020-05-25 15:18:01', '0000-00-00 00:00:00', 'N'),
(53, 'Association', '18', 0, '109', 'Test City2', '9070', NULL, 'soumya.dev000@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'S-000', 'N-000', '', '', 'V', 'N', 'T', 'G', 'E', '2020-05-25 15:21:15', '0000-00-00 00:00:00', 'N'),
(54, 'Association', '2', 0, '110', 'Waregem', '8790', NULL, 'manu1234@mailinator.com', '', '81dc9bdb52d04dc20036dbd8313ed055', 'Association', 'Zuiderlaand', '2', '', '', 'Manu', 'Profiwash', '00000000', '11111111', 'manu1234@mailinator.com', '2020-05-27 06:18:46', '0000-00-00 00:00:00', 'Y'),
(55, 'Association', '2', 0, '111', 'Waregem', '8790', NULL, 'pinki@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'X-11', 'T-11', '', '', 'V', 'N', 'T', 'G', 'E', '2020-05-27 07:36:22', '0000-00-00 00:00:00', 'Y'),
(56, 'Association', '16', 0, '112', 'Gent', '9000', NULL, 'testnew1@gmail.com', '', '33626c0067226387c340035c3a24a319', 'Association', 'Test', '1234567890', '', '', 'Ftjgjjvgjv', 'Ggjkgjoj', '46557777', '5656565656', 'testnew1@gmail.com', '2020-05-27 08:21:44', '0000-00-00 00:00:00', 'N'),
(57, 'Association', '16', 0, '113', 'Gent', '9000', NULL, 'nilam@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'SB-001', 'N-001', '', '', 'V', 'N', 'T', 'G', 'E', '2020-05-27 08:35:51', '0000-00-00 00:00:00', 'N'),
(58, 'Association', '2', 0, '114', 'Waregem', '8790', NULL, 'payel@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'P-999', 'N-999', '', '', 'V', 'N', 'T', 'G', 'E', '2020-05-27 08:42:28', '0000-00-00 00:00:00', 'N'),
(59, 'Association', '16', 0, '115', 'Gent', '9000', NULL, 'merry@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'PY-001', 'NY-001', '', '', 'V', 'N', 'T', 'G', 'E', '2020-05-27 08:52:46', '0000-00-00 00:00:00', 'Y'),
(60, 'Association', '3', 2, '116', 'Merelbeke', '9820', NULL, 'mamuni@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'M-009', 'N-009', '', '', 'V', 'N', 'T', 'G', 'E', '2020-05-27 09:05:50', '0000-00-00 00:00:00', 'Y'),
(61, 'Association', '2', 0, '117', 'Waregem', '8790', NULL, 'mtea3333@mailinator.com', '', '81dc9bdb52d04dc20036dbd8313ed055', 'Association', 'test', 'test', '', '', 'TY', 'TYU', 'YU', 'YU', 'mtea3333@mailinator.com', '2020-05-27 14:10:09', '0000-00-00 00:00:00', 'N'),
(62, 'Association', '2', 0, '118', 'Waregem', '8790', NULL, 'test3333@mailinator.com', '', '81dc9bdb52d04dc20036dbd8313ed055', 'Association', '6783', '2', '', '', '56', 'TYU', 'YU', 'YU', 'test3333@mailinator.com', '2020-05-27 14:13:18', '0000-00-00 00:00:00', 'Y'),
(63, 'Association', '16', 0, '119', 'Gent', '9000', NULL, 'testnew2@gmail.com', '', '961851a897dcd48b934ae44eb9755a24', 'Association', 'hfhfhfh', '1234567899', '', '', 'aSAsaS', 'ASDASDAD', 'CSDCDSCZC', '65656565656', 'testnew2@gmail.com', '2020-05-27 14:38:27', '0000-00-00 00:00:00', 'Y'),
(64, 'Association', '16', 0, '120', 'Gent', '9000', NULL, 'soumyadip@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'SOU', 'NUM', '', '', 'V', 'N', 'T', 'G', 'E', '2020-05-27 14:59:16', '0000-00-00 00:00:00', 'Y'),
(65, 'Association', '2', 0, '121', 'Waregem', '8790', NULL, 'palash@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'Pal', 'PAL1', '', '', 'V', 'N', 'T', 'G', 'E', '2020-05-27 15:06:13', '0000-00-00 00:00:00', 'Y'),
(66, 'Association', '16', 0, '122', 'Gent', '9000', NULL, 'testnew3@gmail.com', '', '81dc9bdb52d04dc20036dbd8313ed055', 'Association', 'Testsgsg', '45r5678898', '', '', 'Hxhdhdhdh', 'Dhdhdhdhd', 'R445544', '12345668907', 'testnew3@gmail.com', '2020-05-28 04:16:26', '0000-00-00 00:00:00', 'N'),
(67, 'Association', '24', 0, '123', 'Gentbrugge', '9050', NULL, 'testdip1@email.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'testt street', '6767', '', '', 'testdip1', 'td1', '1111111111', '2222222222', 'testdip1@email.com', '2020-05-28 04:49:20', '0000-00-00 00:00:00', 'Y'),
(68, 'Association', '24', 0, '124', 'Gentbrugge', '9050', NULL, 'dipa@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'Z-1', 'Z-1', '', '', 'V', 'N', 'T', 'G', 'E', '2020-05-28 05:02:35', '0000-00-00 00:00:00', 'Y'),
(69, 'Association', '18', 0, '125', 'Test City2', '9070', NULL, 'sou@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'PA', 'PA', '', '', 'V', 'N', 'T', 'G', 'E', '2020-05-28 05:11:05', '0000-00-00 00:00:00', 'Y'),
(70, 'Association', '16', 2, '126', 'Ghent', '9000', NULL, 'testdip2@email.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'test street', '1234', '', '', 'testdip2', 'td2', '3333333333', '4444444444', 'testdip2@email.com', '2020-05-28 05:29:05', '0000-00-00 00:00:00', 'Y'),
(71, 'Association', '2', 0, '127', 'Waregem', '8790', NULL, 'demomanu@mailinator.com', '', '81dc9bdb52d04dc20036dbd8313ed055', 'Association', 'Test', '21', '', '', 'Manu', 'Profiwash', '0000000', '000000', 'demomanu@mailinator.com', '2020-05-29 08:11:25', '0000-00-00 00:00:00', 'Y'),
(73, 'Association', '24', 0, '128', 'Gentbrugge', '9050', NULL, 'mtea56@mailinator.com', '', '81dc9bdb52d04dc20036dbd8313ed055', 'Association', 'Test', '123', '', '', 'Matthias', 'Test', '083832', '78289', 'mtea56@mailinator.com', '2020-06-05 07:59:17', '0000-00-00 00:00:00', 'Y'),
(74, 'Association', '24', 0, '129', 'Gentbrugge', '9050', NULL, '906test@mailinator.com', '', '81dc9bdb52d04dc20036dbd8313ed055', 'Association', 'Teststraat', '2', '', '', 'Matthias', 'UIOEJ', '083984392', '83929', '906test@mailinator.com', '2020-06-09 12:48:35', '0000-00-00 00:00:00', 'Y'),
(75, 'Association', '4', 2, '130', 'Waregem', '8790', NULL, 'test1006@mailinator.com', '', '81dc9bdb52d04dc20036dbd8313ed055', 'Association', 'Teststraat ', '23', '', '', 'Test', 'test', '000000', '00000', 'test1006@mailinator.com', '2020-06-10 12:07:25', '0000-00-00 00:00:00', 'Y'),
(76, 'Association', '18', 0, '131', 'Test City2', '9070', NULL, 'soumya.dev23@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'S-15', 'N-15', '', '', 'V', 'N', 'T', 'G', 'E', '2020-06-12 13:44:36', '0000-00-00 00:00:00', 'Y'),
(77, 'Association', '24', 0, '132', 'Gentbrugge', '9050', NULL, 'mamchak007@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'Street', 'Number', '', '', 'V', 'N', 'T', 'G', 'E', '2020-06-17 08:42:57', '0000-00-00 00:00:00', 'Y'),
(78, 'Association', '4', 2, '133', 'Waregem', '8790', NULL, 'soumya@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'S-77', 'N-88', '', '', 'V', 'N', 'T', 'G', 'E', '2020-06-22 07:43:16', '0000-00-00 00:00:00', 'N'),
(79, 'Association', '4', 0, '', 'Waregem', '8790', NULL, 'mtea39430@mailinator.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'Test 2', '3', '', '', 'Matthias', 'rijnwalt', '0830283200', '083293020', 'mtea39430@mailinator.com', '2020-07-13 07:10:26', '0000-00-00 00:00:00', 'Y'),
(80, 'Association', '24', 0, '135', 'Gentbrugge', '9050', NULL, 'eentweedrie@mailinator.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'Teststraat ', '17', '', '', 'Matthias', 'Rijnwalt', '048349383932', '048349383932', 'eentweedrie@mailinator.com', '2020-07-21 10:19:59', '0000-00-00 00:00:00', 'Y'),
(81, 'Association', '3', 2, '136', 'Merelbeke', '9820', NULL, 'test1111@mailinator.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'Nieuwe straat', '23', '', '', 'Matthias', 'Rijnwaltt', '0983943929', '0493295063', 'test1111@mailinator.com', '2020-07-22 07:23:34', '0000-00-00 00:00:00', 'Y'),
(82, 'Association', '16', 2, '', 'Gent', '9000', NULL, 'test@test.com', '', '25f9e794323b453885f5181f1b624d0b', 'Association', 'fvdvb', 'fvds', '', '', 'fsd', 'fd', 'df', '8765432908', 'test@test.com', '2020-07-22 07:57:26', '0000-00-00 00:00:00', 'Y'),
(83, 'Association', '24', 0, '', 'Gentbrugge', '9050', NULL, 'test10@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'ZXDzXzX', '1234567890', '', '', 'ASAsa', 'sdsdsd', '1234567890', '9876543210', 'test20@gmail.com', '2020-07-22 17:31:28', '0000-00-00 00:00:00', 'Y'),
(84, 'Association', '3', 0, '137', 'Merelbeke', '9820', NULL, 'nieuw1122@mailinator.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'NIeuwe test', '32', '', '', 'Test', 'Test', '0938390033', '038399393', 'Nieuw1122@mailinator.com', '2020-07-23 07:09:14', '0000-00-00 00:00:00', 'Y'),
(85, 'Association', '3', 0, '138', 'Merelbeke', '9820', NULL, 'nicolas1@mailinator.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'Straat test', 'Nummer test', '', '', 'Nicolas', 'nicolas 2', '09839320', '0493295062', 'nicolas1@mailinator.com', '2020-07-23 07:55:43', '0000-00-00 00:00:00', 'Y'),
(86, 'Association', '24', 0, '139', 'Gentbrugge', '9050', NULL, 'soumyadip.bhattacharya@inwebinfo.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'SD', 'ND', '', '', 'Dip ', 'Khan', '9007100974', 'GSM', 'soumyadip.bhattacharya@inwebinfo.com', '2020-07-23 16:36:48', '0000-00-00 00:00:00', 'Y'),
(87, 'Association', '24', 0, '140', 'Gentbrugge', '9050', NULL, 'shouvikmaj@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'SP', 'NP', '', '', 'Shouvik', 'Majumdar', '9007100974', 'GSM', 'shouvikmaj@gmail.com', '2020-07-23 16:52:19', '0000-00-00 00:00:00', 'Y'),
(88, 'Association', '3', 0, '141', 'Merelbeke', '9820', NULL, 'ooigem@mailinator.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'teststraat', '23', '', '', 'Matthias', 'Rijnwalt', '03843984930', '09394030384', 'ooigem@mailinator.com', '2020-07-24 06:47:58', '0000-00-00 00:00:00', 'N'),
(89, 'Association', '9', 0, '142', 'Test City', '56546', NULL, 'test@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'ds', '8765432190', '', '', 'acx', '8765432190', '456789', '4567890324', 'test@gmail.com', '2020-07-24 07:57:20', '0000-00-00 00:00:00', 'N'),
(90, 'Association', '3', 0, '', 'Merelbeke', '9820', NULL, 'test@tim.com', '', '81dc9bdb52d04dc20036dbd8313ed055', 'Association', 'yygfhfhgfhgfhfytyryryryryrryr', '9876543210', '', '', 'sef', '9876543210', '23', '32', 'test@tim.com', '2020-07-24 08:01:41', '0000-00-00 00:00:00', 'Y'),
(91, 'Association', '24', 0, '', 'Gentbrugge', '9050', NULL, 'imgrv19@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'G', 'NG', '', '', 'Gourav', 'Gourav', '9007100974', 'GSM', 'imgrv19@gmail.com', '2020-07-27 07:54:12', '0000-00-00 00:00:00', 'Y'),
(100, 'Association', '24', 0, '144', 'Gentbrugge', '9050', NULL, 'peterkhan019@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'S11', 'N11', '', '', 'Dip ', 'user 8', '9007100974', 'GSM', 'peterkhan019@gmail.com', '2020-07-27 09:16:09', '0000-00-00 00:00:00', 'Y'),
(101, 'Association', '16', 2, '145', 'Gent', '9000', NULL, 'sdsf@sd.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'h ioasjd sd ', '646464', '', '', 'df ', 'test name', '4545', 'gredg', 'sdsf@sd.com', '2020-07-27 09:39:40', '0000-00-00 00:00:00', 'N'),
(102, 'Association', '24', 0, '', 'Gentbrugge', '9050', NULL, 'aaa@hkjh.dfh', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'dzf', '646464', '', '', 'vb', 'test', '46546546', 'we r', 'fgv@iu.cs', '2020-07-27 09:40:32', '0000-00-00 00:00:00', 'Y'),
(103, 'Association', '4', 0, '', 'Waregem', '8790', NULL, 'testing12345@gmail.com', '', '81dc9bdb52d04dc20036dbd8313ed055', 'Association', 'Frefgg', '1234567890', '', '', 'Ffg', 'Ffffg', '1234567892', '1234567894', 'ggggg@ggg.com', '2020-07-27 09:48:19', '0000-00-00 00:00:00', 'Y'),
(104, 'Association', '3', 0, '146', 'Merelbeke', '9820', NULL, 'hallo2@mailinator.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'Nieuwe test', '23', '', '', 'Test hallo', 'hallo achtern', '04939493', '049393820', 'hallo2@mailinator.com', '2020-07-27 12:03:09', '0000-00-00 00:00:00', 'Y'),
(105, 'Association', '3', 2, '147', 'Merelbeke', '9820', NULL, 'merelbeke28@mailinator.com', '', '25d55ad283aa400af464c76d713c07ad', 'Association', 'Test merelbeke ', '28', '', '', 'Matthias', 'Rijnwalt', '093849238', '0474731053', 'merelbeke28@mailinator.com', '2020-07-28 08:59:36', '0000-00-00 00:00:00', 'Y'),
(106, 'Association', '3', 2, '148', 'Merelbeke', '9820', NULL, 'merelbeketest@mailinator.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'Teststraat', '3', '', '', 'Matthias', 'Rijnwalt', '09393829', '0000000', 'merelbeketest@mailinator.com', '2020-07-28 11:13:22', '0000-00-00 00:00:00', 'Y'),
(107, 'Association', '4', 0, '', 'Waregem', '8790', NULL, 'testass@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'dasf', '454665', '', '', 'edf', 'dsf', '2355', 'dsf', 'sfd@fh.fg', '2020-08-12 14:38:02', '0000-00-00 00:00:00', 'Y'),
(108, 'Association', '4', 0, '150', 'Waregem', '8790', NULL, 'ass@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'Test str', '2388', '', '', 'Fhb', 'Cvbb', '150', '567', 'ff@ghj.vhh', '2020-08-12 19:44:52', '0000-00-00 00:00:00', 'Y'),
(109, 'Association', '3', 2, '151', 'Merelbeke', '9820', NULL, 'kerkwegel@mailinator.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'Kerkwegel', '23', '', '', 'Matthias', 'Rijnwalt', '0988888', '04999999', 'kerkwegel@mailinator.com', '2020-08-19 11:15:03', '0000-00-00 00:00:00', 'Y'),
(110, 'Association', '4', 0, '152', 'Waregem', '8790', NULL, 'client3@mailinator.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'Kerkwegel', '23', '', '', 'Cleint 3', '00', '0000', '0000', 'client3@mailinator.com', '2020-08-20 15:23:19', '0000-00-00 00:00:00', 'N'),
(111, 'Association', '3', 0, '153', 'Merelbeke', '9820', NULL, 'test123@mailinator.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'Test', '23', '', '', 'Test', 'test', '0383983', '983292', 'test123@mailinator.com', '2020-09-02 06:09:28', '0000-00-00 00:00:00', 'N'),
(112, 'Association', '3', 2, '154', 'Merelbeke', '9820', NULL, 'sluis1@mailinator.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'Sluisstraat', '11', '', '', 'Matthias', 'Rijnwalt', '0494839283', '0494839283', 'sluis1@mailinator.com', '2020-09-07 08:57:29', '0000-00-00 00:00:00', 'Y'),
(113, 'Association', '24', 0, '155', 'Gentbrugge', '9050', NULL, 'test22@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'dzf', '646464', '', '', 'sa', 's', '123456', 'we r', 'sg@fg.fg', '2020-10-19 18:33:23', '0000-00-00 00:00:00', 'Y'),
(114, 'Association', '24', 0, '156', 'Gentbrugge', '9050', NULL, 'test111@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'asda f', '646464', '', '', 'zdsgv', 'admin', '455', '65695', 'test111@gmail.com', '2020-10-19 18:39:00', '0000-00-00 00:00:00', 'Y'),
(115, 'Association', '18', 0, '157', 'Test City2', '9070', NULL, 'test2@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'asda f', '646464', '', '', 'zdsgv', 'admin', '46546546', 'we r', 'test2@gmail.com', '2020-10-19 18:43:24', '0000-00-00 00:00:00', 'N'),
(116, 'Association', '18', 2, '158', 'Test City2', '9070', NULL, 'test3@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'dzf', '646464', '', '', 'zdsgv', 'admin', '123456', 'we r', 'test3@gmail.com', '2020-10-19 18:47:29', '0000-00-00 00:00:00', 'Y'),
(117, 'Association', '18', 0, '159', 'Test City2', '9070', NULL, 'test4@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'dzf', '646464', '', '', 'vb', 'test', '46546546', 'we r', 'test4@gmail.com', '2020-10-20 10:25:03', '0000-00-00 00:00:00', 'Y'),
(118, 'Association', '24', 0, '160', 'Gentbrugge', '9050', NULL, 'test24@gmail.com', '', '961851a897dcd48b934ae44eb9755a24', 'Association', 'Test', '1234567890', '', '', 'Test24', 'Sparx', '1234567890', '9876543212', 'test24@gmail.com', '2020-10-21 06:55:30', '0000-00-00 00:00:00', 'Y'),
(119, 'Association', '24', 0, '161', 'Gentbrugge', '9050', NULL, 'test25@gmail.com', '', '96f3206f529f94c8490b2ac1fe5ce498', 'Association', 'test25', '1234567890', '', '', 'Test25', 'title ', '1234567890', '9876543216', 'test25@gmail.com', '2020-10-21 08:17:04', '0000-00-00 00:00:00', 'Y'),
(122, 'Association', '4', 0, '162', 'Waregem', '8790', NULL, 'test15@mailinator.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'Sluisstraat', '17', '', '', 'Matthias', 'Rijnwalt', '049499494993', '938399499393', 'test15@mailinator.com', '2020-11-15 15:15:09', '0000-00-00 00:00:00', 'Y'),
(123, 'Association', '18', 0, '163', 'Test City2', '9070', NULL, 'test20@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'Test', '6291432537', '', '', 'Abraham', 'Jones ', '1234567895', '1234567894', 'test20@gmail.com', '2020-11-15 16:19:36', '0000-00-00 00:00:00', 'Y'),
(124, 'Association', '4', 0, '164', 'Waregem', '8790', NULL, 'test1611@mailinator.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'Test', '2', '', '', 'tes', 'test', 'test', 'tes', 'test1611@mailinator.com', '2020-11-16 10:26:54', '0000-00-00 00:00:00', 'Y'),
(125, 'Association', '4', 0, '165', 'Waregem', '8790', NULL, 'new1711@mailinator.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'Test', '3', '', '', 'Test', 'test', 'test', 'test', 'new1711@mailinator.com', '2020-11-17 10:11:48', '0000-00-00 00:00:00', 'Y'),
(126, 'Association', '3', 0, '166', 'Merelbeke', '9820', NULL, 'new1811@mailinator.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', '5TEy', 'yez', '', '', 'tes', 'tet', 'tes', 'test', 'new1811@mailinator.com', '2020-11-17 10:18:19', '0000-00-00 00:00:00', 'Y'),
(127, 'Association', '18', 0, '167', 'Test City2', '9070', NULL, 'test30@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'ahahahah', '1234567895', '', '', 'Abraham', 'Jones`', '1234567898', '1234567898', 'test30@gmail.com', '2020-11-17 10:29:34', '0000-00-00 00:00:00', 'Y'),
(128, 'Super_City', '', 0, '', 'Supercity3', '', NULL, 'info@mtea.be', '', '81dc9bdb52d04dc20036dbd8313ed055', 'Admin', NULL, NULL, '', '{\"Voornaam\":[\"tes\"],\"Naam\":[\"test\"],\"Dienst\":[\"tes\"],\"Functie\":[\"test\"],\"Telefoon\":[\"tes\"],\"GSM\":[\"tes\"],\"Emailadres\":[\"info@mtea.be\"]}', '', '', '', '', '', '2020-11-17 10:56:58', '2020-12-21 01:12:36', 'Y'),
(129, 'Super_City', '', 0, '', 'Supercity2', '', NULL, 'IGEAN@mailinator.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Admin', NULL, NULL, '', '{\"Voornaam\":[\"\"],\"Naam\":[\"\"],\"Dienst\":[\"\"],\"Functie\":[\"\"],\"Telefoon\":[\"\"],\"GSM\":[\"\"],\"Emailadres\":[\"\"]}', '', '', '', '', '', '2020-11-24 13:26:05', '2020-12-21 01:12:29', 'Y'),
(130, 'Association', '24', 0, '168', 'Gentbrugge', '9050', NULL, 'profiwash@mailinator.com', '', '25d55ad283aa400af464c76d713c07ad', 'Association', 'Kerkwegel', '23', '', '', 'tes', 'test', 'test', 'tes', 'profiwash@mailinator.com', '2020-12-01 11:01:37', '0000-00-00 00:00:00', 'Y'),
(131, 'Association', '4', 0, '169', 'Waregem', '8790', NULL, 'naam@mailinator.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'Test23', '12', '', '', 'naaam', 'naam', '0990', '092', 'naam@mailinator.com', '2020-12-02 09:58:32', '0000-00-00 00:00:00', 'Y'),
(134, 'Association', '16', 0, '170', 'Gent', '9000', NULL, 'kerkwegel22@mailinator.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'Kerkwegel ', '33', '', '', 'Matthias', 'Rijnwalt', '04748493', '04748493', 'kerkwegel22@mailinator.com', '2020-12-16 08:01:22', '0000-00-00 00:00:00', 'Y'),
(135, 'Association', '16', 0, '171', 'Gent', '9000', NULL, 'kerkwegel222@mailinator.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'Test straat', '23', '', '', 'Mattthias', 'test', '08329398', '93820', 'kerkwegel222@mailinator.com', '2020-12-16 09:34:47', '0000-00-00 00:00:00', 'Y'),
(136, 'Association', '24', 0, '172', 'Gentbrugge', '9050', NULL, 'testmat16@mailinator.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'Test straat', '1', '', '', 'test', 'tets', '03829832', '0983922', 'testmat16@mailinator.com', '2020-12-16 22:15:40', '0000-00-00 00:00:00', 'Y'),
(137, 'Super_City', '', 0, '', 'VERKO', '', NULL, 'verko@mailinator.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Admin', NULL, NULL, '', '{\"Voornaam\":[\"Johan\"],\"Naam\":[\"Verrue\"],\"Dienst\":[\"Milieu\"],\"Functie\":[\"beheerder\"],\"Telefoon\":[\"\"],\"GSM\":[\"\"],\"Emailadres\":[\"johan@durafest.be\"]}', '', '', '', '', '', '2020-12-17 05:55:19', '2021-02-02 10:02:56', 'Y'),
(138, 'Association', '16', 0, '173', 'Ghent', '9000', NULL, 'abrahamsparx1@gmail.com', '', '1a022fc1593c852a822d7e427f11b5e2', 'Association', 'Test ', '1234567895', '', '', 'Abraham', 'Jones', '1234567895', '5434657534', 'abrahamsparx1@gmail.com', '2020-12-17 07:10:36', '0000-00-00 00:00:00', 'Y'),
(139, 'Association', '16', 0, '174', 'Gent', '9000', NULL, 'gent1234@mailinator.com', '', 'fcea920f7412b5da7be0cf42b8c93759', 'Association', 'Gent', '392', '', '', 'Matthias', 'rijnwal', '9320', '9209', 'gent1234@mailinator.com', '2020-12-17 08:30:13', '0000-00-00 00:00:00', 'Y'),
(140, 'Association', '24', 0, '175', 'Gentbrugge', '9050', NULL, 'mteatest12@mailinator.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'straat est', '22', '', '', 'test', 'test', '°0932', '983', 'mteatest12@mailinator.com', '2020-12-17 08:32:46', '0000-00-00 00:00:00', 'Y'),
(141, 'Association', '16', 0, '176', 'Ghent', '9000', NULL, 'profiwash.text@gmail.com', '', '47ec2dd791e31e2ef2076caf64ed9b3d', 'Association', 'Test Street', '1234567896', '', '', 'Profiwash', 'Test', '1234567896', '1234567895', 'profiwash.text@gmail.com', '2020-12-17 11:43:55', '0000-00-00 00:00:00', 'Y'),
(142, 'Association', '16', 0, '177', 'Gent', '9000', NULL, 'mteagcv@mailinator.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'Kerkweg', '23', '', '', 'Mat', 'thias', '0930283', '093290', 'mteagcv@mailinator.com', '2020-12-18 15:23:20', '0000-00-00 00:00:00', 'Y'),
(143, 'Association', '16', 0, '178', 'Ghent', '9000', NULL, 'testassociation18@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'Test Street 18', '9231341229', '', '', 'Test ', 'Association18', '9231341229', '9231341242', 'testassociation18@gmail.com', '2020-12-18 16:47:12', '0000-00-00 00:00:00', 'Y'),
(144, 'Association', '16', 0, '179', 'Ghent', '9000', NULL, 'jenny.sparxit@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'tst', '1236547896', '', '', 'Test dev', 'tst dv', '0000000000', 'we r', 'jenny.sparxit@gmail.com', '2020-12-21 05:40:56', '0000-00-00 00:00:00', 'Y'),
(145, 'Association', '16', 0, '180', 'Gent', '9000', NULL, 'testfinaal@mailinator.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'testfinaal', '2', '', '', 'Test', 'finaal', '03920932', '0920392', 'testfinaal@mailinator.com', '2020-12-21 10:42:04', '0000-00-00 00:00:00', 'Y'),
(146, 'Association', '16', 0, '181', 'Gent', '9000', NULL, 'johan@durafest.be', '', 'e1d7f37f31b82cc65c1893aad88bd9d7', 'Association', 'Burgstraat', '112', '', '', 'Johan', 'Verrue', '0472985637', '0472985637', 'johan@durafest.be', '2021-01-04 08:43:41', '0000-00-00 00:00:00', 'Y'),
(147, 'Association', '16', 0, '182', 'Gent', '9000', NULL, 'tesklantmtea@mailinator.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'Kekrwegel', '23', '', '', 'Matthias', 'Rijnwalt', '0843839', '938292', 'tesklantmtea@mailinator.com', '2021-01-08 13:51:17', '0000-00-00 00:00:00', 'Y'),
(148, 'Association', '16', 0, '183', 'Ghent', '9000', NULL, 'abrahamsparx1@gmail.com', '', '42e3e4c9b1e57db8c1a6ed81ff1810bb', 'Association', 'Test Street', '172', '1234', '', 'Test', 'User', '1234567897', '1234567898', 'abrahamsparx1@gmail.com', '2021-01-15 05:00:53', '0000-00-00 00:00:00', 'Y'),
(149, 'Association', '16', 0, '184', 'Gent', '9000', NULL, 'cocacolatest@mailinator.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'Coca cola straat', '3', '', '', 'Voornaam test coa', 'achternaam', '0484839393', '9389439', 'cocacolatest@mailinator.com', '2021-01-16 09:28:45', '0000-00-00 00:00:00', 'Y'),
(150, 'Association', '16', 0, '185', 'Gent', '9000', NULL, 'mteagcv1@mailinator.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'mtea straat ', '11', '', '', 'Matthias', 'Rijnwalt', '0936394738', '048394839', 'mteagcv1@mailinator.com', '2021-01-19 08:19:09', '0000-00-00 00:00:00', 'Y'),
(151, 'Association', '16', 0, '186', 'Gent', '9000', NULL, 'matthiasrijnwalt25@mailinator.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'Matthias rijnwalt 25 straat ', '25', 'BE04938403843', '', 'Matthias', 'Rijnwalt', '056665656', '0493295063', 'matthiasrijnwalt25@mailinator.com', '2021-01-25 12:11:16', '0000-00-00 00:00:00', 'Y'),
(152, 'Association', '24', 0, '187', 'Gentbrugge', '9050', NULL, 'profiwastest@gmail.com', '', '42e3e4c9b1e57db8c1a6ed81ff1810bb', 'Association', 'Test Street', '180', NULL, '', 'Test ', 'Account', '1234567891', '1234567892', 'profiwastest@gmail.com', '2021-01-27 09:34:22', '0000-00-00 00:00:00', 'Y'),
(154, 'Association', '16', 0, '188', 'Gent', '9000', NULL, 'matthiasrijnwalt28@mailinator.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'sluisstraat ', '11', NULL, '', 'matthiasrijnwalt28@mailinator.com', 'Matthias', '0937383', '047483843', 'matthiasrijnwalt28@mailinator.com', '2021-01-28 14:16:33', '0000-00-00 00:00:00', 'Y'),
(155, 'City', '', 0, '', 'Wielsbeke', '8710', NULL, 'wielsbeke@mailinator.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Admin', NULL, NULL, NULL, '{\"Voornaam\":[\"\"],\"Naam\":[\"\"],\"Dienst\":[\"\"],\"Functie\":[\"\"],\"Telefoon\":[\"\"],\"GSM\":[\"\"],\"Emailadres\":[\"\"]}', '', '', '', '', '', '2021-02-02 08:58:01', '0000-00-00 00:00:00', 'Y'),
(156, 'Association', '16', 0, '189', 'Gent', '9000', NULL, 'johan@originalcupkeeper.com', '', 'e1d7f37f31b82cc65c1893aad88bd9d7', 'Association', 'Burgstraat', '112', NULL, '', 'Johan', 'Verrue', '+32472985637', '0472985637', 'johan@originalcupkeeper.com', '2021-02-02 09:23:26', '0000-00-00 00:00:00', 'Y'),
(157, 'City', '', 137, '', 'Berlare', '9290', NULL, 'berlare@mailinator.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Admin', NULL, NULL, NULL, '{\"Voornaam\":[\"\"],\"Naam\":[\"\"],\"Dienst\":[\"\"],\"Functie\":[\"\"],\"Telefoon\":[\"\"],\"GSM\":[\"\"],\"Emailadres\":[\"\"]}', '', '', '', '', '', '2021-02-02 10:26:55', '0000-00-00 00:00:00', 'Y'),
(158, 'City', '', 137, '', 'Buggenhout', '9255', NULL, 'buggenhout@mailinator.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Admin', NULL, NULL, NULL, '{\"Voornaam\":[\"\"],\"Naam\":[\"\"],\"Dienst\":[\"\"],\"Functie\":[\"\"],\"Telefoon\":[\"\"],\"GSM\":[\"\"],\"Emailadres\":[\"\"]}', '', '', '', '', '', '2021-02-02 10:27:29', '0000-00-00 00:00:00', 'Y'),
(159, 'City', '', 137, '', 'Dendermonde', '9200', NULL, 'dendermonde@mailinator.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Admin', NULL, NULL, NULL, '{\"Voornaam\":[\"\"],\"Naam\":[\"\"],\"Dienst\":[\"\"],\"Functie\":[\"\"],\"Telefoon\":[\"\"],\"GSM\":[\"\"],\"Emailadres\":[\"\"]}', '', '', '', '', '', '2021-02-02 10:27:52', '0000-00-00 00:00:00', 'Y'),
(160, 'City', '', 137, '', 'Hamme', '9220', NULL, 'hamme@mailinator.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Admin', NULL, NULL, NULL, '{\"Voornaam\":[\"\"],\"Naam\":[\"\"],\"Dienst\":[\"\"],\"Functie\":[\"\"],\"Telefoon\":[\"\"],\"GSM\":[\"\"],\"Emailadres\":[\"\"]}', '', '', '', '', '', '2021-02-02 10:28:19', '0000-00-00 00:00:00', 'Y'),
(161, 'City', '', 137, '', 'Laarne', '9270', NULL, 'laarne@mailinator.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Admin', NULL, NULL, NULL, '{\"Voornaam\":[\"\"],\"Naam\":[\"\"],\"Dienst\":[\"\"],\"Functie\":[\"\"],\"Telefoon\":[\"\"],\"GSM\":[\"\"],\"Emailadres\":[\"\"]}', '', '', '', '', '', '2021-02-02 10:28:44', '0000-00-00 00:00:00', 'Y'),
(162, 'City', '', 137, '', 'Lebbeke', '9280', NULL, 'lebbeke@mailinator.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Admin', NULL, NULL, NULL, '{\"Voornaam\":[\"\"],\"Naam\":[\"\"],\"Dienst\":[\"\"],\"Functie\":[\"\"],\"Telefoon\":[\"\"],\"GSM\":[\"\"],\"Emailadres\":[\"\"]}', '', '', '', '', '', '2021-02-02 10:29:09', '0000-00-00 00:00:00', 'Y'),
(163, 'City', '', 137, '', 'Melle', '9090', NULL, 'melle@mailinator.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Admin', NULL, NULL, NULL, '{\"Voornaam\":[\"\"],\"Naam\":[\"\"],\"Dienst\":[\"\"],\"Functie\":[\"\"],\"Telefoon\":[\"\"],\"GSM\":[\"\"],\"Emailadres\":[\"\"]}', '', '', '', '', '', '2021-02-02 10:29:24', '0000-00-00 00:00:00', 'Y'),
(164, 'City', '', 137, '', 'Wetteren', '9230', NULL, 'wetteren@mailinator.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Admin', NULL, NULL, NULL, '{\"Voornaam\":[\"\"],\"Naam\":[\"\"],\"Dienst\":[\"\"],\"Functie\":[\"\"],\"Telefoon\":[\"\"],\"GSM\":[\"\"],\"Emailadres\":[\"\"]}', '', '', '', '', '', '2021-02-02 10:29:47', '0000-00-00 00:00:00', 'Y'),
(165, 'City', '', 137, '', 'Wichelen', '9260', NULL, 'wichelen@mailinator.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Admin', NULL, NULL, NULL, '{\"Voornaam\":[\"\"],\"Naam\":[\"\"],\"Dienst\":[\"\"],\"Functie\":[\"\"],\"Telefoon\":[\"\"],\"GSM\":[\"\"],\"Emailadres\":[\"\"]}', '', '', '', '', '', '2021-02-02 10:30:12', '0000-00-00 00:00:00', 'Y'),
(166, 'Association', '163', 0, '190', 'Melle', '9090', NULL, 'verkotest@mailinator.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Association', 'Brusselsesteenweg', '26', NULL, '', 'Matthias', 'Rijnwalt', '056666666', '048948439', 'verkotest@mailinator.com', '2021-02-02 13:16:53', '0000-00-00 00:00:00', 'Y');

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
(188, '16', 'Association', '9000', 'Test 28/01', '2021-01-28 14:16:33', '0000-00-00 00:00:00', 'Y'),
(189, '16', 'Association', '9000', 'Test gemeente Gent', '2021-02-02 09:23:26', '0000-00-00 00:00:00', 'Y'),
(190, '163', 'Association', '9090', 'Test vereniging Verko', '2021-02-02 13:16:52', '0000-00-00 00:00:00', 'Y');

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
(24, '4', 'City', '2020-08-21 00:00:00', 9090, 0, 454665, '{\"1\":\"2\",\"2\":\"1\",\"4\":\"2\"}', '', '', '20.10', '', '', 'Gratis', ' 39.1', 'Y', '2020-08-19 10:30:41'),
(25, '137', 'City', '2021-01-23 00:00:00', 9000, 0, 3, '{\"2\":\"2\",\"3\":\"3\",\"4\":\"1\",\"19\":\"2\"}', '', '20', '', '65', '', '', ' 138.5', 'Y', '2021-01-16 11:03:44'),
(26, '129', 'City', '2021-01-29 00:00:00', 9050, 0, 45435, '{\"2\":\"2\",\"3\":\"2\",\"4\":\"2\",\"19\":\"2\"}', '', '', '', '65', '', '', ' 108', 'Y', '2021-01-27 11:10:20');

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
(67, '24', '4', '2'),
(68, '25', '2', '2'),
(69, '25', '3', '3'),
(70, '25', '4', '1'),
(71, '25', '19', '2'),
(72, '26', '2', '2'),
(73, '26', '3', '2'),
(74, '26', '4', '2'),
(75, '26', '19', '2');

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
-- Indexes for table `recommendation`
--
ALTER TABLE `recommendation`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=814;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=177;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `page_by_menu`
--
ALTER TABLE `page_by_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `password_otp`
--
ALTER TABLE `password_otp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `product_price_by_city`
--
ALTER TABLE `product_price_by_city`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `recommendation`
--
ALTER TABLE `recommendation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `subscribed`
--
ALTER TABLE `subscribed`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;

--
-- AUTO_INCREMENT for table `verenigings`
--
ALTER TABLE `verenigings`
  MODIFY `v_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=191;

--
-- AUTO_INCREMENT for table `wash_order`
--
ALTER TABLE `wash_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `wash_order_items`
--
ALTER TABLE `wash_order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
