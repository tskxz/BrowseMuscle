# BrowseMuscle

###### ✅- Construido com
![MySQL](https://img.shields.io/badge/MySQL-00000F?style=for-the-badge&logo=mysql&logoColor=white) ![JS](https://img.shields.io/badge/JavaScript-F7DF1E?style=for-the-badge&logo=javascript&logoColor=black) ![nodejs](https://img.shields.io/badge/Node.js-43853D?style=for-the-badge&logo=node.js&logoColor=white
)  ![html](https://img.shields.io/badge/HTML5-E34F26?style=for-the-badge&logo=html5&logoColor=white
) ![css](https://img.shields.io/badge/CSS3-1572B6?style=for-the-badge&logo=css3&logoColor=white
)

## 📝 - Sobre o projeto

Este projeto ainda está em **construção** e é um projeto de aptidão profissional que possa servir futuramente para ajudar as pessoas a poderem obter mais informação sobre vários exercícios.  

Para quem está a começar a ir para o ginásio e não tem muito conhecimento nem experiência sobre treino e é completamente iniciante, BrowseMuscle vai ser útil para conhecer vários exercícios.  

BrowseMuscle tem várias tabelas que mostram todos os exercícios disponíveis que é possível realizar num ginásio ou até mesmo em casa.  
Cada exercício atinge os músculos principais e com BrowseMuscle, podemos realizar a pesquisa por cada grupo muscular. Também é possivel realizar a pesquisa através do filtro da dificuldade (iniciante, intermediario, avancado) e equipamentos (cabos, halteres, barra, peso corporal, maquina).

Aspetos importantes do BrowseMuscle
- Visualizar os exercícios através de cada dificuldades
- Visualizar os exercícios através de cada equipamentos
- Visualizar os exercícios através de cada principal grupo múscular
- Explicação da execução de cada exercício disponível
- Ilustração de cada execução biomecânica do exercício

## 🗃️ - Tabelas
Várias tabelas vão ter conjunto de exercícios.
Existe a tabela principal que é a tabela que mostra todos os exercícios disponiveis da base de dados que se chama `exercícios`
Essa tabela vai ter os seguintes campos:

```
exercícios {
	nome_exercicio,
	nome_equipamento,
	nome_dificuldade,
	nome_musculo
}
```

Cada exercício atinge um músculo principal especifico. Cada tabela muscular, vai obter lista de exercícios que atinge esse musculo.
As seguintes tabelas têm exatamente **os mesmos campos** que a tabela exercícios

- antebraco
- bicep
- costas
- gemeos
- hamstrings
- lats
- ombros
- peito
- quadriceps
- traps
- triceps
- gluteo

Vão ter as tabelas de equipamentos que temos a possibilidade de visualizar todos exercícios com aquele equipamento

- exercicios_bodyweight
- exercicios_cabos
- exercicios_elastico
- exercicios_halteres
- exercicios_maquina
- exercicios_barra

As tabelas dificuldades acontece o mesmo do que a tabela de equipamentos
Também temos a possibilidade de filtrar e visualizar apenas exercícios com a dificuldade que desejamos.  Então vamos obter as tabelas:

- exrcicios_iniciante
- exercicios_intermediario
- exercicios_avancado

## 🚧 - Updates

#### 30/08/2022

Filter by Muscle insert - [Pull request inserir dado na tabela do musculo ao inserir um novo dado exercício](https://github.com/8fn/BrowseMuscle/pull/21)  
MYSQL Credenciais para windows e linux - [Commit do mysql.js e var.env](https://github.com/8fn/BrowseMuscle/pull/20/commits/407a0fd9bc2c9228369693efb57377cc0ffc4353)

#### 29/08/2022

Render Tables Data into HTML - [Pull request criar uma tabela para visualizar exercicios](https://github.com/8fn/BrowseMuscle/pull/18)

#### 28/08/2022

JSON para FrontEnd - [Pull request Fetch Function Data JSON para HTML](https://github.com/8fn/BrowseMuscle/pull/17)

#### - 27/08/2022
Fetch API - [Pull request em construção Fetch API](https://github.com/8fn/BrowseMuscle/pull/15)

#### - 25/08/2022
CRUD com node.js e MYSQL - [Pull Request CRUD - browsemuscle](https://github.com/8fn/BrowseMuscle/pull/8)

#### 18/08/2022
Simples gráfico de macro de uma pizza - [Pull request - Gráficos com chart.js](https://github.com/8fn/BrowseMuscle/pull/5)

#### - 17/08/2022

Criação e estruturação da base de dados - [Base de dados MYSQL - BrowseMuscle](https://github.com/8fn/BrowseMuscle/pull/1)