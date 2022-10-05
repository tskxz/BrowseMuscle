const AbdominaisService = require('../../services/Musculos/AbdominaisService');

module.exports = {

	visualizarTodos: async(req, res) => {
		let json = {error: '', result:[]};

		let abdominal = await AbdominaisService.visualizarTodos();

		for(let i in abdominal){
			json.result.push({
				id: abdominal[i].id,
				nome_exercicio: abdominal[i].nome_exercicio,
                nome_equipamento: abdominal[i].nome_equipamento,
                nome_dificuldade: abdominal[i].nome_dificuldade,
                nome_musculo: abdominal[i].nome_musculo
			});
		}
		res.setHeader('Access-Control-Allow-Origin', '*');
		res.setHeader('Access-Control-Allow-Headers', 'Origin, Accept, Accept-  Version, Content-Length, Content-MD5, Content-Type, Date, X-Api-Version, X-Response-Time, X-PINGOTHER, X-CSRF-Token,Authorization');
		res.setHeader('Access-Control-Allow-Methods', 'GET, POST, PUT, DELETE, PATCH, OPTIONS');
		res.json(json);
	}
}