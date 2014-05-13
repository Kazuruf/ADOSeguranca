-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 13-Maio-2014 às 16:39
-- Versão do servidor: 5.6.16
-- PHP Version: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `test`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `test_multi_sets`()
    DETERMINISTIC
begin
        select user() as first_col;
        select user() as first_col, now() as second_col;
        select user() as first_col, now() as second_col, now() as third_col;
        end$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `acao`
--

CREATE TABLE IF NOT EXISTS `acao` (
  `id_acao` int(11) NOT NULL AUTO_INCREMENT,
  `acao` varchar(200) NOT NULL,
  PRIMARY KEY (`id_acao`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `dados_usuario`
--

CREATE TABLE IF NOT EXISTS `dados_usuario` (
  `Id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `telefone` int(11) NOT NULL,
  `Id_privilegio` int(11) NOT NULL,
  `lembrete_senha1` varchar(50) NOT NULL,
  `lembrete_senha2` varchar(50) NOT NULL,
  `Id_pergunta_1` int(11) NOT NULL,
  `Id_pergunta_2` int(11) NOT NULL,
  `codigo` varchar(200) NOT NULL,
  PRIMARY KEY (`Id_usuario`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Extraindo dados da tabela `dados_usuario`
--

INSERT INTO `dados_usuario` (`Id_usuario`, `nome`, `email`, `telefone`, `Id_privilegio`, `lembrete_senha1`, `lembrete_senha2`, `Id_pergunta_1`, `Id_pergunta_2`, `codigo`) VALUES
(9, 'Gabriel Felix Gomes', 'gabrielfelixgomes1@gmail.com', 2147483647, 0, 'nina', 'spfc', 0, 0, '3e43e9b515e5de65a88e5b11231ddb58757129f81623f697a612d8c7f4c40cc2'),
(10, 'Danilo', 'danilo@cuzao.com', 24242424, 0, '', '', 0, 0, '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `hierarquia`
--

CREATE TABLE IF NOT EXISTS `hierarquia` (
  `Id_previlegio` int(11) NOT NULL AUTO_INCREMENT,
  `descrição` varchar(30) NOT NULL,
  PRIMARY KEY (`Id_previlegio`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `logs`
--

CREATE TABLE IF NOT EXISTS `logs` (
  `Id_usuario` int(11) NOT NULL,
  `Id_acao` int(11) NOT NULL,
  `ip` varchar(50) NOT NULL,
  `dat_atualizacao` varchar(50) NOT NULL,
  PRIMARY KEY (`Id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `paginas`
--

CREATE TABLE IF NOT EXISTS `paginas` (
  `Id_pagina` int(11) NOT NULL AUTO_INCREMENT,
  `descrição` varchar(30) NOT NULL,
  PRIMARY KEY (`Id_pagina`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pergunta`
--

CREATE TABLE IF NOT EXISTS `pergunta` (
  `Id_pergunta` int(11) NOT NULL AUTO_INCREMENT,
  `pergunta` varchar(250) NOT NULL,
  PRIMARY KEY (`Id_pergunta`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Extraindo dados da tabela `pergunta`
--

INSERT INTO `pergunta` (`Id_pergunta`, `pergunta`) VALUES
(1, 'Qual nome do seu animal de estimação ?\r\n'),
(2, 'Qual seu time ?');

-- --------------------------------------------------------

--
-- Estrutura da tabela `privilegios`
--

CREATE TABLE IF NOT EXISTS `privilegios` (
  `Id_privilegio` int(11) NOT NULL AUTO_INCREMENT,
  `Id_pagina` int(11) NOT NULL,
  PRIMARY KEY (`Id_privilegio`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `senha`
--

CREATE TABLE IF NOT EXISTS `senha` (
  `Id_usuario` int(11) NOT NULL,
  `Id_senha` int(11) NOT NULL AUTO_INCREMENT,
  `senha` varchar(100) NOT NULL,
  `dat_atualizacao` varchar(100) NOT NULL,
  PRIMARY KEY (`Id_senha`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Extraindo dados da tabela `senha`
--

INSERT INTO `senha` (`Id_usuario`, `Id_senha`, `senha`, `dat_atualizacao`) VALUES
(9, 6, '1234', '2014-05-10'),
(10, 7, '1234', '2014-05-10');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
