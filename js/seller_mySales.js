var ctx = document.getElementById('myChart').getContext('2d');
var chart = new Chart(ctx, {
	// The type of chart we want to create
	type: 'line', // also try bar or other graph types

	// The data for our dataset
	data: {
		labels: ["Jun 2022", "Jul 2022", "Aug 2022", "Sep 2022", "Oct 2022", "Nov 2022", "Dec 2022", "Jan 2023", "Feb 2023", "Mar 2023", "Apr 2023", "May 2023"],
		// Information about the dataset
    datasets: [{
			label: "월 매출",
			backgroundColor: 'lightpink',
			borderColor: 'lightgrey',
			data: [26.4, 39.8, 66.8, 66.4, 40.6, 55.2, 77.4, 69.8, 57.8, 76, 110.8, 142.6],
		}]
	},

	// Configuration options
	options: {
    layout: {
      padding: 10,
    },
		legend: {
			position: 'bottom',
		},
		title: {
			display: true,
			text: '월별 누적 판매금액'
		},
		scales: {
			yAxes: [{
				scaleLabel: {
					display: true,
					labelString: '(단위: 만 원)'
				}
			}],
			xAxes: [{
				scaleLabel: {
					// display: true,
                    display: false,
					labelString: 'Month of the Year'
				}
			}]
		}
	}
});
