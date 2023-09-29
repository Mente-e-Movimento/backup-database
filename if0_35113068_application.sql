-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql112.infinityfree.com
-- Tempo de geração: 29/09/2023 às 11:59
-- Versão do servidor: 10.4.17-MariaDB
-- Versão do PHP: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `if0_35113068_application`
--
CREATE DATABASE IF NOT EXISTS `if0_35113068_application` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `if0_35113068_application`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `cosultas`
--

DROP TABLE IF EXISTS `cosultas`;
CREATE TABLE `cosultas` (
  `id_consulta` int(11) NOT NULL,
  `terapeuta` int(11) NOT NULL,
  `cliente` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `valor_total` double NOT NULL,
  `pagamento_realizado` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `nome` int(11) NOT NULL,
  `papel` enum('ADMINISTRADOR','TERAPELTA','AFILIADO') NOT NULL,
  `login` varchar(10) NOT NULL,
  `senha` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `cosultas`
--
ALTER TABLE `cosultas`
  ADD PRIMARY KEY (`id_consulta`);

--
-- Índices de tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`),
  ADD UNIQUE KEY `login` (`login`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `cosultas`
--
ALTER TABLE `cosultas`
  MODIFY `id_consulta` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
