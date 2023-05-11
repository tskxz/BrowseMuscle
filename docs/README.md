
<p align="center">
  <img src="https://raw.githubusercontent.com/8fn/BrowseMuscle/master/views/assets/img/browsemuscle_light.png" width="250px" height="50px">
</p>
<div align="center">
  <img src="https://img.shields.io/github/repo-size/8fn/browsemuscle"> <img src="https://img.shields.io/github/last-commit/8fn/browsemuscle"> <img alt="GitHub issues" src="https://img.shields.io/github/issues/8fn/BrowseMuscle"> <img alt="GitHub closed issues" src="https://img.shields.io/github/issues-closed/8fn/BrowseMuscle"> <img alt="GitHub pull requests" src="https://img.shields.io/github/issues-pr/8fn/browsemuscle"> <img alt="GitHub closed pull requests" src="https://img.shields.io/github/issues-pr-closed/8fn/browsemuscle"> <img alt="GitHub" src="https://img.shields.io/github/license/8fn/browsemuscle"> <img src="https://img.shields.io/badge/-node.js-yellow"> <img src="https://img.shields.io/badge/-mysql-yellow">  
</div>

## ⚠️- Repositório Arquivado
O projeto foi descontinuado.

-----------------------------------

## 📝 - Sobre o projeto  

Este projeto é um projeto para a prova de aptidão profissional.
BrowseMuscle serve para ajudar as pessoas a poderem obter mais informação sobre vários exercícios.

As pessoas vão obter conhecimento mais amplo sobre exercícios físicos.

Para quem está a começar a ir para o ginásio e não tem muito conhecimento nem experiência sobre treino e é completamente iniciante, este projeto é útil para conhecer vários exercícios e executa-los de forma correta.

As pessoas mesmo que tenham experiência mas têm Dificuldades de realizar ou quer conhecer novos exercícios, este projeto pode ser muito útil para o indivíduo que queira conhecer e aprender.

## 🗃️ - Tabelas
No BrowseMuscle, o utilizador tem a possibilidade de visualizar a tabela exercícios.
Os exercícios tem as seguintes colunas

 - Nome do exercício
 - Tipo de Equipamento
 - Dificuldade
 - Músculo

Cada exercício tem o seu tipo de equipamento, dificuldade e o músculo que esse exercício atinge.
Os tipos de Equipamentos são os seguintes

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

A tabela Alimentos também está presente neste projeto para que qualquer utilizador possa pesquisar e ver as macronutrientes de algum alimento.
Os Alimentos têm os seguintes campos

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

SESSION_SECRET=secret
DB_HOST = localhost
DB_USER = root
DB_PASS = root
DB_NAME = browsemuscle
```
