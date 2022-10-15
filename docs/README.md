
<h1 align="center">BrowseMuscle</h1>

![MySQL](https://img.shields.io/badge/MySQL-00000F?style=for-the-badge&logo=mysql&logoColor=white) ![JS](https://img.shields.io/badge/JavaScript-F7DF1E?style=for-the-badge&logo=javascript&logoColor=black) ![nodejs](https://img.shields.io/badge/Node.js-43853D?style=for-the-badge&logo=node.js&logoColor=white) ![html](https://img.shields.io/badge/HTML5-E34F26?style=for-the-badge&logo=html5&logoColor=white) ![css](https://img.shields.io/badge/CSS3-1572B6?style=for-the-badge&logo=css3&logoColor=white)

![GitHub repo size](https://img.shields.io/github/repo-size/8fn/browsemuscle)
![GitHub issues](https://img.shields.io/github/issues/8fn/browsemuscle)

## 📝 - Sobre o projeto  

Este projeto ainda está em **construção** e é um projeto de aptidão profissional.
BrowseMuscle serve para ajudar as pessoas a poderem obter mais informação sobre vários exercícios.

BrowseMuscle serve para as pessoas com que obtenham conhecimento mais amplo sobre exercícios físicos.

Para quem está a começar a ir para o ginásio e não tem muito conhecimento nem experiência sobre treino e é completamente iniciante, este projeto é útil para conhecer vários exercícios e executa-los de forma correta.

As pessoas mesmo que tenham experiência mas têm dificuldades de realizar ou quer conhecer novos exercícios, este projeto pode ser muito útil para o indivíduo que queira conhecer e aprender.

## 🗃️ - Tabelas
No BrowseMuscle, o utilizador tem a possibilidade de visualizar a tabela exercícios.
Os exercícios tem as seguintes colunas

 - Nome do exercício
 - Tipo de Equipamento
 - Dificuldade
 - Músculo

Cada exercício tem o seu tipo de equipamento, dificuldade e o músculo que esse exercício atinge.
Os tipos de equipamentos são os seguintes

 - Peso Corporal (bodyweight)
 - Barra
 - Halteres
 - Elástico
 - Maquina
 - Cabos
 
 Cada exercício vai ter o seu nível de dificuldade que é
 
 - Iniciante
 - Intermediário
 - Avançado

Vai ter os seguintes músculos:

 - Peito 
 - Ombro 
 - Tricep 
 - Costas 
 - Lats 
 - Traps 
 - Biceps 
 - Quads 
 - Hamstrings 
 - Gemeos
  - Antebraco 
  - Abdominais

Exemplo


### Tabela Exercícios
|Nome| Tipo de equipamento |Dificuldade | Músculo
| -- |--| -- | -- | 
| Supino | Barra | Avançado | Peito
| Agachamento Livre | Barra | Avançado | Peito
| Overhead Press | Barra | Avançado | Ombros
| Tricep Pushdown | Cabos | Intermediario | Triceps
| Lateral Raises | Halteres | Intermediario | Ombros

O utilizador pode filtrar e visualizar exercícios do tipo de equipamento, dificuldade e músculo
Por exemplo, quero visualizar os exercícios que treinam ombros

### Tabela Exercícios - Ombros
|Nome| Tipo de equipamento |Dificuldade | Músculo
| -- |--| -- | -- | 
| Overhead Press | Barra | Avançado | Ombros
| Lateral Raises | Halteres | Intermediario | Ombros

Como igualmente á tabela de músculos, o utilizador pode visualizar exercícios que mostram apenas um tipo de equipamento
Exemplo

### Tabela Exercícios - Barra
|Nome| Tipo de equipamento |Dificuldade | Músculo
| -- |--| -- | -- | 
| Supino | Barra | Avançado | Peito
| Agachamento Livre | Barra | Avançado | Peito
| Overhead Press | Barra | Avançado | Ombros

A tabela alimentos também está presente neste projeto para que qualquer utilizador possa pesquisar e ver as macronutrientes de algum alimento.
Os alimentos têm os seguintes campos

 - Proteína
 - Carbs
 - Gordura
 - Calorias
 
 As calorias são calculadas da seguinte forma
 > 1G de proteina equivale a 4 calorias
1G de carbs equivale a 4 calorias
1G de gordura equivale a 9 calorias

## .env Config

```
PORT = 3000

DB_HOST = localhost
DB_USER = root
DB_PASS = root
DB_NAME = browsemuscle
```
