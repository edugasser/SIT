<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
<head>
<link rel='stylesheet' type='text/css' href='<?php echo base_url();?>assets/calendar/fullcalendar/fullcalendar.css' />
<link rel='stylesheet' type='text/css' href='<?php echo base_url();?>assets/calendar/fullcalendar/fullcalendar.print.css' media='print' />
<script type='text/javascript' src='<?php echo base_url();?>assets/calendar/jquery/jquery-1.8.1.min.js'></script>
<script type='text/javascript' src='<?php echo base_url();?>assets/calendar/jquery/jquery-ui-1.8.23.custom.min.js'></script>
<script type='text/javascript' src='<?php echo base_url();?>assets/calendar/fullcalendar/fullcalendar.min.js'></script>
<script type='text/javascript'>

	$(document).ready(function() {
	
		var date = new Date();
		var d = date.getDate();
		var m = date.getMonth();
		var y = date.getFullYear();
		
		$('#calendar').fullCalendar({
		
			editable: true,
			events: [
				{
					title: 'Tutoria / Soporte remoto',
					start: '2012-12-01',
					end: '2012-12-31',
					url: 'http://localhost/igovern/proyecto/gestion/25',
					target: '_blank'
				},
				{
					title: 'Arquitectura Moodle',
					start: '2012-12-13',
					end: '2012-12-16',
					url: 'http://localhost/igovern/proyecto/gestion/26',
					target: '_blank'
				},
				{
					title: 'Control de acceso',
					start: '2012-12-01',
					end: '2013-01-01',
					url: 'http://localhost/igovern/proyecto/gestion/27',
					target: '_blank'
				},
				{
					title: 'Soporte chat para la administración',
					start: '2012-12-19',
					end: '2013-01-09',
					url: 'http://localhost/igovern/proyecto/gestion/28',
					target: '_blank'
				}				 
			],
			eventClick: function(event) {
			if (event.url) {
            window.open(event.url,'_parent');
            return false;
        }
    }
		});
		
	});

</script>

<style type='text/css'>

	body {
		margin-top: 40px;
		text-align: center;
		font-size: 14px;
		font-family: "Lucida Grande",Helvetica,Arial,Verdana,sans-serif;
		}

	#calendar {
		width:100%;
		margin: 0 auto;
		}

</style>
</head>
<body>
<div id='calendar'></div>
</body>
</html>
