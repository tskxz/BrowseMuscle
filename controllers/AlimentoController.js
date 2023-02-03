const AlimentoService = require('../services/AlimentoService')
const MarcasService = require('../services/MarcasService')
module.exports = {

    // API - JSON - Visualizar todos os Alimentos existentes dentro da tabela Alimentos
    visualizarTodos: async (req, res) => {
        let json = { error: '', result: [] };

        let alimento = await AlimentoService.visualizarTodos();
        for (let i in alimento) {
            json.result.push({
                id: alimento[i].id,
                nome: alimento[i].nome,
                proteina: alimento[i].proteina,
                carbs: alimento[i].carbs,
                gordura: alimento[i].gordura,
                calorias: alimento[i].calorias
            })
        }
        res.json(json);
    },

    // API - JSON - Visualizar apenas um alimento através do parametro id
    buscarUm: async (req, res) => {
        let json = { error: '', result: [] };

        let id = req.params.id;
        let alimento = await AlimentoService.buscarUm(id);

        if (alimento) {
            json.result = alimento;
        }
        res.json(json);
    },

    // API - JSON Inserir um alimento através do body
    inserir: async (req, res) => {
        let json = { error: '', result: [] };

        // Receber os seguintes valores através do body
        let nome = req.body.nome;
        let proteina = req.body.proteina;
        let carbs = req.body.carbs;
        let gordura = req.body.gordura;
        let calorias = req.body.calorias;

        // Verifica se contêm os valores
        if (nome && proteina && carbs && gordura) {
            // Insere o alimento
            let AlimentoId = await AlimentoService.inserir(nome, proteina, carbs, gordura, calorias);
            json.result = {
                id: AlimentoId,
                nome,
                proteina,
                carbs,
                gordura,
                calorias
            }
        } else {
            json.error = 'Error!';
        }

        res.json(json);
    },

    // API - JSON - Alterar dados do alimento através do body
    alterar: async (req, res) => {
        let json = { error: '', result: [] };

        // Receber os seguintes valores através do body
        let id = req.params.id;
        let nome = req.body.nome;
        let proteina = req.body.proteina;
        let carbs = req.body.carbs;
        let gordura = req.body.gordura;
        let calorias = req.body.calorias;

        // Verifica se contêm valores
        if (id && nome && proteina && carbs && gordura) {
            // Usa o serviço alterar com os valores recebidos
            await AlimentoService.alterar(id, nome, proteina, carbs, gordura, calorias)
            json.result = {
                id,
                nome,
                proteina,
                carbs,
                gordura,
                calorias
            }
        } else {
            json.error = 'Error!';
        }

        res.json(json)
    },

    // API - JSON - Apaga um alimento através do id
    apagar: async (req, res) => {
        let json = { error: '', result: [] };

        // Chama o serviço apagar e apaga através do parametro do id passado pelo URL
        await AlimentoService.apagar(req.params.id);

        // Envia resposta
        res.json(json)
    },

    // Página - Visualização dos Alimentos na página principal da tabela Alimentos
    view: async (req, res) => {
        let json = { error: '', result: [] };

        // Visualiza todos os alimentos visíveis
        let Alimentos = await AlimentoService.visualizarTodos();

        for (let i in Alimentos) {
            json.result.push({
                id: Alimentos[i].id,
                alimento: Alimentos[i].alimento,
                proteina: Alimentos[i].proteina,
                carbs: Alimentos[i].carbs,
                gordura: Alimentos[i].gordura,
                calorias: Alimentos[i].calorias,
                estado: Alimentos[i].estado,
                utilizador_id: Alimentos[i].utilizador_id,
                marca: Alimentos[i].marca
            })
        }

        // Mostra os alimentos na tabela
        rows = json.result;
        res.render('app/Alimentos/tabela_alimentos', { layout: 'tabela_alimentos', rows, user: req.user, })
    },

    // Página - Visualização dos Alimentos do utilizador que criou
    visualizarAlimentosUtilizador: async (req, res) => {
        let json = { error: '', result: [] };

        let utilizador_id = req.user.id

        // Visualiza todos os alimentos criado pelo utilizador
        let Alimentos = await AlimentoService.visualizarAlimentosUser(utilizador_id);

        for (let i in Alimentos) {
            json.result.push({
                id: Alimentos[i].id,
                alimento: Alimentos[i].alimento,
                proteina: Alimentos[i].proteina,
                carbs: Alimentos[i].carbs,
                gordura: Alimentos[i].gordura,
                calorias: Alimentos[i].calorias,
                estado: Alimentos[i].estado,
                utilizador_id: Alimentos[i].utilizador_id,
                marca: Alimentos[i].marca
            })
        }

        // Mostra os alimentos na tabela
        rows = json.result;
        res.render('app/Alimentos/tabela_utilizador_alimentos', { layout: 'tabela_alimentos', rows, user: req.user, })
    },

    // Página de administração - Visualização dos Alimentos
    main: async (req, res) => {
        let json = { error: '', result: [] };

        // Visualiza todos os alimentos
        let Alimentos = await AlimentoService.visualizarTodosAdmin();

        for (let i in Alimentos) {
            json.result.push({
                alimento_id: Alimentos[i].id,
                alimento: Alimentos[i].alimento,
                proteina: Alimentos[i].proteina,
                carbs: Alimentos[i].carbs,
                gordura: Alimentos[i].gordura,
                calorias: Alimentos[i].calorias,
                marca: Alimentos[i].marca,
                estado: Alimentos[i].estado,

            })
        }

        // Mostra os alimentos na tabela de administração
        rows = json.result;
        res.render('admin/Alimentos/tabela_alimentos', { layout: 'tabela_alimentos_crud', rows, user: req.user })
    },

    // Página de administração - Pesquisar através da barra de pesquisa
    pesquisarAlimento_admin: async (req, res) => {
        let json = { error: '', result: [] };

        // Pega o valor que nos foi enviado na barra de pesquisa
        let pesquisa = req.body.pesquisa;

        // Com o valor que foi nos enviado, vai chamar o serviço pesquisarAlimento para ver os alimentos que correspondem com o valor
        let alimento = await AlimentoService.pesquisarAlimento(pesquisa);

        if (alimento) {
            json.result = alimento;
        } else {
            json.error = "err"
        }

        rows = json.result;

        // Quantidade de resultados encontrados semelhantes
        var keyCount = Object.keys(rows).length;

        // Mostra os alimentos na tabela
        res.render('admin/Alimentos/pesquisa', { layout: 'tabela_alimentos_crud', rows, user: req.user, alert: `${keyCount} resultados encontrados!` })


    },

    // Página Alimentos - Pesquisar através da barra de pesquisa
    pesquisarAlimento: async (req, res) => {
        let json = { error: '', result: [] };

        // Pega o valor que nos foi enviado na barra de pesquisa
        let pesquisa = req.body.pesquisa;

        // Com o valor que foi nos enviado, vai chamar o serviço pesquisarAlimento para ver os alimentos que correspondem com o valor
        let alimento = await AlimentoService.pesquisarAlimento(pesquisa);

        if (alimento) {
            json.result = alimento;
        } else {
            json.error = "err"
        }

        // Quantidade de resultados encontrados semelhantes
        rows = json.result;
        var keyCount = Object.keys(rows).length;

        // Mostra os alimentos na tabela
        res.render('app/Alimentos/pesquisa', { layout: 'tabela_alimentos', rows, user: req.user, alert: `${keyCount} resultados encontrados!` })


    },

    // Página de administração - Adicionar alimento
    adicionar: async (req, res) => {
        let json = { error: '', result: [] };

        // Pega os valores através do body
        let nome = req.body.nome;
        let proteina = req.body.proteina;
        let carbs = req.body.carbs;
        let gordura = req.body.gordura;
        let calorias = req.body.calorias;
        let id_marca = req.body.id_marca;
        let Marcas = await MarcasService.visualizarTodos();
        rows_marcas = Marcas
        if (nome && proteina && carbs && gordura && calorias && id_marca) {


            // Insere alimento com os valores recebidos
            let AlimentoId = await AlimentoService.inserir(nome, proteina, carbs, gordura, calorias, id_marca);
            json.result = {
                id: AlimentoId,
                nome,
                proteina,
                carbs,
                gordura,
                calorias,
                id_marca
            };

            // Após ser inserido, mostra o alert
            res.render('admin/Alimentos/adicionar_alimentos', { alert: `${nome} Adicionado com sucesso`, user: req.user, rows_marcas });

        } else {
            json.error = 'Error!';
        }

    },

    // Página Utilizador - Formulário para inserir alimento
    adicionar_pedido_alimento: async (req, res) => {

        let Marcas = await MarcasService.visualizarTodos();
        rows_marcas = Marcas

        // Mostra a página para preencher os dados e inserir alimento
        res.render('app/Alimentos/adicionar_alimento_pedido', { user: req.user, rows_marcas });
    },

    // Página Utilizador - Inserir pedido de alimentos
    adicionar_pedido_alimento_post: async (req, res) => {
        let json = { error: '', result: [] };

        // Pega os valores através do body
        let nome = req.body.nome;
        let proteina = req.body.proteina;
        let carbs = req.body.carbs;
        let gordura = req.body.gordura;
        let calorias = req.body.calorias;
        let id_marca = req.body.id_marca;
        let Marcas = await MarcasService.visualizarTodos();
        let utilizador_id = req.user.id
        rows_marcas = Marcas

        // Verifica se os valores estão preenchidos
        if (nome && proteina && carbs && gordura && calorias && id_marca) {
            // Insere alimento com os valores recebidos
            let AlimentoId = await AlimentoService.inserirPedido(nome, proteina, carbs, gordura, calorias, id_marca, utilizador_id);
            json.result = {
                id: AlimentoId,
                nome,
                proteina,
                carbs,
                gordura,
                calorias,
                id_marca,
                utilizador_id
            };

            // Após ser inserido, mostra o alert
            res.render('app/Alimentos/adicionar_alimento_pedido', { alert: `${nome} Adicionado com sucesso`, user: req.user, rows_marcas });

        } else {
            json.error = 'Error!';
        }

    },

    // Página Administração - Formulário para inserir alimento
    adicionar_form: async (req, res) => {
        let Marcas = await MarcasService.visualizarTodos();
        rows_marcas = Marcas

        // Mostra a página para preencher os dados e inserir alimento
        res.render('admin/Alimentos/adicionar_alimentos', { user: req.user, rows_marcas });
    },


    // Página Administração - Eliminar um alimento
    eliminar: async (req, res) => {

        // Remove um alimento
        alimento = await AlimentoService.apagar(req.params.id);

        // Redireciona para a página principal se for apagado
        if (alimento) {
            res.redirect('/admin/main_alimentos/')
        }
    },

    // Página Administração - Atualizar Alimento
    atualizar: async (req, res) => {
        let json = { error: '', result: [] };

        // Obtém os valores obtidos através do body
        let id = req.params.id;
        let nome = req.body.nome;
        let proteina = req.body.proteina;
        let carbs = req.body.carbs;
        let gordura = req.body.gordura;
        let calorias = req.body.calorias;

        // Se conter os valores
        if (id && nome && proteina && carbs && gordura, calorias) {
            // Usa o serviço alterar com os valores obtidos
            await AlimentoService.alterar(id, nome, proteina, carbs, gordura, calorias);
            json.result = {
                id,
                nome,
                proteina,
                carbs,
                gordura,
                calorias
            };
            // Mostra o alert após alterar um valor do alimento
            res.render('admin/Alimentos/editar_alimento', { row, alert: `${nome} com id ${id} alterado com sucesso`, user: req.user, })


        } else {
            json.error = 'Error!';
        }

        // Buscar as informações do alimento
        row = await AlimentoService.buscarUm(id);

        // Com as informações do alimento, mostra por pré-definido os valores dentro dos inputs para alterar algo
        res.render('admin/Alimentos/editar_alimento', { row, user: req.user, })

    },

    // Página Administração - Confirma para que o alimento vá para a página principal
    confirmar: async (req, res) => {
        let json = { error: '', result: [] };
        alimento = await AlimentoService.confirmarAlimento(req.params.id);

        // Redireciona para a página principal se for apagado
        if (alimento) {
            res.redirect('/admin/main_alimentos/')
        }
    },

    // Página - Cálculo de valores do alimento
    calculo_calorias: async (req, res) => {
        res.render('app/Ferramentas/alimento_calculo_calorias', { user: req.user })
    },

    // Página - Cálculo de valores do alimento
    calculo_calorias_post: async (req, res) => {

        const protein = parseInt(req.body.protein);
        const carbs = parseInt(req.body.carbs);
        const fat = parseInt(req.body.fat);
        const calories = (protein * 4) + (carbs * 4) + (fat * 9);

        res.render('app/Ferramentas/alimento_calculo_calorias', { alert: calories, user: req.user })
    },

    // Página - Gráfico do Alimento
    grafico: async (req, res) => {
        let json = { error: '', result: [] };

        // Obtém os valores obtidos através do body
        let id = req.params.id;

        // Buscar as informações do alimento
        row = await AlimentoService.buscarUmAlimento(id);
        console.log(row)

        // Com as informações do alimento, mostra por pré-definido os valores dentro dos inputs para alterar algo
        res.render('app/Alimentos/alimento_grafico', { layout: 'grafico', row, user: req.user, })

    },

    // Página para calcular macros
    calculo_macros: async (req, res) => {
        res.render('app/Ferramentas/calc_quant_calorias', { user: req.user })
    },

    calculo_macros_post: async (req, res) => {
        let peso = req.body.peso;
        let altura = req.body.altura;
        let idade = req.body.idade;
        let sexo = req.body.sexo;

        // Aplicar a fórmula de Harris-Benedict para calcular a TMB
        var TMB;
        // Se for homem
        if (sexo === 'male') {
            TMB = (10 * peso) + (6.25 * altura) - (5 * idade) + 5;
            proteina = 2 * peso;                  // Obtêm quantidade de proteina em gramas
            gordura = 0.5 * peso;                 // Obtêm quantidade de gordura em gramas
            proteina_cals = proteina * 4;       // Obtêm quantidade de proteina em kcal
            gordura_cals = gordura * 9;         // Obtêm quantidade de gordura em kcal
            sum_proteina_gordura_cals = proteina_cals + gordura_cals; // Soma calorias proteina e gordura
            carbs_cals = TMB - sum_proteina_gordura_cals;              // Obtêm quantidade de carbs em kcal
            carbs = carbs_cals / 4;                                    // Obtêm quantidade de carbs em gramas

        } else {
            // Se for mulher
            TMB = (10 * peso) + (6.25 * altura) - (5 * idade) - 161;
            proteina = 2 * peso;  // Obtêm quantidade de proteina em gramas
            gordura = 0.5 * peso; // Obtêm quantidade de gordura em gramas
            proteina_cals = proteina * 4;   // Obtêm quantidade de proteina em kcal
            gordura_cals = gordura * 9;     // Obtêm quantidade de gordura em kcal
            sum_proteina_gordura_cals = proteina_cals + gordura_cals; // Soma calorias proteina e gordura
            carbs_cals = TMB - sum_proteina_gordura_cals; // Obtêm quantidade de carbs em kcal
            carbs = carbs_cals / 4; // Obtêm quantidade de carbs em gramas
        }
        res.render('app/Ferramentas/calc_quant_calorias', {
            user: req.user,
            TMB: TMB,
            proteina: proteina,
            carbs: carbs,
            gordura: gordura
        })
    }





}