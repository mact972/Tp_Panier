-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Lun 18 Mai 2015 à 22:28
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `bonbon`
--

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE IF NOT EXISTS `produit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(30) COLLATE latin1_bin NOT NULL,
  `prix` decimal(10,2) NOT NULL,
  `photo` varchar(30) COLLATE latin1_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COLLATE=latin1_bin AUTO_INCREMENT=23 ;

--
-- Contenu de la table `produit`
--

INSERT INTO `produit` (`id`, `nom`, `prix`, `photo`) VALUES
(1, 'bananes', '0.48', 'Images/bananes.jpg'),
(3, 'chamallow', '0.48', 'Images/chamallow.jpg'),
(4, 'coca', '0.48', 'Images/coca.jpg'),
(5, 'colorado', '0.48', 'Images/colorado.jpg'),
(6, 'fruikipik', '0.55', 'Images/fruikipik.jpg'),
(7, 'dragibus', '0.48', 'Images/dragibus.jpg'),
(8, 'dragolo', '0.48', 'Images/dragolo.jpg'),
(9, 'world', '0.48', 'Images/world.jpg'),
(10, 'happy', '0.48', 'Images/happy.jpg'),
(11, 'melange', '0.48', 'Images/melange.jpg'),
(12, 'miami', '0.48', 'Images/miami.jpg'),
(13, 'nounours', '0.48', 'Images/nounours.jpg'),
(14, 'oeufs', '0.48', 'Images/oeufs.jpg'),
(15, 'orangina', '0.48', 'Images/orangina.jpg'),
(16, 'rainbow', '0.48', 'Images/rainbow.jpg'),
(17, 'shtroumpf', '0.48', 'Images/shtroumpf.jpg'),
(18, 'tagada', '0.48', 'Images/tagada.jpg'),
(19, 'frites', '0.45', 'Images/frites.jpg'),
(20, 'carensac', '0.55', 'Images/carensac.jpg'),
(22, 'reglisses', '0.53', 'Images/reglisse.jpg');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
