-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 05-Nov-2024 às 22:25
-- Versão do servidor: 10.4.25-MariaDB
-- versão do PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `db_biblioteca`
--
CREATE DATABASE IF NOT EXISTS `db_biblioteca` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_biblioteca`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `emprestimos`
--

CREATE TABLE `emprestimos` (
  `CodEmprestimo` int(11) NOT NULL,
  `Data_Emprestimo` date DEFAULT NULL,
  `Data_Devolução` date DEFAULT NULL,
  `CodLivro` int(11) NOT NULL,
  `CodLeitor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `emprestimos`
--

INSERT INTO `emprestimos` (`CodEmprestimo`, `Data_Emprestimo`, `Data_Devolução`, `CodLivro`, `CodLeitor`) VALUES
(1, '2024-10-01', '2024-10-08', 1, 1),
(2, '2024-11-18', '2024-11-25', 3, 2),
(3, '2024-10-17', '2024-10-24', 2, 2),
(4, '2024-10-22', '2024-10-29', 4, 4),
(5, '2024-10-03', '2024-10-10', 1, 5),
(6, '2024-10-16', '2024-10-30', 3, 3),
(7, '2024-10-01', '2024-11-01', 1, 1),
(8, '2024-11-06', '2024-11-20', 2, 4),
(9, '2024-10-31', '2024-11-22', 4, 5),
(10, '2024-12-24', '2025-01-24', 5, 4);

-- --------------------------------------------------------

--
-- Estrutura da tabela `leitores`
--

CREATE TABLE `leitores` (
  `CodLeitor` int(11) NOT NULL,
  `Nome` varchar(255) DEFAULT NULL,
  `DtNasc` date DEFAULT NULL,
  `Celular` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `RA` int(11) DEFAULT NULL,
  `Endereco` varchar(255) DEFAULT NULL,
  `NumEnd` varchar(255) DEFAULT NULL,
  `Bairro` varchar(255) DEFAULT NULL,
  `CidadeUF` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `leitores`
--

INSERT INTO `leitores` (`CodLeitor`, `Nome`, `DtNasc`, `Celular`, `Email`, `RA`, `Endereco`, `NumEnd`, `Bairro`, `CidadeUF`) VALUES
(1, 'João Silva Sauro', '2001-04-01', '(11)98788-2311', 'joao@hotmail.com', 631113101, 'Rua Boa Esperança', '201', 'Jangamaica', 'Paulista/PE'),
(2, 'Maria Silva Nascimento', '2011-07-21', '(11)98788-2311', 'maria@hotmail.com', 631113102, 'Rua da Vovó', '101', 'MAranguape I', 'Paulista/PE'),
(3, 'Mateus Novaes Abreu', '2012-06-11', '(11)98788-2311', 'mateus@hotmail.com', 631113105, 'Rua da Praia', '41', 'Bosque 2', 'Olinda/PE'),
(4, 'Joana Maria de Souza', '2008-05-31', '(11)98788-2311', 'joana@hotmail.com', 631113155, 'Rua da Casa', '121', 'Bosque 1', 'Olinda/PE'),
(5, 'Maria  das Graças Menezes', '2007-11-12', '(11)98788-2311', 'maria@hotmail.com', 631113121, 'Avenida dos Lirios', '78', 'Boa Viagem', 'Recife/PE'),
(12, 'Felipe Ferreira da Silva', '2004-10-11', '81999999', 'felipe11@gmail.com', 77, 'rua do céu', '777', 'matinha', 'abreu e lima-PE');

-- --------------------------------------------------------

--
-- Estrutura da tabela `livros`
--

CREATE TABLE `livros` (
  `CodLivro` int(11) NOT NULL,
  `Titulo` varchar(255) DEFAULT NULL,
  `Autor` varchar(255) DEFAULT NULL,
  `Editora` varchar(255) DEFAULT NULL,
  `Sinopse` varchar(255) DEFAULT NULL,
  `AnoPublicacao` int(11) DEFAULT NULL,
  `Genero` varchar(255) DEFAULT NULL,
  `Paginas` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `livros`
--

INSERT INTO `livros` (`CodLivro`, `Titulo`, `Autor`, `Editora`, `Sinopse`, `AnoPublicacao`, `Genero`, `Paginas`) VALUES
(1, 'O Senhor dos Anéis: A Sociedade do Anel', 'J.R.R. Tolkien', 'HarperCollins', 'Primeiro livro da trilogia O Senhor dos Anéis, onde Frodo e seus companheiros tentam destruir o Um Anel.', 1954, 'Fantasia', 576),
(2, '1984', 'George Orwell', 'Companhia das Letras', 'Romance distópico que retrata uma sociedade totalitária sob vigilância constante.', 1949, 'Ficção científica', 416),
(3, 'Dom Casmurro', 'Machado de Assis', 'Principis', 'A história de amor e ciúmes entre Bentinho e\r\nCapitu.', 1899, 'Clássico', 256),
(4, 'O Código Da Vinci', 'Dan Brown', 'Arqueiro', 'Robert Langdon investiga um assassinato e descobre segredos sobre o Santo Graal.', 2003, 'Suspense', 480),
(5, 'A Revolução dos Bichos', 'George Orwell', 'Companhia das Letras', 'Uma alegoria política sobre uma\r\nrevolução liderada por animais em uma fazenda.', 1945, 'Sátira', 152),
(7, 'O Misterioso Caso de Elisa', 'Maria Clara Andrade', ' Editora Horizonte', 'Em uma pequena cidade do interior, Elisa, uma jovem jornalista, começa a investigar uma série de desaparecimentos misteriosos que ocorreram nos últimos anos. Ao se aprofundar no caso, ela descobre uma teia de segredos que conecta a elite local a eventos s', 2023, 'Mistério', 320);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `emprestimos`
--
ALTER TABLE `emprestimos`
  ADD PRIMARY KEY (`CodEmprestimo`),
  ADD KEY `CodLeitor` (`CodLeitor`),
  ADD KEY `CodLivro` (`CodLivro`);

--
-- Índices para tabela `leitores`
--
ALTER TABLE `leitores`
  ADD PRIMARY KEY (`CodLeitor`);

--
-- Índices para tabela `livros`
--
ALTER TABLE `livros`
  ADD PRIMARY KEY (`CodLivro`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `emprestimos`
--
ALTER TABLE `emprestimos`
  MODIFY `CodEmprestimo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `leitores`
--
ALTER TABLE `leitores`
  MODIFY `CodLeitor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `livros`
--
ALTER TABLE `livros`
  MODIFY `CodLivro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `emprestimos`
--
ALTER TABLE `emprestimos`
  ADD CONSTRAINT `emprestimos_ibfk_1` FOREIGN KEY (`CodLivro`) REFERENCES `livros` (`CodLivro`),
  ADD CONSTRAINT `emprestimos_ibfk_2` FOREIGN KEY (`CodLeitor`) REFERENCES `leitores` (`CodLeitor`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
