function GoogleChart(json,_isDonat,_isBar){
    var _bar;
    _bar = Boolean(_isBar);
    if (_bar) {
        DrawBar(json);
    }
    else{
        DrawPie(json,_isDonat);
    }
}

function DrawBar(json){
    google.charts.load('current', {'packages':['bar']});
    google.charts.setOnLoadCallback(drawChart);

    function drawChart() {

        var data = google.visualization.arrayToDataTable(json);
        var options = {
                title: '',
                width: 900,
                legend: { position: 'none' },
                chart: { title: '',
                         subtitle: '' },
                bars: 'horizontal', // Required for Material Bar Charts.
                axes: {
                  x: {
                    0: { side: 'top', label: '$'} // Top x-axis.
                  }
                },
                bar: { groupWidth: "90%" }
            };
        var chart = new google.charts.Bar(document.getElementById('controlAddIn'));
        chart.draw(data, options);
        // console.log(data);
        // console.log(options);
    }
}

function DrawPie(json,_isDonat){
    google.charts.load('current', {'packages':['corechart']});
    google.charts.setOnLoadCallback(drawChart);
    function drawChart() {
        var data = google.visualization.arrayToDataTable(json);
        var _donut; 
        _donat = Boolean(_isDonat);
        if (_donat) {
            var options = {
                title: '',
                pieHole:0.4,
            };
        }
        else
        {
            var options = {
                title: '',
                is3D:true,              
            }
        }

        var chart = new google.visualization.PieChart(document.getElementById('controlAddIn'));

        chart.draw(data, options);
        // console.log(data);
        // console.log(options);
    }
}
        