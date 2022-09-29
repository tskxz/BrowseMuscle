-- Database: `browsemuscle`

use browsemuscle;

-- Estrutura da tabela utilizador
Set DateFormat dmy;

CREATE TABLE `utilizadores` (
  `id` int(6) NOT NULL,
  `nome_completo` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `país` varchar(100) NOT NULL,
  `data_nascimento` date NOT NULL,
  `password` varchar(100) NOT NULL
);
