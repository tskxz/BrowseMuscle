1/8/2022

// Projeto de Aptidão Profissional

# Planeamento

O projeto irá consistir se num site em que ajuda as pessoas a poderem obter mais informação e conhecimento sobre vários exercícios físicos de cada grupo muscular.

Planeio construir uma base de dados cujo irá haver várias tabelas. Cada tabela irá representar um músculo e esse músculo vai obter vários exercícios. Cada exercício vai explicar e demonstrar a sua execução e biomecânica.

A página principal vai ser uma imagem a representar a estrutura muscular de um corpo humano e ter vários grupos musculares para escolher. Podemos escolher qualquer como por exemplo costas peito abdominais etc...


Exemplo

Tabela Ombros

+----------------------+-------------+-------------+
|        Ombros        | Equipamento | Dificuldade |
+----------------------+-------------+-------------+
|       Overhead Press |       Barra |    Avancado |
+----------------------+-------------+-------------+
| Cable Lateral Raises |       Cabos |       Facil |
+----------------------+-------------+-------------+
|            Face Pull |       Cabos |       Facil |
+----------------------+-------------+-------------+

Tabela Quads

+-----------------------+-------------+---------------+
|         Quads         | Equipamento |  Dificuldade  |
|                       |             |               |
|                       |             |               |
+-----------------------+-------------+---------------+
|         Barbell Squat |       Barra |      Avancado |
|                       |             |               |
+-----------------------+-------------+---------------+
|             Leg Press |     Maquina | Intermediario |
|                       |             |               |
+-----------------------+-------------+---------------+
| Bulgarian Split Squat |  Bodyweight |         Facil |
|                       |             |               |
+-----------------------+-------------+---------------+

Cada equipamento vai ter uma tabela de conjunto de exercícios, vai haver relações entre cada tabelas.

Cada equipamento tem vários exercícios.
Cada grupo muscular tem vários equipamentos

Vai ter as seguintes tabelas de grupo muscular:
- Quadriceps
- Hamstrings
- Costas
- Lats
- Ombros
- Peito
- Gémeos
- Antebraço
- Biceps
- Triceps
- Abdominais
- Traps


Vai haver tabelas de equipamentos com os seguintes campos:
- Maquina
- Bodyweight
- Cabos
- Halteres
- Elástico

Um utilizador pode visualizar e ver os exercícios de cada dificuldade.
Por exemplo se o utilizador só quiser exercícios de dificuldade avançada, vai clicar na tabela avançada que irá mostrar apenas exercícios com dificuldade avançada.

Mesma coisa com os equipamentos. Se o utilizador quiser apenas visualizar exercicios de bodyweight, irá escolher a tabela Bodyweight
que irá mostrar todos os exercícios disponíveis para bodyweight.

Igualmente com os grupos musculares, se quiser um musculo, irá obter todos os exercícios dísponíveis para esse grupo muscular.

Iremos obter as seguintes tabelas que podemos conseguir visualizar no site:

// Tabela das dificuldades

exercicios_iniciante
exercicios_intermediario
exercicios_avancado

// Tabelas de Equipamentos

exercicios_maquina
exercicios_bodyweight
exercicios_cabos
exercicios_halteres
exercicios_elastico

// Tabela de grupos musculares

exercicios_peito
exercicios_ombro
exercicios_tricep
exercicios_costas
exercicios_lats
exercicios_traps
exercicios_biceps
exercicios_quads
exercicios_hamstrings
exercicios_gemeos
exercicios_antebraco
exercicios_abdominais

Dia 11/08/2022

// Update

Devia se ter uma tabela em que mostre todos os exercícios disponíveis numa só tabela

Uma tabela chamada 'exercícios'
Essa tabela vai ter os seguintes campos:

exercícios (
nome_exercicio,
nome_equipamento,
nome_dificuldade,
nome_musculo
)

Já que tenho as tabelas de cada musculo, cada tabela muscular deve obter também um campo músculo

Igualmente como:

- exercicios_iniciante
- exercicios_intermediario
- exercicios_avancado
- exercicios_bodyweight
- exercicios_cabos
- exercicios_elastico
- exercicios_halteres
- exercicios_maquina
- exercicios_barra

E também devia existir uma tabela musculos

musculo(nome_musculo)

O nome_musculo na tabela musculo vai ser do tipo único.

Na tabela exercícios, vai obter conjunto de todos os exercícios existentes.

Todos os campos são únicos.

Dia 17/08/2022

Conclui os fundamentos para o início da construção da base de dados que se começou com o planeamento depois de seguida, criação das tabelas com MYSQL. Ouve alterações da organização das tabelas ao caminho da criação da base de dados. De certeza, futuramente irá haver ainda mais alterações, mas para já, este é os fundamentos e as principais tabelas para começar a criar o projeto.

A base de dados browsemuscle possui no total 25 tabelas.
A principal tabela vai ser a tabela exercícios. A tabela exercícios demonstra todos os exercícios disponiveis e criados dentro de browsemuscle. A partir dessa tabela, pode se criar e visualizar todos os exercícios existentes.

As seguintes tabelas aqui em baixo, são listas existentes que irão ser representados como tipo único para serem chave estrangeira de outras tabelas:

- musculo
- dificuldades
- equipamentos

Existem exercícios com equipamentos diferentes. Existem exercícios que se faz somente com peso corporal ou barra ou com cabos ou com halteres e etc... Podemos filtrar e visualizar apenas os exercícios com o equipamento adequado que desejamos visualizar. Por exemplo, eu só quero visualizar exercícios com equipamento barra. Então vou ter a possibilidade de visualizar apenas exerícios com equipamento barra. Também como os outros. Então existem para já:

- exercicios_bodyweight
- exercicios_cabos
- exercicios_elastico
- exercicios_halteres
- exercicios_maquina
- exercicios_barra

Também temos a possibilidade de filtrar e visualizar apenas exercícios com a dificuldade que desejamos. Por exemplo, quero apenas visualizar os exercícios de dificuldade iniciante. Então vamos obter as tabelas:

- exrcicios_iniciante
- exercicios_intermediario
- exercicios_avancado

Cada exercício atinge um músculo principal especifico. Cada tabela muscular, vai obter lista de exercícios que atinge esse musculo.
Temos as seguintes tabelas

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