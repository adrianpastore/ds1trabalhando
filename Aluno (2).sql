-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 06/09/2019 às 11:28
-- Versão do servidor: 5.7.25-0ubuntu0.18.04.2
-- Versão do PHP: 7.2.10-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `Aluno`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `admin`
--

CREATE TABLE `admin` (
  `login` varchar(100) NOT NULL,
  `senha` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `admin`
--

INSERT INTO `admin` (`login`, `senha`) VALUES
('ADMIN', '73acd9a5972130b75066c82595a1fae3');

-- --------------------------------------------------------

--
-- Estrutura para tabela `compraspendentes`
--

CREATE TABLE `compraspendentes` (
  `data` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `agencia` varchar(100) NOT NULL,
  `frete` int(11) NOT NULL,
  `banco` varchar(100) NOT NULL,
  `conta` varchar(100) NOT NULL,
  `valordeposito` int(11) NOT NULL,
  `estado` varchar(2) NOT NULL,
  `nprodutos` int(11) NOT NULL,
  `valortotal` int(11) NOT NULL,
  `codigo` bigint(20) UNSIGNED NOT NULL,
  `usuarionome` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `compraspendentes`
--

INSERT INTO `compraspendentes` (`data`, `agencia`, `frete`, `banco`, `conta`, `valordeposito`, `estado`, `nprodutos`, `valortotal`, `codigo`, `usuarionome`) VALUES
('2019-09-06 09:55:39', '111', 55, '0', '111', 1111, 'BA', 3, 4055, 4, 'Adrian Leivas Pastore');

-- --------------------------------------------------------

--
-- Estrutura para tabela `produtos`
--

CREATE TABLE `produtos` (
  `codigo` bigint(20) UNSIGNED NOT NULL,
  `palavraChave` varchar(200) NOT NULL,
  `descricao` varchar(200) NOT NULL,
  `preco` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `imagem` varchar(300) NOT NULL,
  `peso` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `produtos`
--

INSERT INTO `produtos` (`codigo`, `palavraChave`, `descricao`, `preco`, `quantidade`, `imagem`, `peso`) VALUES
(1, 'notebook', 'dell i9', 2000, 1, 'http://[::1]/CI/uploads/a3d8905d45c75ef54a53394378568d585.jpg', 1),
(2, 'notebook', 'notebook dell i40000', 2000, 1, 'http://[::1]/CI/uploads/a3d8905d45c75ef54a53394378568d5811.jpg', 1),
(3, 'smartphone', 'celular smarthphone', 1001, 10, 'http://[::1]/CI/uploads/a3d8905d45c75ef54a53394378568d5841.jpg', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuario`
--

CREATE TABLE `usuario` (
  `codigo` bigint(20) UNSIGNED NOT NULL,
  `nome` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `senha` varchar(50) NOT NULL,
  `endereco` varchar(100) NOT NULL,
  `cidade` varchar(50) NOT NULL,
  `estado` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `usuario`
--

INSERT INTO `usuario` (`codigo`, `nome`, `email`, `senha`, `endereco`, `cidade`, `estado`) VALUES
(17, 'Helena Leivas Pastore', 'lennaleivas@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'Rua Visconde do Rio Branco, 1032', 'Rio de Janeiro', 'RJ'),
(18, 'Adrian Leivas Pastore', 'adrianqpastore@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'veiga cabral 7', 'Recife', 'BA');

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `compraspendentes`
--
ALTER TABLE `compraspendentes`
  ADD PRIMARY KEY (`codigo`),
  ADD UNIQUE KEY `codigo` (`codigo`);

--
-- Índices de tabela `produtos`
--
ALTER TABLE `produtos`
  ADD UNIQUE KEY `codigo` (`codigo`);

--
-- Índices de tabela `usuario`
--
ALTER TABLE `usuario`
  ADD UNIQUE KEY `codigo` (`codigo`),
  ADD UNIQUE KEY `codigo_2` (`codigo`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `compraspendentes`
--
ALTER TABLE `compraspendentes`
  MODIFY `codigo` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `codigo` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `codigo` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
