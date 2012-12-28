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
					$i = 1;
					foreach ($data as $row){	
						
						$array_count[$i] = $row->total;  
						$array_dept[$i] = $row->dept;
						
						$array[$i][0] = $row->dept;
						$array[$i++][1] = $row->total;
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
            },
            title: {
                text: "Estructura de l'organització"
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
                            return '<b>'+ this.point.name +'</b>: '+ this.y +' persones';
                        }
						
                    }
                }
            },
            series: [{
                type: 'pie',
                name: 'Opinions',
                data: [
					<?php for ($i=1;$i<=sizeof($array);$i++){
					echo "['";
					echo $array[$i][0];
					echo "',";
					echo $array[$i][1];
					echo "],";
					}
					?>
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
 

	</body>
</html>
