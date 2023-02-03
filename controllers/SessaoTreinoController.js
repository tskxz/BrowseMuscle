const SessaoTreinoService = require('../services/SessaoTreinoService');
const ExercicioService = require('../services/ExercicioService');
const crypto = require('crypto')

function makeid(length) {
    let result = '';
    const characters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz';
    const charactersLength = characters.length;
    let counter = 0;
    while (counter < length) {
      result += characters.charAt(Math.floor(Math.random() * charactersLength));
      counter += 1;
    }
    return result;
}


module.exports = {

    // Página Utilizador - Formulário para criar uma sessão de treino
    criar_sessao_treino: async (req, res) => {
        res.render('app/SessaoTreino/criar_sessao_treino', { user: req.user })
    },

    // Página Utilizador - Criar uma sessão de treino
    criar_sessao_treino_post: async (req, res) => {
        // Buscar os valores
        let nome = req.body.nome;
        let descricao = req.body.descricao;
        let userid = req.user.id;

        // Gerar um ID para sessão de treino
        let randomBytes = 0;
        randomBytes = crypto.randomBytes(4);
        const id_sessao = randomBytes.readUInt32BE();

        if (nome && descricao && userid) {
            // Verifica se a sessão do treino já existe com o mesmo nome, se existir, lanca erro
            let existeTreino = await SessaoTreinoService.buscarTodos_user_nome(userid, nome);
            if (existeTreino.length > 0) {
                req.flash('error', `Sessão ${nome} já existe!`)
            } else {
                // Cria a sessão de treino com o nome e descricao
                await SessaoTreinoService.criar(id_sessao, nome, descricao, userid);
                req.flash('success', `Sessão ${nome} criado com sucesso!`)
            }
        } else {
            req.flash('error', `Erro ao criar sessao de treino`)
        }
        res.redirect('/lista_sessao_treino')
    },

    // Página Utilizador - Ver as sessções de treino que o utilizador criou
    ver_sessoes_treinos: async (req, res) => {
        let json = { error: '', result: [] };

        // Pega o id do utilizador
        let userid = req.user.id;

        // Pega todos as sessões de treino criado pelo utilizador
        let SessoesTreino_user = await SessaoTreinoService.buscarTodos_user(userid);

        // Buscar os valores
        for (let i in SessoesTreino_user) {
            json.result.push({
                id: SessoesTreino_user[i].id,
                id_sessao: SessoesTreino_user[i].id_sessao,
                nome: SessoesTreino_user[i].nome,
                descricao: SessoesTreino_user[i].descricao,
                createdAt: SessoesTreino_user[i].createdAt.toLocaleDateString('pt-PT', { year: 'numeric', month: '2-digit', day: '2-digit' }),
                estado: SessoesTreino_user[i].estado

            });
        }

        // Mostrar as sessões de treino
        res.render('app/SessaoTreino/lista_sessoes_treinos', { user: req.user, rows: json.result, success: req.flash("success"), error: req.flash("error") })
    },

    // Página Utilizador - Ver a sessão de treino
    ver_sessao: async (req, res) => {
        let json = { error: '', result: [] };
        let exercicios = [];

        // Id da sessão de treino
        let id = req.params.id_sessao;

        // Id do utilizador 
        let userid = req.user.id

        // Pega as informações da sessão de treino através do ID
        let sessaoTreino = await SessaoTreinoService.buscarTodos_sessao(id);
        let nome_treino = sessaoTreino[0].nome
        let descricao_treino = sessaoTreino[0].descricao
        let createdAt_treino = sessaoTreino[0].createdAt.toLocaleDateString('pt-PT', { year: 'numeric', month: '2-digit', day: '2-digit' })
        let id_sessao = sessaoTreino[0].id_sessao
        let estado = sessaoTreino[0].estado

        // Verifica se existe a sessão de treino com esse id
        if (!sessaoTreino) {
            json.error = "Sessão de treino não encontrado!"
        } else {
            // Utilizador não pode visualizar as sessões de treino de outros utilizadores diferentes
            sessaoTreino_utilizador_id = sessaoTreino[0].utilizador_id
            if (sessaoTreino_utilizador_id != userid) {
                json.error = 'Não tem permissão!'
            } else {
                for (let i in sessaoTreino) {
                    json.result.push({
                        id: sessaoTreino[i].id,
                        id_sessao: sessaoTreino[i].id_sessao,
                        nome: sessaoTreino[i].nome,
                        descricao: sessaoTreino[i].descricao,
                        createdAt: sessaoTreino[i].createdAt.toLocaleDateString('pt-PT', { year: 'numeric', month: '2-digit', day: '2-digit' }),
                        estado: sessaoTreino[i].estado,
                        exercicio_id: sessaoTreino[i].exercicio_id,

                    });
                }
            }

            // Mostra os nomes de exercícios que está na sessão de treino
            nomes_exercicios = await SessaoTreinoService.buscar_nome_exercicio(id_sessao)
            for (let i in nomes_exercicios) {
                exercicios.push({
                    id_sessao: id_sessao,
                    nome: nomes_exercicios[i].nome,
                    carga: nomes_exercicios[i].carga,
                    reps_objetivo: nomes_exercicios[i].reps_objetivo,
                    series: nomes_exercicios[i].series,
                    exercicio_id: nomes_exercicios[i].exercicio_id,
                    concluido: nomes_exercicios[i].concluido
                })
            }

        }

        // Mostra a sessão de treino
        res.render('app/SessaoTreino/sessao_treino', {
            rows: json.result,
            user: req.user,
            nome_treino: nome_treino,
            descricao_treino: descricao_treino,
            createdAt_treino: createdAt_treino,
            id_sessao: id_sessao,
            exercicios: exercicios,
            estado: estado,
            success: req.flash("success"),
            error: req.flash("error")
        })

    },

    // Página Utilizador - Página para definir exercícios e objetivo de número de repetições para a sessão de treino
    definir_sessao_treino: async (req, res) => {
        let json = { error: '', result: [] };

        let id_sessao = req.params.id_sessao
        let userid = req.user.id

        let sessaoTreino = await SessaoTreinoService.buscarUm(id_sessao);
        let exercicios = await ExercicioService.buscarTodos();

        if (!sessaoTreino) {
            json.result = "Sessão de treino não encontrado!"
        } else {
            sessaoTreino_utilizador_id = sessaoTreino[0].utilizador_id
            if (sessaoTreino_utilizador_id != userid) {
                json.result = 'Não tem permissão!'
            } else {
                json.result.push({
                    id: sessaoTreino[0].id,
                    id_sessao: sessaoTreino[0].id_sessao,
                    nome: sessaoTreino[0].nome,
                    descricao: sessaoTreino[0].descricao,
                    createdAt: sessaoTreino[0].createdAt.toLocaleDateString('pt-PT', { year: 'numeric', month: '2-digit', day: '2-digit' }),
                    exercicio_id: sessaoTreino[0].exercicio_id,
                    estado: sessaoTreino[0].estado,
                    series: sessaoTreino[0].series,
                    carga: sessaoTreino[0].carga,
                    reps_objetivo: sessaoTreino[0].reps_objetivo,
                })
            }
        }

        res.render('app/SessaoTreino/definir_objetivo_sessao', {
            rows: json.result,
            user: req.user,
            exercicios: exercicios,
            id_sessao: id_sessao
        })

    },
    // Página Utilizador - Definir exercícios e objetivo de número de repetições para a sessão de treino
    definir_sessao_treino_post: async (req, res) => {
        let json = { error: '', result: [] }

        let id_sessao = req.params.id_sessao;
        let userid = req.user.id;
        let carga = req.body.carga;
        let reps_objetivo = req.body.reps_objetivo;
        let exercicio_id = req.body.exercicio_id;
        let series = req.body.series;

        let sessaoTreino = await SessaoTreinoService.buscarUm(id_sessao);

        nome = sessaoTreino[0].nome
        descricao = sessaoTreino[0].descricao
        createdAt = sessaoTreino[0].createdAt

        if (carga && reps_objetivo && exercicio_id && series) {
            // Inserir e definir os objetivos do exercício da sessão de treino
            let definido = await SessaoTreinoService.definir_objetivo_exercicio(id_sessao, userid, exercicio_id, carga, reps_objetivo, series, nome, descricao, createdAt)
            if (!definido) {
                json.result = "error"
            } else {
                json.result = "success!"
                req.flash('success', `Realizado com sucesso!`)
            }
        } else {
            json.result = "error"
            req.flash('error', `Erro ao adicionar o exercício`)
        }

        // Após definir os objetivos, vai ser redirecionado para a sessão de treino
        res.redirect(`/ver_sessao_treino/${id_sessao}`)
    },

    // Página Utilizador - Concluir a sessão de treino
    concluir_sessao_treino_post: async (req, res) => {

        // Usa o serviço para concluir o treino
        let id_sessao = req.params.id_sessao;
        let sessao_concluido = await SessaoTreinoService.concluirTreino(id_sessao)

        // Verifica se foi finalizado
        if (!sessao_concluido) {
            req.flash('error', `Erro!`)
        } else {
            req.flash('success', `Finalizado com sucesso!`)
        }
        res.redirect(`/lista_sessao_treino`)

    },

    // Página Utilizador - Página para definir número de repetições que o utilizador executou no exercício
    definir_reps: async (req, res) => {
        let json = { error: '', result: [] }

        let id_sessao = req.params.id_sessao;
        let exercicio_id = req.params.exercicio_id
        let exercicios = await SessaoTreinoService.buscarUmSessaoExercicio(id_sessao, exercicio_id)

        json.result = {
            id_sessao: id_sessao,
            id_exercicio: exercicio_id,
            carga: exercicios[0].carga,
            reps_objetivo: exercicios[0].reps_objetivo,
            reps_set1: exercicios[0].reps_set1,
            reps_set2: exercicios[0].reps_set2,
            reps_set3: exercicios[0].reps_set3,

        }

        // Mostra o formulário para definir o número de repetições do exercício
        res.render('app/SessaoTreino/definir_reps', { user: req.user, rows: exercicios, id_sessao: id_sessao, exercicio_id: exercicio_id, success: req.flash("success"), error: req.flash("error") })
    },

    // Página Utilizador - Definir número de repetições que o utilizador executou no exercício
    definir_reps_post: async (req, res) => {

        let id_sessao = req.params.id_sessao;
        let exercicio_id = req.params.exercicio_id

        reps_set1 = req.body.reps_set1
        reps_set2 = req.body.reps_set2
        reps_set3 = req.body.reps_set3
        reps_set4 = req.body.reps_set4
        reps_set5 = req.body.reps_set5

        // Chama o serviço para concluir o exercício após definir número de repetições
        let exercicio_concluido = await SessaoTreinoService.concluirExercicio(id_sessao, exercicio_id)

        // Chama o serviço para definir o número de repetições do exercício realizado
        await SessaoTreinoService.definirReps(reps_set1, reps_set2, reps_set3, reps_set4, reps_set5, id_sessao, exercicio_id)
        if (!exercicio_concluido) {
            req.flash('error', `Erro!`)
        } else {
            await SessaoTreinoService.emProgresso(id_sessao)
            req.flash('success', `Apontado com sucesso!`)
        }

        // Redireciona para a sessão de treino
        res.redirect(`/ver_sessao_treino/${id_sessao}`)
    },

    // Página Utilizador - Apaga a sessão de treino
    apagar_sessao_treino: async (req, res) => {
        let json = { error: '', result: [] };
        // Chama o serviço apagar para apagar o dado através do id
        let apagado = await SessaoTreinoService.apagar(req.params.id_sessao);
        if (apagado) {
            res.redirect('/lista_sessao_treino')
        }
    },

    grafico_sessao_treino: async (req, res) => {
        let json = { error: '', result: [] };
        let exercicios = [];

        // Id da sessão de treino
        let id = req.params.id_sessao;

        // Id do utilizador 
        let userid = req.user.id

        // Pega as informações da sessão de treino através do ID
        let sessaoTreino = await SessaoTreinoService.buscarTodos_sessao(id);
        let nome_treino = sessaoTreino[0].nome
        let descricao_treino = sessaoTreino[0].descricao
        let createdAt_treino = sessaoTreino[0].createdAt.toLocaleDateString('pt-PT', { year: 'numeric', month: '2-digit', day: '2-digit' })
        let id_sessao = sessaoTreino[0].id_sessao
        let estado = sessaoTreino[0].estado

        // Verifica se existe a sessão de treino com esse id
        if (!sessaoTreino) {
            json.error = "Sessão de treino não encontrado!"
        } else {
            // Utilizador não pode visualizar as sessões de treino de outros utilizadores diferentes
            sessaoTreino_utilizador_id = sessaoTreino[0].utilizador_id
            if (sessaoTreino_utilizador_id != userid) {
                json.error = 'Não tem permissão!'
            } else {
                for (let i in sessaoTreino) {
                    json.result.push({
                        id: sessaoTreino[i].id,
                        id_sessao: sessaoTreino[i].id_sessao,
                        nome: sessaoTreino[i].nome,
                        descricao: sessaoTreino[i].descricao,
                        createdAt: sessaoTreino[i].createdAt.toLocaleDateString('pt-PT', { year: 'numeric', month: '2-digit', day: '2-digit' }),
                        estado: sessaoTreino[i].estado,
                        exercicio_id: sessaoTreino[i].exercicio_id,

                    });
                }
            }

            // Mostra os nomes de exercícios que está na sessão de treino
            nomes_exercicios = await SessaoTreinoService.buscar_nome_exercicio(id_sessao)
            for (let i in nomes_exercicios) {
                exercicios.push({
                    id_sessao: id_sessao,
                    nome: nomes_exercicios[i].nome,
                    carga: nomes_exercicios[i].carga,
                    reps_objetivo: nomes_exercicios[i].reps_objetivo,
                    reps_set1: nomes_exercicios[i].reps_set1,
                    reps_set2: nomes_exercicios[i].reps_set2,
                    reps_set3: nomes_exercicios[i].reps_set3,
                    reps_set4: nomes_exercicios[i].reps_set4,
                    reps_set5: nomes_exercicios[i].reps_set5,
                    series: nomes_exercicios[i].series,
                    exercicio_id: nomes_exercicios[i].exercicio_id,
                    var_grafico: makeid(5),
                    concluido: nomes_exercicios[i].concluido
                })
            }

        }

        console.log(exercicios)

        // Mostra a sessão de treino
        res.render('app/SessaoTreino/grafico_sessao_treino', {
            rows: json.result,
            user: req.user,
            nome_treino: nome_treino,
            descricao_treino: descricao_treino,
            createdAt_treino: createdAt_treino,
            id_sessao: id_sessao,
            exercicios: exercicios,
            estado: estado,
            success: req.flash("success"),
            error: req.flash("error")
        })
    }
}