<?php
include __DIR__.'/includes/header.php';
?>
				<h2>
				Bem vindo ao BrowseMuscle!
				</h2>
				<p style="text-align: center">
          <table class="table table-striped table-hover">
      			<tr class="bg-danger">
              <th>ID</th>
      				<th>Exercício</th>
      				<th>Equipamento</th>
      				<th>Dificuldade</th>
      				<th>Músculo</th>
      			</tr>
            <tbody id="myTable">

        		</tbody>
        	</table>
        		<div id="exercicios">

        	</div>

				</p>

			</div>
		</div>
	</div>
</div>

    <script src="https://npmcdn.com/tether@1.2.4/dist/js/tether.min.js"></script>


    <script src="./assets/js/jquery.min.js"></script>
    <script src="./assets/js/bootstrap.min.js"></script>
    <script src="./assets/js/scripts.js"></script>

	<script>
		fetch('http://localhost:3000/api/exercicios/')
			.then(res => res.json())
			.then(data => {
						  const nome_exercicios = data.result
						  console.log(nome_exercicios)
						  buildTable(nome_exercicios)

					})

		function renderNames(names){
			const container = document.getElementById('exercicios');
			container.innerHtml = '';
				for (const name of names) {
				  const p = document.createElement('p');
				  const textNode = document.createTextNode(name);
				  p.appendChild(textNode);
				  container.appendChild(p);
				}
		}

		function buildTable(data){
			var table = document.getElementById('myTable');

	  // Mostrar todos os dados e meter a primeira palavra em maisculo
	  if(data.length > 0){
		for(var i = 0; i<data.length; i++){
				  var row = ` <tr>
								  <td>${data[i].id}</td>
								  <td>${data[i].nome_exercicio.charAt(0).toUpperCase() + data[i].nome_exercicio.slice(1)}</td>
								  <td>${data[i].nome_equipamento.charAt(0).toUpperCase() + data[i].nome_equipamento.slice(1)}</td>
								  <td>${data[i].nome_dificuldade.charAt(0).toUpperCase() + data[i].nome_dificuldade.slice(1)}</td>
								  <td>${data[i].nome_musculo.charAt(0).toUpperCase() + data[i].nome_musculo.slice(1)}</td>
							  </tr>`
				  table.innerHTML += row
			  }
	  } else {
		var row = `<tr><td colspan="6" class="text-center">Nenhuma Vaga encontrada</td></tr>`;
		table.innerHTML += row;
	  }



		}
	function editar(id){
	  url = "http://localhost:3000/admin/update_exercicios?id=";
	  //console.log(id);
	   window.location = url + id;
	}

	function apagar(id){
	  url_api = "http://localhost:3000/api/exercicio/" + id;
	  console.log(url_api);
	  fetch(url_api, {
		method: 'delete',
		headers: {
		  'Content-Type': 'application/json'
		},

	  }).then(response => response.json());

	  window.location.href="http://localhost:3000/admin";
	}





	</script>

  </body>
</html>
