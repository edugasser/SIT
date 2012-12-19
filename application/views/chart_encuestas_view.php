<!DOCTYPE HTML>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<title>Gràfic resultat enquesta</title>
<?php if (!empty($data)){ foreach ($data as $row){			
					$array[($row->resultado)] = $row->total;
					  				 				 
				}
				for($i=1;$i<11;$i++){
					if (empty($array[$i])){
					     
						 $array[$i] = 0;
					}
				}
				}else{
					echo "<h2>Encara no hi ha dades suficients per realitzar una gràfica</h2>";
				}
				?>
		<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
		<script type="text/javascript">
$(function () {
    var chart;
    $(document).ready(function() {
        chart = new Highcharts.Chart({
            chart: {
                renderTo: 'container',
                type: 'column',
                margin: [ 50, 50, 100, 80]
            },
            title: {
                text: 'Gràfic enquesta'
            },
            xAxis: {
                categories: [
                   
                    '1',
                    '2',
                    '3',
                    '4',
                    '5',
                    '6',
                    '7',
                    '8',
                    '9',
                    '10'
                ],
                labels: {
                    rotation: -45,
                    align: 'right',
                    style: {
                        fontSize: '13px',
                        fontFamily: 'Verdana, sans-serif'
                    }
                }
            },
            yAxis: {
                min: 0,
                title: {
                    text: 'nº votos'
                }
            },
            legend: {
                enabled: false
            },
            tooltip: {
                formatter: function() {
                    return '<b>'+ this.x +'</b><br/>'+
                        'Votos: '+ Highcharts.numberFormat(this.y, 1) +
                        ' ';
                }
            },
            series: [{
                name: 'Resultados de las votaciones',
                data: [<?php for ($i=1;$i<11;$i++){echo $array[$i];echo ",";}?>],
                dataLabels: {
                    enabled: true,
                    rotation: -90,
                    color: '#FFFFFF',
                    align: 'right',
                    x: 4,
                    y: 10,
                    style: {
                        fontSize: '13px',
                        fontFamily: 'Verdana, sans-serif'
                    }
                }
            }]
        });
    });
    
});
		</script>
	</head>
	<body>
<script src="<?php echo base_url();?>assets/chart/js/highcharts.js"></script>
<script src="<?php echo base_url();?>assets/chart/js/modules/exporting.js"></script>

<div id="container" style="min-width: 400px; height: 400px; margin: 0 auto"></div>

	</body>
</html>
