<<<<<<< HEAD
fetch('http://4acd-132-145-18-76.eu.ngrok.io/api/exercicio/', {
=======
fetch('https://4acd-132-145-18-76.eu.ngrok.io/api/exercicio/', {
>>>>>>> 8f1bb38653ec36287bf534dcd586a56b5cf4d0c3
	method: 'POST',
	headers: {
			'Content-Type': 'application/json'
	},

	body: JSON.stringify({
		nome_exercicio: 'Supino',
		nome_equipamento: 'barra',
		nome_dificuldade: 'avancado',
		nome_musculo: 'peito'
	})
})
	.then(res => {
		return res.json()
	})
	.then(data => console.log(data))
	.catch(error => console.log('Error.'))