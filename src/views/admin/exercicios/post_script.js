fetch('/api/exercicio/', {
	method: 'POST',
	headers: {
			'Content-Type': 'application/json'
	},

	body: JSON.stringify({
		nome: 'Supino',
		equipamento_id: 1,	// Barra
		dificuldade_id: 3, 	// Avançado
		musculo_id: 1 		// Peito
	})
})
	.then(res => {
		return res.json()
	})
	.then(data => console.log(data))
	.catch(error => console.log('Error.'))
	
