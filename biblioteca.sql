-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 06-Dez-2021 às 23:40
-- Versão do servidor: 10.4.22-MariaDB
-- versão do PHP: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `biblioteca`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `aa`
--

CREATE TABLE `aa` (
  `dasdas` int(11) NOT NULL,
  `asdasd` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `aluno`
--

CREATE TABLE `aluno` (
  `nome_aluno` varchar(100) NOT NULL,
  `email_aluno` varchar(100) NOT NULL,
  `fone_aluno` varchar(20) NOT NULL,
  `rgm_aluno` varchar(10) NOT NULL,
  `data_nasc_aluno` date NOT NULL,
  `genero_aluno` varchar(10) NOT NULL,
  `end_aluno` varchar(100) NOT NULL,
  `id_aluno` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `aluno`
--

INSERT INTO `aluno` (`nome_aluno`, `email_aluno`, `fone_aluno`, `rgm_aluno`, `data_nasc_aluno`, `genero_aluno`, `end_aluno`, `id_aluno`) VALUES
('pedro', '', '', '', '0000-00-00', '', '', 1),
('Fernando', '', '', '', '0000-00-00', '', '', 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `atendente`
--

CREATE TABLE `atendente` (
  `nome_atendente` varchar(100) NOT NULL,
  `id_atendente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `atendente`
--

INSERT INTO `atendente` (`nome_atendente`, `id_atendente`) VALUES
('Thiago', 1),
('Lucas', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `biblioteca`
--

CREATE TABLE `biblioteca` (
  `end_biblioteca` varchar(100) NOT NULL,
  `nome_biblioteca` varchar(100) NOT NULL,
  `id_biblioteca` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `biblioteca`
--

INSERT INTO `biblioteca` (`end_biblioteca`, `nome_biblioteca`, `id_biblioteca`) VALUES
('Sobradinho', 'De sobradinho', 4);

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria`
--

CREATE TABLE `categoria` (
  `nome_categoria` varchar(100) NOT NULL,
  `id_categoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `categoria`
--

INSERT INTO `categoria` (`nome_categoria`, `id_categoria`) VALUES
('terror', 1),
('romance', 2),
('aventura', 3),
('espacial', 4);

-- --------------------------------------------------------

--
-- Estrutura da tabela `livro`
--

CREATE TABLE `livro` (
  `titulo_livro` varchar(100) NOT NULL,
  `autor_livro` varchar(100) NOT NULL,
  `editora_livro` varchar(45) NOT NULL,
  `edicao_livro` varchar(5) NOT NULL,
  `ano_livro` year(4) NOT NULL,
  `id_livro` int(11) NOT NULL,
  `categoria_id_categoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `livro`
--

INSERT INTO `livro` (`titulo_livro`, `autor_livro`, `editora_livro`, `edicao_livro`, `ano_livro`, `id_livro`, `categoria_id_categoria`) VALUES
('crepusculo', 'langsdorf', 'cad', '15', 2010, 15, 2),
('harry potter', 'jj', 'sony', '3', 2000, 16, 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `reserva`
--

CREATE TABLE `reserva` (
  `data_emprestimo` date NOT NULL,
  `data_devolucao` date NOT NULL,
  `livro_id_livro` int(11) NOT NULL,
  `aluno_id_aluno` int(11) NOT NULL,
  `atendente_id_atendente` int(11) NOT NULL,
  `id_reserva` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `reserva`
--

INSERT INTO `reserva` (`data_emprestimo`, `data_devolucao`, `livro_id_livro`, `aluno_id_aluno`, `atendente_id_atendente`, `id_reserva`) VALUES
('0000-00-00', '0000-00-00', 16, 3, 2, 1),
('0000-00-00', '0000-00-00', 16, 3, 2, 2),
('2002-04-03', '2000-08-01', 15, 1, 2, 3);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `aa`
--
ALTER TABLE `aa`
  ADD PRIMARY KEY (`dasdas`);

--
-- Índices para tabela `aluno`
--
ALTER TABLE `aluno`
  ADD PRIMARY KEY (`id_aluno`);

--
-- Índices para tabela `atendente`
--
ALTER TABLE `atendente`
  ADD PRIMARY KEY (`id_atendente`);

--
-- Índices para tabela `biblioteca`
--
ALTER TABLE `biblioteca`
  ADD PRIMARY KEY (`id_biblioteca`);

--
-- Índices para tabela `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Índices para tabela `livro`
--
ALTER TABLE `livro`
  ADD PRIMARY KEY (`id_livro`),
  ADD KEY `categoria_id_categoria` (`categoria_id_categoria`);

--
-- Índices para tabela `reserva`
--
ALTER TABLE `reserva`
  ADD PRIMARY KEY (`id_reserva`),
  ADD KEY `livro_id_livro` (`livro_id_livro`),
  ADD KEY `aluno_id_aluno` (`aluno_id_aluno`),
  ADD KEY `atendente_id_atendente` (`atendente_id_atendente`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `aluno`
--
ALTER TABLE `aluno`
  MODIFY `id_aluno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `atendente`
--
ALTER TABLE `atendente`
  MODIFY `id_atendente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `biblioteca`
--
ALTER TABLE `biblioteca`
  MODIFY `id_biblioteca` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `livro`
--
ALTER TABLE `livro`
  MODIFY `id_livro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de tabela `reserva`
--
ALTER TABLE `reserva`
  MODIFY `id_reserva` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `livro`
--
ALTER TABLE `livro`
  ADD CONSTRAINT `livro_ibfk_1` FOREIGN KEY (`categoria_id_categoria`) REFERENCES `categoria` (`id_categoria`);

--
-- Limitadores para a tabela `reserva`
--
ALTER TABLE `reserva`
  ADD CONSTRAINT `aluno_id_aluno` FOREIGN KEY (`aluno_id_aluno`) REFERENCES `aluno` (`id_aluno`),
  ADD CONSTRAINT `atendente_id_atendente` FOREIGN KEY (`atendente_id_atendente`) REFERENCES `atendente` (`id_atendente`),
  ADD CONSTRAINT `livro_id_livro` FOREIGN KEY (`livro_id_livro`) REFERENCES `livro` (`id_livro`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
