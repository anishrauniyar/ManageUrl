-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 30, 2015 at 02:19 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `manage_url`
--

-- --------------------------------------------------------

--
-- Table structure for table `category_table`
--

CREATE TABLE IF NOT EXISTS `category_table` (
  `UID` int(50) NOT NULL,
  `Category` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `url_category_table`
--

CREATE TABLE IF NOT EXISTS `url_category_table` (
  `UID` int(50) NOT NULL,
  `Category` varchar(1000) NOT NULL,
  `URL` varchar(2000) NOT NULL,
  `Date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `url_category_table`
--

INSERT INTO `url_category_table` (`UID`, `Category`, `URL`, `Date`) VALUES
(21036, 'Social Networking ', 'www.fb.com', '2014-12-22 00:00:00.000000'),
(21036, 'Social Networking ', 'www.twitter.com', '2014-12-22 00:00:00.000000'),
(43551, 'Education ', 'http://www.w3schools.com/css/css_image_transparency.asp', '2014-12-24 10:16:18.000000'),
(43551, 'Education ', 'http://www.w3schools.com/css/css_margin.asp', '2014-12-24 10:16:42.000000'),
(43551, 'Computers & Technology,Education,Forums & Newsgroups ', 'http://stackoverflow.com/questions/2779554/css-auto-height-on-containing-div-100-height-on-background-div-inside-contain', '2014-12-24 10:40:36.000000'),
(43551, 'Unknown ', 'www.sagarpathak.com.np', '2014-12-24 14:49:41.000000'),
(43551, 'Business ', 'www.roomstyler.com', '2014-12-24 14:50:51.000000'),
(43551, 'Travel ', 'www.planefinder.net/flight', '2014-12-24 14:51:51.000000'),
(43551, 'Job Search ', 'www.merojobs.com', '2014-12-24 14:52:16.000000'),
(43551, 'Job Search ', 'www.freshersworld.com', '2014-12-24 14:52:46.000000'),
(43551, 'Shopping ', 'www.hamrobazar.com', '2014-12-24 14:53:30.000000'),
(43551, 'Shopping ', 'www.flipkart.com', '2014-12-24 14:53:48.000000'),
(43551, 'Shopping ', 'www.giftnp.com', '2014-12-26 13:22:55.000000'),
(43551, 'Finance ', 'http://money.howstuffworks.com/business-communications/how-to-leverage-an-api-for-conferencing2.htm', '2014-12-26 15:32:44.000000'),
(43551, 'Job Search ', 'http://www.veriskit.com/#vithome', '2014-12-30 15:12:07.000000'),
(43551, 'Education ', 'http://www.w3schools.com/css/css_align.asp', '2014-12-30 15:13:55.000000'),
(43551, 'Search Engines & Portals ', 'http://www.bing.com', '2015-01-02 10:43:57.000000'),
(43551, 'Social Networking ', 'http://www.plus.google.com', '2015-01-02 10:53:03.000000'),
(43551, 'Unknown ', 'http://www.anishrauniyar.com.np', '2015-01-02 10:56:26.000000'),
(43551, 'News,Entertainment ', 'http://www.ekantipur.com', '2015-01-02 11:17:39.000000'),
(43551, 'Computers & Technology,Education ', 'http://www.w3schools.com', '2015-01-02 11:27:38.000000'),
(43551, 'Social Networking ', 'http://www.twitter.com', '2015-01-30 17:28:22.000000'),
(43551, 'Computers & Technology,Education,Forums & Newsgroups ', 'http://www.stackoverflow.com', '2015-01-15 17:28:22.000000'),
(43551, 'Entertainment,Streaming Media & Downloads ', 'http://www.youtube.com', '2015-01-16 14:34:14.000000'),
(43551, 'Social Networking ', 'http://www.linkedin.com', '2015-01-16 14:43:39.000000'),
(43551, 'Computers & Technology,Education,Forums & Newsgroups ', 'http://stackoverflow.com/questions/1370868/eclipse-debugger-doesnt-stop-at-breakpoint', '2015-01-30 17:32:25.000000'),
(43551, 'Computers & Technology ', 'http://www.github.com', '2015-01-30 17:33:01.000000'),
(43551, 'Computers & Technology,Education,Forums & Newsgroups ', 'http://stackoverflow.com/questions/5071040/java-convert-integer-to-string', '2015-01-30 17:54:09.000000'),
(43551, 'Computers & Technology ', 'http://docs.oracle.com/javaee/6/tutorial/doc/gjbbp.html', '2015-01-30 17:59:07.000000'),
(43551, 'Computers & Technology ', 'http://www.computerworld.com/article/2502891/business-intelligence/business-intelligence-8-cool-tools-for-data-analysis-visualization-and-presentation.html', '2015-10-28 11:16:33.000000'),
(62375, 'Education ', 'https://www.writing.wisc.edu/Handbook/BusinessLetter.html', '2015-10-28 13:44:16.000000'),
(43551, 'Business ', 'https://vdi.veriskhealth.com/vpn/index.html', '2015-10-30 10:08:58.000000');

-- --------------------------------------------------------

--
-- Table structure for table `url_search_table`
--

CREATE TABLE IF NOT EXISTS `url_search_table` (
  `UID` int(50) NOT NULL,
  `Keyword` varchar(1000) NOT NULL,
  `URL` varchar(2000) NOT NULL,
  `Date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `url_search_table`
--

INSERT INTO `url_search_table` (`UID`, `Keyword`, `URL`, `Date`) VALUES
(43551, 'youtube ', 'www.youtube.com', '2014-12-22 00:00:00'),
(43551, 'you tube ', 'www.youtube.com', '2014-12-22 00:00:00'),
(43551, 'yt ', 'www.youtube.com', '2014-12-22 00:00:00'),
(43551, 'you ', 'www.youtube.com', '2014-12-22 00:00:00'),
(43551, 'ÙŠÙˆØªÙŠÙˆØ¨ ', 'www.youtube.com', '2014-12-22 00:00:00'),
(43551, 'fb.com ', 'www.fb.com', '2014-12-22 00:00:00'),
(43551, 'face book ', 'www.fb.com', '2014-12-22 00:00:00'),
(43551, 'facebook ', 'www.fb.com', '2014-12-22 00:00:00'),
(43551, 'fb login ', 'www.fb.com', '2014-12-22 00:00:00'),
(43551, 'facbook ', 'www.fb.com', '2014-12-22 00:00:00'),
(43551, 'kantipur ', 'www.ekantipur.com', '2014-12-22 00:00:00'),
(43551, 'the kathmandu post ', 'www.ekantipur.com', '2014-12-22 00:00:00'),
(43551, 'nepali news ', 'www.ekantipur.com', '2014-12-22 00:00:00'),
(43551, 'nepal news ', 'www.ekantipur.com', '2014-12-22 00:00:00'),
(43551, 'kantipur daily ', 'www.ekantipur.com', '2014-12-22 00:00:00'),
(21036, 'fb.com ', 'www.fb.com', '2014-12-22 00:00:00'),
(21036, 'face book ', 'www.fb.com', '2014-12-22 00:00:00'),
(21036, 'facebook ', 'www.fb.com', '2014-12-22 00:00:00'),
(21036, 'fb login ', 'www.fb.com', '2014-12-22 00:00:00'),
(21036, 'facbook ', 'www.fb.com', '2014-12-22 00:00:00'),
(21036, 'twitter ', 'www.twitter.com', '2014-12-22 00:00:00'),
(21036, 'mailchimp ', 'www.twitter.com', '2014-12-22 00:00:00'),
(21036, 'marca ', 'www.twitter.com', '2014-12-22 00:00:00'),
(21036, 'cnn ', 'www.twitter.com', '2014-12-22 00:00:00'),
(21036, 'themeforest ', 'www.twitter.com', '2014-12-22 00:00:00'),
(43551, 'background ', 'http://www.w3schools.com/php/php_date.asp', '2014-12-22 00:00:00'),
(43551, 'javascript ', 'http://www.w3schools.com/php/php_date.asp', '2014-12-22 00:00:00'),
(43551, 'html ', 'http://www.w3schools.com/php/php_date.asp', '2014-12-22 00:00:00'),
(43551, 'jquery ', 'http://www.w3schools.com/php/php_date.asp', '2014-12-22 00:00:00'),
(43551, 'iframe ', 'http://www.w3schools.com/php/php_date.asp', '2014-12-22 00:00:00'),
(43551, 'background ', 'http://www.w3schools.com/css/css_image_transparency.asp', '2014-12-24 10:16:18'),
(43551, 'javascript ', 'http://www.w3schools.com/css/css_image_transparency.asp', '2014-12-24 10:16:18'),
(43551, 'html ', 'http://www.w3schools.com/css/css_image_transparency.asp', '2014-12-24 10:16:18'),
(43551, 'jquery ', 'http://www.w3schools.com/css/css_image_transparency.asp', '2014-12-24 10:16:18'),
(43551, 'iframe ', 'http://www.w3schools.com/css/css_image_transparency.asp', '2014-12-24 10:16:18'),
(43551, 'background ', 'http://www.w3schools.com/css/css_margin.asp', '2014-12-24 10:16:42'),
(43551, 'javascript ', 'http://www.w3schools.com/css/css_margin.asp', '2014-12-24 10:16:42'),
(43551, 'html ', 'http://www.w3schools.com/css/css_margin.asp', '2014-12-24 10:16:42'),
(43551, 'jquery ', 'http://www.w3schools.com/css/css_margin.asp', '2014-12-24 10:16:42'),
(43551, 'iframe ', 'http://www.w3schools.com/css/css_margin.asp', '2014-12-24 10:16:42'),
(43551, 'uncaught typeerror: undefined is not a function ', 'http://stackoverflow.com/questions/2779554/css-auto-height-on-containing-div-100-height-on-background-div-inside-contain', '2014-12-24 10:40:36'),
(43551, 'favicon size ', 'http://stackoverflow.com/questions/2779554/css-auto-height-on-containing-div-100-height-on-background-div-inside-contain', '2014-12-24 10:40:36'),
(43551, 'html redirect ', 'http://stackoverflow.com/questions/2779554/css-auto-height-on-containing-div-100-height-on-background-div-inside-contain', '2014-12-24 10:40:36'),
(43551, 'jquery checkbox checked ', 'http://stackoverflow.com/questions/2779554/css-auto-height-on-containing-div-100-height-on-background-div-inside-contain', '2014-12-24 10:40:36'),
(43551, 'javascript redirect ', 'http://stackoverflow.com/questions/2779554/css-auto-height-on-containing-div-100-height-on-background-div-inside-contain', '2014-12-24 10:40:36'),
(43551, 'facebook ', 'www.facebook.com', '2014-12-24 14:41:23'),
(43551, 'fb ', 'www.facebook.com', '2014-12-24 14:41:23'),
(43551, 'face ', 'www.facebook.com', '2014-12-24 14:41:23'),
(43551, 'ÙÙŠØ³ Ø¨ÙˆÙƒ ', 'www.facebook.com', '2014-12-24 14:41:23'),
(43551, 'www.facebook.com ', 'www.facebook.com', '2014-12-24 14:41:23'),
(43551, '3d room ', 'www.roomstyler.com', '2014-12-24 14:50:51'),
(43551, 'mydeco ', 'www.roomstyler.com', '2014-12-24 14:50:51'),
(43551, 'my deco 3d room planner ', 'www.roomstyler.com', '2014-12-24 14:50:51'),
(43551, 'my deco ', 'www.roomstyler.com', '2014-12-24 14:50:51'),
(43551, 'room 3d ', 'www.roomstyler.com', '2014-12-24 14:50:51'),
(43551, 'flight radar ', 'www.planefinder.net/flight', '2014-12-24 14:51:51'),
(43551, 'plane finder ', 'www.planefinder.net/flight', '2014-12-24 14:51:51'),
(43551, 'sia26 ', 'www.planefinder.net/flight', '2014-12-24 14:51:51'),
(43551, 'flight tracker ', 'www.planefinder.net/flight', '2014-12-24 14:51:51'),
(43551, 'radar flight ', 'www.planefinder.net/flight', '2014-12-24 14:51:51'),
(43551, 'freshersworld ', 'www.freshersworld.com', '2014-12-24 14:52:46'),
(43551, 'gate 2015 ', 'www.freshersworld.com', '2014-12-24 14:52:46'),
(43551, 'govt jobs ', 'www.freshersworld.com', '2014-12-24 14:52:46'),
(43551, 'government jobs ', 'www.freshersworld.com', '2014-12-24 14:52:46'),
(43551, 'freshers jobs ', 'www.freshersworld.com', '2014-12-24 14:52:46'),
(43551, 'hamrobazar ', 'www.hamrobazar.com', '2014-12-24 14:53:30'),
(43551, 'ask me bazar.com ', 'www.hamrobazar.com', '2014-12-24 14:53:30'),
(43551, 'hamrobajar ', 'www.hamrobazar.com', '2014-12-24 14:53:30'),
(43551, 'hamrobazaar ', 'www.hamrobazar.com', '2014-12-24 14:53:30'),
(43551, 'ham ', 'www.hamrobazar.com', '2014-12-24 14:53:30'),
(43551, 'flipkart ', 'www.flipkart.com', '2014-12-24 14:53:48'),
(43551, 'rk narayan ', 'www.flipkart.com', '2014-12-24 14:53:48'),
(43551, 'online shopping ', 'www.flipkart.com', '2014-12-24 14:53:48'),
(43551, 'flipkart coupons ', 'www.flipkart.com', '2014-12-24 14:53:48'),
(43551, 'apple india ', 'www.flipkart.com', '2014-12-24 14:53:48'),
(43551, 'google finance ', 'http://money.howstuffworks.com/business-communications/how-to-leverage-an-api-for-conferencing2.htm', '2014-12-26 15:32:44'),
(43551, 'how ', 'http://money.howstuffworks.com/business-communications/how-to-leverage-an-api-for-conferencing2.htm', '2014-12-26 15:32:44'),
(43551, 'vpn ', 'http://money.howstuffworks.com/business-communications/how-to-leverage-an-api-for-conferencing2.htm', '2014-12-26 15:32:44'),
(43551, 'ip address ', 'http://money.howstuffworks.com/business-communications/how-to-leverage-an-api-for-conferencing2.htm', '2014-12-26 15:32:44'),
(43551, 'algorithm ', 'http://money.howstuffworks.com/business-communications/how-to-leverage-an-api-for-conferencing2.htm', '2014-12-26 15:32:44'),
(43551, 'verisk information technologies ', 'http://www.veriskit.com/#vithome', '2014-12-30 15:12:07'),
(43551, 'd2hawkeye ', 'http://www.veriskit.com/#vithome', '2014-12-30 15:12:07'),
(43551, 'verisk health ', 'http://www.veriskit.com/#vithome', '2014-12-30 15:12:07'),
(43551, 'verisk ', 'http://www.veriskit.com/#vithome', '2014-12-30 15:12:07'),
(43551, 'technologies ', 'http://www.veriskit.com/#vithome', '2014-12-30 15:12:07'),
(43551, 'background ', 'http://www.w3schools.com/css/css_align.asp', '2014-12-30 15:13:55'),
(43551, 'javascript ', 'http://www.w3schools.com/css/css_align.asp', '2014-12-30 15:13:55'),
(43551, 'html ', 'http://www.w3schools.com/css/css_align.asp', '2014-12-30 15:13:55'),
(43551, 'jquery ', 'http://www.w3schools.com/css/css_align.asp', '2014-12-30 15:13:55'),
(43551, 'iframe ', 'http://www.w3schools.com/css/css_align.asp', '2014-12-30 15:13:55'),
(43551, 'kantipur ', 'http://www.ekantipur.com', '2014-12-30 15:21:57'),
(43551, 'the kathmandu post ', 'http://www.ekantipur.com', '2014-12-30 15:21:57'),
(43551, 'nepali news ', 'http://www.ekantipur.com', '2014-12-30 15:21:57'),
(43551, 'nepal news ', 'http://www.ekantipur.com', '2014-12-30 15:21:57'),
(43551, 'kantipur daily ', 'http://www.ekantipur.com', '2014-12-30 15:21:57'),
(43551, 'bing ', 'http://www.bing.com', '2015-01-02 10:43:57'),
(43551, 'google ', 'http://www.bing.com', '2015-01-02 10:43:57'),
(43551, 'youtube ', 'http://www.bing.com', '2015-01-02 10:43:57'),
(43551, 'facebook ', 'http://www.bing.com', '2015-01-02 10:43:57'),
(43551, 'maps ', 'http://www.bing.com', '2015-01-02 10:43:57'),
(43551, 'kantipur ', 'http://www.ekantipur.com', '2015-01-02 11:17:39'),
(43551, 'the kathmandu post ', 'http://www.ekantipur.com', '2015-01-02 11:17:39'),
(43551, 'nepali news ', 'http://www.ekantipur.com', '2015-01-02 11:17:39'),
(43551, 'nepal news ', 'http://www.ekantipur.com', '2015-01-02 11:17:39'),
(43551, 'kantipur daily ', 'http://www.ekantipur.com', '2015-01-02 11:17:39'),
(43551, 'background ', 'http://www.w3schools.com', '2015-01-02 11:27:38'),
(43551, 'javascript ', 'http://www.w3schools.com', '2015-01-02 11:27:38'),
(43551, 'html ', 'http://www.w3schools.com', '2015-01-02 11:27:38'),
(43551, 'jquery ', 'http://www.w3schools.com', '2015-01-02 11:27:38'),
(43551, 'iframe ', 'http://www.w3schools.com', '2015-01-02 11:27:38'),
(43551, 'twitter ', 'http://www.twitter.com', '2015-01-06 15:52:28'),
(43551, 'mailchimp ', 'http://www.twitter.com', '2015-01-06 15:52:28'),
(43551, 'marca ', 'http://www.twitter.com', '2015-01-06 15:52:28'),
(43551, 'cnn ', 'http://www.twitter.com', '2015-01-06 15:52:28'),
(43551, 'themeforest ', 'http://www.twitter.com', '2015-01-06 15:52:28'),
(43551, 'uncaught typeerror: undefined is not a function ', 'http://www.stackoverflow.com', '2015-01-15 15:45:44'),
(43551, 'favicon size ', 'http://www.stackoverflow.com', '2015-01-15 15:45:44'),
(43551, 'html redirect ', 'http://www.stackoverflow.com', '2015-01-15 15:45:44'),
(43551, 'jquery checkbox checked ', 'http://www.stackoverflow.com', '2015-01-15 15:45:44'),
(43551, 'javascript redirect ', 'http://www.stackoverflow.com', '2015-01-15 15:45:44'),
(43551, 'youtube ', 'http://www.youtube.com', '2015-01-16 14:34:14'),
(43551, 'you tube ', 'http://www.youtube.com', '2015-01-16 14:34:14'),
(43551, 'yt ', 'http://www.youtube.com', '2015-01-16 14:34:14'),
(43551, 'you ', 'http://www.youtube.com', '2015-01-16 14:34:14'),
(43551, 'ÙŠÙˆØªÙŠÙˆØ¨ ', 'http://www.youtube.com', '2015-01-16 14:34:14'),
(43551, 'uncaught typeerror: undefined is not a function ', 'http://stackoverflow.com/questions/1370868/eclipse-debugger-doesnt-stop-at-breakpoint', '2015-01-30 17:31:17'),
(43551, 'favicon size ', 'http://stackoverflow.com/questions/1370868/eclipse-debugger-doesnt-stop-at-breakpoint', '2015-01-30 17:31:17'),
(43551, 'html redirect ', 'http://stackoverflow.com/questions/1370868/eclipse-debugger-doesnt-stop-at-breakpoint', '2015-01-30 17:31:17'),
(43551, 'jquery checkbox checked ', 'http://stackoverflow.com/questions/1370868/eclipse-debugger-doesnt-stop-at-breakpoint', '2015-01-30 17:31:17'),
(43551, 'javascript redirect ', 'http://stackoverflow.com/questions/1370868/eclipse-debugger-doesnt-stop-at-breakpoint', '2015-01-30 17:31:17'),
(43551, 'bootstrap ', 'http://www.github.com', '2015-01-30 17:32:47'),
(43551, 'font awesome ', 'http://www.github.com', '2015-01-30 17:32:47'),
(43551, 'laravel ', 'http://www.github.com', '2015-01-30 17:32:47'),
(43551, 'github ', 'http://www.github.com', '2015-01-30 17:32:47'),
(43551, 'fontawesome ', 'http://www.github.com', '2015-01-30 17:32:47'),
(43551, 'uncaught typeerror: undefined is not a function ', 'http://stackoverflow.com/questions/5071040/java-convert-integer-to-string', '2015-01-30 17:54:09'),
(43551, 'favicon size ', 'http://stackoverflow.com/questions/5071040/java-convert-integer-to-string', '2015-01-30 17:54:09'),
(43551, 'html redirect ', 'http://stackoverflow.com/questions/5071040/java-convert-integer-to-string', '2015-01-30 17:54:09'),
(43551, 'jquery checkbox checked ', 'http://stackoverflow.com/questions/5071040/java-convert-integer-to-string', '2015-01-30 17:54:09'),
(43551, 'javascript redirect ', 'http://stackoverflow.com/questions/5071040/java-convert-integer-to-string', '2015-01-30 17:54:09'),
(43551, 'oracle ', 'http://docs.oracle.com/javaee/6/tutorial/doc/gjbbp.html', '2015-01-30 17:59:07'),
(43551, 'virtualbox ', 'http://docs.oracle.com/javaee/6/tutorial/doc/gjbbp.html', '2015-01-30 17:59:07'),
(43551, 'java ', 'http://docs.oracle.com/javaee/6/tutorial/doc/gjbbp.html', '2015-01-30 17:59:07'),
(43551, 'jdk ', 'http://docs.oracle.com/javaee/6/tutorial/doc/gjbbp.html', '2015-01-30 17:59:07'),
(43551, 'java jdk ', 'http://docs.oracle.com/javaee/6/tutorial/doc/gjbbp.html', '2015-01-30 17:59:07'),
(43551, 'firefox ', 'http://www.computerworld.com/article/2502891/business-intelligence/business-intelligence-8-cool-tools-for-data-analysis-visualization-and-presentation.html', '2015-10-28 11:16:33'),
(43551, 'windows 10 release date ', 'http://www.computerworld.com/article/2502891/business-intelligence/business-intelligence-8-cool-tools-for-data-analysis-visualization-and-presentation.html', '2015-10-28 11:16:33'),
(43551, 'gmail ', 'http://www.computerworld.com/article/2502891/business-intelligence/business-intelligence-8-cool-tools-for-data-analysis-visualization-and-presentation.html', '2015-10-28 11:16:33'),
(43551, 'evernote vs onenote ', 'http://www.computerworld.com/article/2502891/business-intelligence/business-intelligence-8-cool-tools-for-data-analysis-visualization-and-presentation.html', '2015-10-28 11:16:33'),
(43551, 'windows 10 rtm ', 'http://www.computerworld.com/article/2502891/business-intelligence/business-intelligence-8-cool-tools-for-data-analysis-visualization-and-presentation.html', '2015-10-28 11:16:33'),
(43551, 'kantipur ', 'http://www.ekantipur.com/', '2015-10-28 11:23:32'),
(43551, 'kantipur daily ', 'http://www.ekantipur.com/', '2015-10-28 11:23:32'),
(43551, 'kantipur news ', 'http://www.ekantipur.com/', '2015-10-28 11:23:32'),
(43551, 'ekantipur ', 'http://www.ekantipur.com/', '2015-10-28 11:23:32'),
(43551, 'ekantipur.np ', 'http://www.ekantipur.com/', '2015-10-28 11:23:32'),
(62375, 'business letter format ', 'https://www.writing.wisc.edu/Handbook/BusinessLetter.html', '2015-10-28 13:44:16'),
(62375, 'how to write a cover letter ', 'https://www.writing.wisc.edu/Handbook/BusinessLetter.html', '2015-10-28 13:44:16'),
(62375, 'letter format ', 'https://www.writing.wisc.edu/Handbook/BusinessLetter.html', '2015-10-28 13:44:16'),
(62375, 'wecan ', 'https://www.writing.wisc.edu/Handbook/BusinessLetter.html', '2015-10-28 13:44:16'),
(62375, 'university of wisconsin ', 'https://www.writing.wisc.edu/Handbook/BusinessLetter.html', '2015-10-28 13:44:16'),
(17830, 'google ', 'https://www.google.com.np/', '2015-10-28 14:18:20'),
(17830, 'www.facebook.com ', 'https://www.google.com.np/', '2015-10-28 14:18:20'),
(17830, 'google adsense ', 'https://www.google.com.np/', '2015-10-28 14:18:20'),
(17830, 'google.com ', 'https://www.google.com.np/', '2015-10-28 14:18:20'),
(17830, 'google nepal ', 'https://www.google.com.np/', '2015-10-28 14:18:20'),
(43551, 'verisk ', 'https://vdi.veriskhealth.com/vpn/index.html', '2015-10-30 10:08:58'),
(43551, 'verisk health ', 'https://vdi.veriskhealth.com/vpn/index.html', '2015-10-30 10:08:58'),
(43551, 'hedis ', 'https://vdi.veriskhealth.com/vpn/index.html', '2015-10-30 10:08:58'),
(43551, 'd2hawkeye ', 'https://vdi.veriskhealth.com/vpn/index.html', '2015-10-30 10:08:58'),
(43551, 'verisk health nepal ', 'https://vdi.veriskhealth.com/vpn/index.html', '2015-10-30 10:08:58');

-- --------------------------------------------------------

--
-- Table structure for table `url_table`
--

CREATE TABLE IF NOT EXISTS `url_table` (
  `UID` int(50) NOT NULL,
  `URL` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `url_title_table`
--

CREATE TABLE IF NOT EXISTS `url_title_table` (
  `UID` int(50) NOT NULL,
  `URL` varchar(2000) NOT NULL,
  `Title` varchar(2000) NOT NULL,
  `Date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `url_title_table`
--

INSERT INTO `url_title_table` (`UID`, `URL`, `Title`, `Date`) VALUES
(43551, 'http://www.bing.com', 'Bing', '0000-00-00 00:00:00.000000'),
(43551, 'http://www.plus.google.com', 'Google+', '0000-00-00 00:00:00.000000'),
(43551, 'http://www.anishrauniyar.com.np', 'Tech Blog | Just another WordPress site', '0000-00-00 00:00:00.000000'),
(43551, 'http://www.w3schools.com', 'W3Schools Online Web Tutorials', '0000-00-00 00:00:00.000000'),
(43551, 'http://www.asdlkfj.com', 'Parked Domains ', '0000-00-00 00:00:00.000000'),
(43551, 'http://www.twitter.com', 'Welcome to Twitter - Login or Sign up', '2015-01-06 15:52:28.000000'),
(43551, 'http://www.stackoverflow.com', 'Stack Overflow', '2015-01-15 15:45:44.000000'),
(43551, 'http://www.youtube.com', 'YouTube', '2015-01-16 14:34:14.000000'),
(43551, 'http://stackoverflow.com/questions/1370868/eclipse-debugger-doesnt-stop-at-breakpoint', 'java - Eclipse - debugger doesn&#39;t stop at breakpoint - Stack Overflow', '2015-01-30 17:31:17.000000'),
(43551, 'http://www.github.com', 'GitHub Â· Build software better, together.', '2015-01-30 17:32:47.000000'),
(43551, 'http://stackoverflow.com/questions/5071040/java-convert-integer-to-string', 'Java - Convert integer to string - Stack Overflow', '2015-01-30 17:54:09.000000'),
(43551, 'http://docs.oracle.com/javaee/6/tutorial/doc/gjbbp.html', 'Adding Setter and Getter Methods - The Java EE 6 Tutorial', '2015-01-30 17:59:07.000000'),
(43551, 'http://www.computerworld.com/article/2502891/business-intelligence/business-intelligence-8-cool-tools-for-data-analysis-visualization-and-presentation.html', '8 cool tools for data analysis, visualization and presentation | Computerworld', '2015-10-28 11:16:33.000000'),
(43551, 'http://www.ekantipur.com/', 'ekantipur :: Nepali online news and articles. Kantipur Media Group - Kantipur, Kathmandu-post, Saptahik, Nepal, Nari', '2015-10-28 11:23:32.000000'),
(62375, 'https://www.writing.wisc.edu/Handbook/BusinessLetter.html', 'How to Write a Business Letter', '2015-10-28 13:44:16.000000'),
(17830, 'https://www.google.com.np/', 'Google', '2015-10-28 14:18:20.000000'),
(43551, 'https://vdi.veriskhealth.com/vpn/index.html', 'Citrix Access Gateway', '2015-10-30 10:08:58.000000');

-- --------------------------------------------------------

--
-- Table structure for table `user_table`
--

CREATE TABLE IF NOT EXISTS `user_table` (
  `UID` int(50) NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `MiddleName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `UserName` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Date` datetime NOT NULL,
  PRIMARY KEY (`UID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_table`
--

INSERT INTO `user_table` (`UID`, `FirstName`, `MiddleName`, `LastName`, `UserName`, `Password`, `Email`, `Date`) VALUES
(11962, 'Arbind', 'Kumar', 'Rauniyar', 'arbind', 'arbind', 'arbind@gmail.com', '2015-01-05 13:23:50'),
(17830, 'Bhuwan', 'Prasad', 'Upadhyay', 'adminb', 'adminb', 'a@gmail.com', '2015-10-28 14:16:31'),
(21036, 'Hari', '', 'Maharjan', 'hari', 'hari', 'hari@gmail.com', '2014-12-22 00:00:00'),
(23410, 'Ashish', 'Raj', 'Gautam', 'ashish', 'ashish', 'ashish@gmail.com', '0000-00-00 00:00:00'),
(35313, 'Hello', '', 'Man', 'hello', 'man', 'man@gmail.com', '2014-12-26 11:55:50'),
(43551, 'Sunny', 'Singh', 'Suwal', 'sunny', 'sunny', 'sunny@gmail.com', '0000-00-00 00:00:00'),
(48136, 'Anish', '', 'Rauniyar', 'anishrony', 'anish', 'stan.rony@gmail.com', '0000-00-00 00:00:00'),
(60310, 'Bimal', '', 'Gharti Magar', 'bgm', 'bimal123bimal', 'bgmagar@veriskhealth.com', '0000-00-00 00:00:00'),
(62375, 'Anish', '', 'Rauniyar', 'anish', 'anish', 'anrauniyar@veriskhealth.com', '2015-10-28 13:42:38'),
(78469, 'Santosh', '', 'Rauniyar', 'santosh', 'santosh', 'santosh@gmail.com', '2014-12-26 11:58:00'),
(79109, 'Papu', '', 'Rauniyar', 'papur', 'papu', 'papu@gmail.com', '2015-01-05 13:25:02'),
(80558, 'manoj', '', 'rauniyar', 'manoj', 'manoj', 'manoj@gmail.com', '2014-12-26 11:59:26');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
