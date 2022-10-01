-- Database: `browsemuscle`

use browsemuscle;

-- Estrutura da tabela alimentos

CREATE TABLE `alimentos` (
  `id` int(6) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `proteina` int(6) NOT NULL,
  `carbs` int(6) NOT NULL,
  `gordura` int(6) NOT NULL,
  `calorias` int(10) NOT NULL,
  PRIMARY KEY(id)
);
