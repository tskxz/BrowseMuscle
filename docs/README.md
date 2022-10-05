
<h1 align="center">BrowseMuscle</h1>

![MySQL](https://img.shields.io/badge/MySQL-00000F?style=for-the-badge&logo=mysql&logoColor=white) ![JS](https://img.shields.io/badge/JavaScript-F7DF1E?style=for-the-badge&logo=javascript&logoColor=black) ![nodejs](https://img.shields.io/badge/Node.js-43853D?style=for-the-badge&logo=node.js&logoColor=white) ![html](https://img.shields.io/badge/HTML5-E34F26?style=for-the-badge&logo=html5&logoColor=white) ![css](https://img.shields.io/badge/CSS3-1572B6?style=for-the-badge&logo=css3&logoColor=white)

  

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

[![](https://raw.githubusercontent.com/8fn/BrowseMuscle/master/docs/alimento.png)](https://raw.githubusercontent.com/8fn/BrowseMuscle/master/docs/alimento.png)

## 🚧 - Updates


### Todas as Pull requests ao longo da produção do projeto

[Todos os pull requests](https://github.com/8fn/BrowseMuscle/pulls?q=)

> #### 25/09/2022
> Adicionar método delete - [Pull request Apagar dados com API delete](https://github.com/8fn/BrowseMuscle/pull/55)

> #### 24/09/2022
> Ter os valores para PUT form - [Atraves do URL, buscar os parametros para ter os valores do dado](https://github.com/8fn/BrowseMuscle/pull/52)
> Preencher no input os campos com valores - [Pull request valores no input](https://github.com/8fn/BrowseMuscle/pull/53)

  
  

> #### 22/09/2022
> Editar e apagar - [Pull request para acrescentar botoes editar e apagar dado na tabela exercícios](https://github.com/8fn/BrowseMuscle/pull/48)
> Resolver o erro foreign key constrain - [Pull request para resolver o erro do método PUT e DELETE](https://github.com/8fn/BrowseMuscle/pull/50)

  

> #### 17/09/2022
> Assets - [Pull request para adicionar js/css bootstrap](https://github.com/8fn/BrowseMuscle/pull/43)

  

> #### 8/09/2022
> Criar uma nova rota para app página principal - [Pull request mudar a estrutura e acrescentar rotas](https://github.com/8fn/BrowseMuscle/pull/42)

  

> #### 7/09/2022
> Insert another tables - [Pull request insert data in another tables](https://github.com/8fn/BrowseMuscle/pull/36)

  

> #### 31/08/2022
> Format Form data - [Pull request Form Data Bootstrap](https://github.com/8fn/BrowseMuscle/pull/30)
> Top Navegation - [Pull request top navegation bar table](https://github.com/8fn/BrowseMuscle/pull/29)
> Add link column - [Pull request nova coluna link](https://github.com/8fn/BrowseMuscle/pull/27)
> Form data - [Pull Request Form Data for POST](https://github.com/8fn/BrowseMuscle/pull/24)

> #### 30/08/2022
> Filter by Muscle insert - [Pull request inserir dado na tabela do musculo ao inserir um novo dado exercício](https://github.com/8fn/BrowseMuscle/pull/21)
> MYSQL Credenciais para windows e linux - [Commit do mysql.js e var.env](https://github.com/8fn/BrowseMuscle/pull/20/commits/407a0fd9bc2c9228369693efb57377cc0ffc4353)

> #### 29/08/2022
> Render Tables Data into HTML - [Pull request criar uma tabela para visualizar exercicios](https://github.com/8fn/BrowseMuscle/pull/18)

> #### 28/08/2022
> JSON para FrontEnd - [Pull request Fetch Function Data JSON para HTML](https://github.com/8fn/BrowseMuscle/pull/17)

> #### 27/08/2022
> Fetch API - [Pull request em construção Fetch API](https://github.com/8fn/BrowseMuscle/pull/15)

  > #### 25/08/2022
  > CRUD com node.js e MYSQL - [Pull Request CRUD - browsemuscle](https://github.com/8fn/BrowseMuscle/pull/8)

  

> #### 18/08/2022
>  Simples gráfico de macro de uma pizza - [Pull request - Gráficos com chart.js](https://github.com/8fn/BrowseMuscle/pull/5)

  

> #### - 17/08/2022
> Criação e estruturação da base de dados - [Base de dados MYSQL - BrowseMuscle](https://github.com/8fn/BrowseMuscle/pull/1)
