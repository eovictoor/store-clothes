-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 13-Jul-2022 às 17:59
-- Versão do servidor: 10.4.24-MariaDB
-- versão do PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `skstore`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `administradores`
--

CREATE TABLE `administradores` (
  `nome` text NOT NULL,
  `passe` text NOT NULL,
  `ncompleto` text DEFAULT NULL,
  `ntelefone` text DEFAULT NULL,
  `identificador` text NOT NULL,
  `islogged` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `administradores`
--

INSERT INTO `administradores` (`nome`, `passe`, `ncompleto`, `ntelefone`, `identificador`, `islogged`) VALUES
('victor', 'senha1234', 'VICTOR CESAR VARGAS GOMES', '67993462261', 'xYumWeZx99x01', 'true');

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nome` text NOT NULL,
  `cidade` text NOT NULL,
  `cep` decimal(25,0) NOT NULL,
  `endereco` text NOT NULL,
  `telefone` decimal(65,0) NOT NULL,
  `email` text NOT NULL,
  `numerocasa` decimal(65,0) NOT NULL,
  `idCartao` decimal(65,0) DEFAULT NULL,
  `senha` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `itens`
--

CREATE TABLE `itens` (
  `nome` text DEFAULT NULL,
  `valor` text DEFAULT NULL,
  `img` text DEFAULT NULL,
  `vendedor` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `itens`
--

INSERT INTO `itens` (`nome`, `valor`, `img`, `vendedor`) VALUES
('Lacoste Preta', '50.00', './img/pecas/lacoste.jpg', 'victor'),
('Moletom Lacoste', '70.00', './img/pecas/lacoste2.jpg', 'victor'),
('Lacoste AllBlack', '250.00', './img/pecas/lacostesport.jpg', 'victor'),
('Moletom Louis Vuitton', '6.350.00', './img/pecas/pololacoste.jpg', 'victor'),
('Adidas Moletom', '125.00', './img/pecas/adidas.jpg', 'victor'),
('Berserk Moletom', '110.00', './img/pecas/bersek.jpg', 'victor');

-- --------------------------------------------------------

--
-- Estrutura da tabela `vendas`
--

CREATE TABLE `vendas` (
  `item` text NOT NULL,
  `valor` text NOT NULL,
  `hora` text NOT NULL,
  `datad` text NOT NULL,
  `identificador` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `vendas`
--

INSERT INTO `vendas` (`item`, `valor`, `hora`, `datad`, `identificador`) VALUES
('09/07/2022', '21:02', 'xYumWeZx99x01', 'Camisa Branca', '25.00'),
('Camisa Branca', '500.00', '21:15', '09/07/2022', 'xYumWeZx99x01'),
('Camisa Preta', '540.00', '21:25', '09/09/2042', 'xYumWeZx99x01'),
('Camisa Roxa', '1500.00', '21:50', '09/12/2022', 'xYumWeZx99x01');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
