var canvas = document.getElementById("barChart");
var ctx = canvas.getContext('2d');
// We are only changing the chart type, so let's make that a global variable along with the chart object:
var chartType = 'bar';
var myBarChart;

// Global Options:
Chart.defaults.global.defaultFontColor = 'grey';
Chart.defaults.global.defaultFontSize = 16;

var data = {
  labels: ["2005", "2006", "2007", "2008", "2009", "2010"],
  datasets: [{
    label: "UFO Sightings",
    fill: true,
    lineTension: 0.1,
    backgroundColor: "rgba(0,255,0,0.4)",
    borderColor: "green", // The main line color
    borderCapStyle: '',
    pointBorderColor: "white",
    pointBackgroundColor: "yellow",
    pointBorderWidth: 1,
    pointHoverRadius: 8,
    pointHoverBackgroundColor: "yellow",
    pointHoverBorderColor: "green",
    pointHoverBorderWidth: 1,
    pointRadius: 4,
    pointHitRadius: 10,
    data: [250, 150, 200, 250, 300,350],
    spanGaps: true,
	height:400,
  }]
};

// Notice the scaleLabel at the same level as Ticks
var options = {
  scales: {
    yAxes: [{
      ticks: {
        beginAtZero: true
      }
    }]
  },
  title: {
    fontSize: 18,
    display: true,
    text: '',
    position: 'bottom'
  }
};


// We add an init function down here after the chart options are declared.

init();

function init() {
  // Chart declaration:
  myBarChart = new Chart(ctx, {
    type: chartType,
    data: data,
    options: options
  });
}

function toggleChart() {
  //destroy chart:
  myBarChart.destroy();
  //change chart type: 
  this.chartType = (this.chartType == 'bar') ? 'line' : 'bar';
  //restart chart:
  init();
}