<!DOCTYPE HTML>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<title>Gràfic d'incidències de servei</title>
<?php  if (!empty($data)){foreach ($data as $row){			
					$array[($row->num)] = $row->total;
					 	 				 				 
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
                type: 'line'
            },
            title: {
                text: "Gràfic d'incidències de servei"
            },
            subtitle: {
                text: '<?php echo $row->nom_servei;?>'
            },
            xAxis: {
                categories: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec']
            },
            yAxis: {
                title: {
                    text: 'Nº incidències'
                }
            },
            tooltip: {
                enabled: false,
                formatter: function() {
                    return '<b>'+ this.series.name +'</b><br/>'+
                        this.x +': '+ this.y +'°C';
                }
            },
            plotOptions: {
                line: {
                    dataLabels: {
                        enabled: true
                    },
                    enableMouseTracking: false
                }
            },
            series: [{
                name: 'Servei',
                data: [<?php for ($i=1;$i<11;$i++){echo $array[$i];echo ",";}?>]
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
