<!DOCTYPE HTML>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<title>Gràfic resultat enquesta</title>
				<?php 
				$amarillo=0;
				$verde=0;
				$rojo=0;
				//rojo = 0 - 3
				//amarillo = 4 - 6
				//verde = 7 - 10
				if (!empty($data)){
					foreach ($data as $row){	
						$res = $row->resultado;
						$array[($res)] = $row->total;  
						if ($res <= 3 AND $res >= 0){
							$rojo += $row->total;
						}else if ($res <= 6 AND $res >= 4){
							$amarillo += $row->total;
						}else{
							$verde += $row->total;
						}
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
                text: ''
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
		<script type="text/javascript">
$(function () {
    var chart;
    $(document).ready(function() {
    	
    	// Radialize the colors
		Highcharts.getOptions().colors = $.map(Highcharts.getOptions().colors, function(color) {
		    return {
		        radialGradient: { cx: 0.5, cy: 0.3, r: 0.7 },
		        stops: [
		            [0, color],
		            [1, Highcharts.Color(color).brighten(-0.3).get('rgb')] // darken
		        ]
		    };
		});
		
		// Build the chart
        chart = new Highcharts.Chart({
            chart: {
                renderTo: 'container_tarta',
                plotBackgroundColor: null,
                plotBorderWidth: null,
                plotShadow: false
            },colors: [
				'#f50000', 
				'#f5eb00', 
				'#00b52f'
			],
            title: {
                text: 'Resultats de ses enquestes'
            },
            tooltip: {
        	    pointFormat: '{series.name}: <b>{point.percentage}%</b>',
            	percentageDecimals: 1
            },
            plotOptions: {
                pie: {
                    allowPointSelect: true,
                    cursor: 'pointer',
					 showInLegend: true,
                    dataLabels: {
                        enabled: true,
                        color: '#000000',
                        connectorColor: '#000000',
                        formatter: function() {
                            return '<b>'+ this.point.name +'</b>: '+ Math.round(this.percentage*100)/100 +' %';
                        }
						
                    }
                }
            },
            series: [{
                type: 'pie',
                name: 'Opinions',
                data: [
                    ['Mal',   <?php echo $rojo;?>],
                    ['Regular',       <?php echo $amarillo;?>],
                    ['Bé',    <?php echo $verde;?>]
                ]
            }]
        });
    });
    
});
		</script>
	</head>
	<body>
<script src="<?php echo base_url();?>assets/chart/js/highcharts.js"></script>
<script src="<?php echo base_url();?>assets/chart/js/modules/exporting.js"></script>
<div id="container_tarta" style="min-width: 400px; height: 400px; margin: 0 auto"></div>
<div id="container" style="min-width: 400px; height: 400px; margin: 0 auto"></div>

	</body>
</html>
