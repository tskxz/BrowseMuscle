const db = require('../../mysql');

exports.view = (req, res) => {
   
    db.getConnection((err, db) => {
        if(err) throw err; // not connected!
        console.log('Conected as ID ' + db.threadId);

        // User the connection 
        db.query('SELECT exercicios.id, exercicios.nome AS exercicio, equipamentos.nome as equipamento, dificuldades.nome as dificuldade, musculos.nome as musculo FROM exercicios JOIN equipamentos ON exercicios.equipamento_id = equipamentos.id JOIN dificuldades ON exercicios.dificuldade_id = dificuldades.id JOIN musculos ON exercicios.musculo_id = musculos.id', (err, rows) => {
            // When done with connection, release it
            db.release();
            if(!err){
                res.render('test/exercicios', {rows});
            } else {
                console.log(err);
            }
            console.log('The data from user table :\n', rows);

        });
    });
}