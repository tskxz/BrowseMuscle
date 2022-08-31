const LinkService = require('../services/LinkService');

module.exports = {

	visualizarTodos: async(req, res) => {
		let json = {error: '', result:[]};

		let link = await LinkService.visualizarTodos();

		for(let i in link){
			json.result.push({
				id: link[i].id,
				link: link[i].link
			});
		}
		res.setHeader('Access-Control-Allow-Origin', '*');
		res.setHeader('Access-Control-Allow-Headers', 'Origin, Accept, Accept-  Version, Content-Length, Content-MD5, Content-Type, Date, X-Api-Version, X-Response-Time, X-PINGOTHER, X-CSRF-Token,Authorization');
		res.setHeader('Access-Control-Allow-Methods', 'GET, POST, PUT, DELETE, PATCH, OPTIONS');
		res.json(json);
	},

	inserir: async(req, res) => {
		let json = {error: '', result:[]};

		let link = req.body.link;

		if(link){
			let linkId = await LinkService.inserir(link);
			json.result = {
				id: linkId,
				link
			}
		} else {
			json.error = 'Error!';
		}
		res.json(json);

	}
}