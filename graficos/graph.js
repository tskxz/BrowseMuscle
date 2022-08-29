const ctx = document.getElementById('lineChart').getContext('2d');

const data = {
	labels: ['Proteina', 'Hidratos de Carbono', 'Gordura'],
	datasets: [
	{
		label: 'Dataset 1',
		data: [12, 29, 12],
		backgroundColor: [
            'rgba(255, 99, 132)',
            'rgba(54, 162, 235)',
            'rgba(255, 206, 86)',
        ],
	}]
}

const lineChart = new Chart(ctx, {
    type: 'pie',
    data: data,
    options: {
    	responsive: false,
    	plugins: {
    		legend: {
    			position: 'top',
    		},
    		title: {
    			display: true,
    			text: 'Macronutrientes da pizza hut carbonara - 100g'
    		}
    	}
    }
});
