<h1 align="center">BrowseMuscle</h1>

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

| Exercício | Equipamento | Dificuldade | Musculo | Link |
|:---------:|-------------|-------------|---------|------|



Cada exercício atinge um músculo principal especifico. Cada tabela muscular, vai obter lista de exercícios que atinge esse musculo.
As seguintes tabelas têm exatamente **os mesmos campos** que a tabela exercícios

|   Musculo  |
|:----------:|
| antebraco  |
| bicep      |
| costas     |
| gemeos     |
| hamstrings |
| lats       |
| ombros     |
| peito      |
| quadriceps |
| traps      |
| triceps    |
| gluteo     |

Vão ter as tabelas de equipamentos que temos a possibilidade de visualizar todos exercícios com aquele equipamento

| Equipamentos |
|:------------:|
| bodyweight   |
| cabos        |
| elastico     |
| halteres     |
| maquina      |
| barra        |
| gluteo       |

As tabelas dificuldades acontece o mesmo do que a tabela de equipamentos
Também temos a possibilidade de filtrar e visualizar apenas exercícios com a dificuldade que desejamos.  Então vamos obter as tabelas:

|  Dificuldades |
|:-------------:|
| iniciante     |
| intermediario |
| avancado      |

## Começar a usar o projeto
Instruções para rodar o projeto localmente.  Para rodar o projeto localmente e testar, segue as seguintes simples instruções

### Pré-requisitos
- npm
```
npm install npm@latest -g
```
- node.js
Instalar node.js no website oficial https://nodejs.org/en/

- mysql server ou xampp
Instalar mysql server and mysql workbench https://dev.mysql.com/downloads/installer/
OU
Instalar xampp https://www.apachefriends.org/

### Instalação
Segue os seguintes passos e instruções para instalar e preparar o ambiente de trabalho para o projeto
1. Clonar o repositório
```
git clone https://github.com/8fn/BrowseMuscle.git
```
2.   Instalar npm packages
```
npm install
```
3. Editar var.env a depender com as configurações do teu mysql server

	```env
	PORT=3000

<<<<<<< HEAD
	DB_HOST=4acd-132-145-18-76.eu.ngrok.io
=======
	DB_HOST=localhost:3000
>>>>>>> 8f1bb38653ec36287bf534dcd586a56b5cf4d0c3
	DB_USER=root
	DB_PASS=
	DB_PASS_LINUX=root
	DB_NAME=browsemuscle
	```

	`src/mysql`
	```js
	const connection = mysql.createConnection({
			host: process.env.DB_HOST,
			user: process.env.DB_USER,
			password: process.env.DB_PASS,
			database: process.env.DB_NAME,
			multipleStatements: true
	});
	```

## Uso do projeto

No `routes.js` estão definidos as rotas e estão as seguintes rotas que vao ser usadas para o servidor API

```js
router.get('/view', function(req, res) {
	res.sendFile(path.join(__dirname, '/views/exercicios.html'))
})

router.get('/', function(req, res){
	res.sendFile(path.join(__dirname, '/views/tabela_exercicios.html'))
})

router.get('/exercicios', ExercicioController.buscarTodos)
router.get('/exercicio/:id', ExercicioController.buscarUm);
router.post('/exercicio', ExercicioController.inserir);
router.put('/exercicio/:id', ExercicioController.alterar);
router.delete('/exercicio/:id', ExercicioController.apagar);

router.get('/musculos', MusculoController.visualizarTodos);
```

Existem  as seguintes rotas:

GET
- `/`
- `/exercicios`
- `/exercicio/:id`
- `/view`
- `/musculos`

POST
- `/exercicio`

PUT
- `/exercicio/:id`

DELETE
- `/exercicio/:id`

Ao iniciar o servidor que está definido em `package.json` com

```json
"start": "nodemon ./src/server.js",
```
```
npm start
```

O resultado ao iniciar o projeto era suposto ser
```
[nodemon] starting `node ./src/server.js`
<<<<<<< HEAD
Servidor a rodar em: http://4acd-132-145-18-76.eu.ngrok.io/
=======
Servidor a rodar em: https://4acd-132-145-18-76.eu.ngrok.io/
>>>>>>> 8f1bb38653ec36287bf534dcd586a56b5cf4d0c3
Conectado base de dados: browsemuscle
```

Utilizo o POSTMAN para testar a API do projeto
Website oficial do POSTMAN - https://www.postman.com/

Ao acessar o método GET para ter todas os dados exercícios existentes

![api_exercicios](https://raw.githubusercontent.com/8fn/BrowseMuscle/master/docs/imgs/api_exercicios.PNG "api_exercicios")  

Ao acessar o método GET para ter apenas um dado ao pesquisar por ID
![api_exercicio_pesquisa](https://raw.githubusercontent.com/8fn/BrowseMuscle/master/docs/imgs/api_exercicio_pesquisa.PNG "api_exercicio_pesquisa")  

Ao acessar o método POST para inserir um novo dado `bent over row`
![api_exercicio_bentover](https://raw.githubusercontent.com/8fn/BrowseMuscle/master/docs/imgs/api_exercicio_post_bentover.PNG "api_exercicio_bentover")

Ao acessar o método PUT para alterar o dado recém criado de
```json
"nome_dificuldade": "intermediario"
```
para

```json
"nome_dificuldade": "avancado"
```

![api_exercicio_put](https://raw.githubusercontent.com/8fn/BrowseMuscle/master/docs/imgs/api_exercicio_put_bentover.PNG "api_exercicio_put")

## Tabela
![browsemuscle](https://raw.githubusercontent.com/8fn/BrowseMuscle/master/docs/imgs/browsemuscle01.PNG "browsemuscle")

## 🚧 - Updates

### Todas as Pull requests ao longo da produção do projeto
[Pull requests todos](https://github.com/8fn/BrowseMuscle/pulls?q=)

#### 25/09/2022
Adicionar método delete - [Pull request Apagar dados com API delete](https://github.com/8fn/BrowseMuscle/pull/55)
#### 24/09/2022
Ter os valores para PUT form - [Atraves do URL, buscar os parametros para ter os valores do dado](https://github.com/8fn/BrowseMuscle/pull/52)  
Preencher no input os campos com valores - [Pull request valores no input](https://github.com/8fn/BrowseMuscle/pull/53)


#### 22/09/2022
Editar e apagar - [Pull request para acrescentar botoes editar e apagar dado na tabela exercícios](https://github.com/8fn/BrowseMuscle/pull/48)  
Resolver o erro foreign key constrain - [Pull request para resolver o erro do método PUT e DELETE](https://github.com/8fn/BrowseMuscle/pull/50)

#### 17/09/2022
Assets - [Pull request para adicionar js/css bootstrap](https://github.com/8fn/BrowseMuscle/pull/43)

#### 8/09/2022
Criar uma nova rota para app página principal - [Pull request mudar a estrutura e acrescentar rotas](https://github.com/8fn/BrowseMuscle/pull/42)

#### 7/09/2022
Insert another tables - [Pull request insert data in another tables](https://github.com/8fn/BrowseMuscle/pull/36)

#### 31/08/2022

Format Form data - [Pull request Form Data Bootstrap](https://github.com/8fn/BrowseMuscle/pull/30)  
Top Navegation - [Pull request top navegation bar table](https://github.com/8fn/BrowseMuscle/pull/29)  
Add link column - [Pull request nova coluna link](https://github.com/8fn/BrowseMuscle/pull/27)  
Form data - [Pull Request Form Data for POST](https://github.com/8fn/BrowseMuscle/pull/24)  

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
