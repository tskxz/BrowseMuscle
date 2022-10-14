const EquipamentosService = require('../../services/Equipamentos/EquipamentosService');

module.exports = {

	visualizarTodos: async(req, res) => {
		let json = {error: '', result:[]};

		let equipamento = await EquipamentosService.visualizarTodos();

		// Visualizar todos os exercícios com equipamento

		for(let i in equipamento){
			json.result.push({
				id: equipamento[i].id,
				nome: equipamento[i].nome,
			});
		}
		res.setHeader('Access-Control-Allow-Origin', '*');
		res.setHeader('Access-Control-Allow-Headers', 'Origin, Accept, Accept-  Version, Content-Length, Content-MD5, Content-Type, Date, X-Api-Version, X-Response-Time, X-PINGOTHER, X-CSRF-Token,Authorization');
		res.setHeader('Access-Control-Allow-Methods', 'GET, POST, PUT, DELETE, PATCH, OPTIONS');
		res.json(json);
	}
}