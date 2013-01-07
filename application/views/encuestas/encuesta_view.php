<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
	<link type="text/css" rel="stylesheet" href="http://localhost/igovern/assets/grocery_crud/css/jquery_plugins/chosen/chosen.css" />
	<link type="text/css" rel="stylesheet" href="http://localhost/igovern/assets/grocery_crud/themes/datatables/css/datatables.css" />
	<link type="text/css" rel="stylesheet" href="http://localhost/igovern/assets/grocery_crud/css/ui/simple/jquery-ui-1.9.0.custom.min.css" />
	<script src="http://localhost/igovern/assets/grocery_crud/js/jquery-1.8.2.min.js"></script>
	<script src="http://localhost/igovern/assets/grocery_crud/js/jquery_plugins/jquery.chosen.min.js"></script>
	<script src="http://localhost/igovern/assets/grocery_crud/js/jquery_plugins/config/jquery.chosen.config.js"></script>
	<script src="http://localhost/igovern/assets/grocery_crud/js/jquery_plugins/jquery.numeric.min.js"></script>
	<script src="http://localhost/igovern/assets/grocery_crud/js/jquery_plugins/config/jquery.numeric.config.js"></script>
	<script src="http://localhost/igovern/assets/grocery_crud/themes/flexigrid/js/jquery.form.js"></script>
	<script src="http://localhost/igovern/assets/grocery_crud/themes/datatables/js/datatables-add.js"></script>
	<script src="http://localhost/igovern/assets/grocery_crud/js/jquery_plugins/ui/jquery-ui-1.9.0.custom.min.js"></script>
<style type='text/css'>
body
{
	font-family: Arial;
	font-size: 14px;
}
a {
    color: blue;
    text-decoration: none;
    font-size: 14px;
}
a:hover
{
	text-decoration: underline;
}
</style>
</head>
<body>
 
    <div>
		<script type="text/javascript">
var ajax_relation_url = 'http://localhost/igovern/admin/encuesta/ajax_relation';

</script>
<div class='ui-widget-content ui-corner-all datatables'>
	<h3 class="ui-accordion-header ui-helper-reset ui-state-default form-title">
		<div class='floatL form-title-left'>
			<a href="#">Agregar Enquesta</a>
		</div>	
		<div class='clear'></div>
	</h3>
<div class='form-content form-div'>
	<form action="http://localhost/igovern/admin/encuesta/insert" method="post" id="crudForm" autocomplete="off" enctype="multipart/form-data" accept-charset="utf8"><div style="display:none">
<input type="hidden" name="csrf_test_name" value="391f38709d07f56469e770e30c5ae409" />
</div>		<div>
						<div class='form-field-box odd' id="id_encuesta_field_box">
				<div class='form-display-as-box' id="id_encuesta_display_as_box">
					Id encuesta :
				</div>
				<div class='form-input-box' id="id_encuesta_input_box">
					<select id='field-id_encuesta'  name='id_encuesta' class='chosen-select' data-placeholder='Select Id encuesta' style='width:300px'><option value=''></option><option value='2'  >¿Cree que el proyecto cumple con los requerimientos iniciales?</option><option value='1'  >¿Está conforme con los resultados del proyecto?</option></select>				</div>
				<div class='clear'></div>	
			</div>
						<div class='form-field-box even' id="resultado_field_box">
				<div class='form-display-as-box' id="resultado_display_as_box">
					Resultado :
				</div>
				<div class='form-input-box' id="resultado_input_box">
					<input id='field-resultado' name='resultado' type='text' value='' class='numeric' maxlength='10' />				</div>
				<div class='clear'></div>	
			</div>
						<!-- Start of hidden inputs -->
							<!-- End of hidden inputs -->			
			<div class='line-1px'></div>
			<div id='report-error' class='report-div error'></div>
			<div id='report-success' class='report-div success'></div>							
		</div>	
		<div class='buttons-box'>
			<div class='form-button-box'>
				<input type='submit' value='Guardar' class='ui-input-button'/>
			</div>
			
			<div class='form-button-box loading-box'>
				<div class='small-loading' id='FormLoading'>Cargando, guardando...</div>
			</div>
			<div class='clear'></div>	
		</div>
	</form></div>
</div>
<script>
	var validation_url = 'http://localhost/igovern/admin/encuesta/insert_validation';
	var list_url = 'http://localhost/igovern/admin/encuesta';

	var message_alert_add_form = "Los datos que insertaste no pueden ser guardados.\nEstas seguro que quieres regresar a la lista?";
	var message_insert_error = "Ocurrio un error durante la insercion.";	
</script><script type="text/javascript">
var js_date_format = 'dd/mm/yy';
</script>
<script type="text/javascript">
	var default_javascript_path = 'http://localhost/igovern/assets/grocery_crud/js';
	var default_css_path = 'http://localhost/igovern/assets/grocery_crud/css';
	var default_texteditor_path = 'http://localhost/igovern/assets/grocery_crud/texteditor';
	var default_theme_path = 'http://localhost/igovern/assets/grocery_crud/themes';
	var base_url = 'http://localhost/igovern/';

</script>
    </div>
</body>
</html>
