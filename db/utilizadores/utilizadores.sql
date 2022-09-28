-- Database: `browsemuscle`

use browsemuscle;

-- Estrutura da tabela utilizador

CREATE TABLE `utilizadores` (
  `id` int(6) NOT NULL,
  `nome_completo` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `país` varchar(100) NOT NULL,
  `cidade` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
);
