	<link type="text/css" rel="stylesheet" href="http://localhost/igovern/assets/grocery_crud/css/jquery_plugins/uniform/uniform.default.css" />
	<link type="text/css" rel="stylesheet" href="http://localhost/igovern/assets/grocery_crud/css/ui/simple/jquery-ui-1.9.0.custom.min.css" />
	<link type="text/css" rel="stylesheet" href="http://localhost/igovern/assets/grocery_crud/css/jquery_plugins/chosen/chosen.css" />
	<link type="text/css" rel="stylesheet" href="http://localhost/igovern/assets/grocery_crud/themes/datatables/css/datatables.css" />
	<script src="http://localhost/igovern/assets/grocery_crud/js/jquery-1.8.2.min.js"></script>
	<script src="http://localhost/igovern/assets/grocery_crud/js/jquery_plugins/jquery.uniform.min.js"></script>
	<script src="http://localhost/igovern/assets/grocery_crud/js/jquery_plugins/config/jquery.uniform.config.js"></script>
	<script src="http://localhost/igovern/assets/grocery_crud/js/jquery_plugins/ui/jquery-ui-1.9.0.custom.min.js"></script>
	<script src="http://localhost/igovern/assets/grocery_crud/js/jquery_plugins/config/jquery.datepicker.config.js"></script>
	<script src="http://localhost/igovern/assets/grocery_crud/js/jquery_plugins/jquery.chosen.min.js"></script>
	<script src="http://localhost/igovern/assets/grocery_crud/js/jquery_plugins/config/jquery.chosen.config.js"></script>
	<script src="http://localhost/igovern/assets/grocery_crud/js/jquery_plugins/jquery.numeric.min.js"></script>
	<script src="http://localhost/igovern/assets/grocery_crud/js/jquery_plugins/config/jquery.numeric.config.js"></script>
	<script src="http://localhost/igovern/assets/grocery_crud/themes/flexigrid/js/jquery.form.js"></script>
	<script src="http://localhost/igovern/assets/grocery_crud/themes/datatables/js/datatables-add.js"></script><script type="text/javascript">
var ajax_relation_url = 'http://localhost/igovern/admin/propostes/ajax_relation';

</script>
<div class="pageheader">
<h1 class="pagetitle">Propostes</h1>
<span class="pagedesc"></span>

</div><!--pageheader-->
 
<?php $this->load->view('include/navigation_view'); ?><!-- navigation -->

<div id="contentwrapper" class="contentwrapper">
<div class="contenttitle2">
    <h3>Nova proposta</h3>
</div><!--contenttitle-->
            
 
<br>

<div class='ui-widget-content ui-corner-all datatables'>
 
<div class='form-content form-div'>
	<form action="http://localhost/igovern/admin/propostes/insert" method="post" id="crudForm" autocomplete="off" enctype="multipart/form-data" accept-charset="utf8">		<div>
						<div class='form-field-box odd' id="titol_field_box">
				<div class='form-display-as-box' id="titol_display_as_box">
					Titol :
				</div>
				<div class='form-input-box' id="titol_input_box">
					<input id='field-titol' name='titol' type='text' value="" maxlength='100' />				</div>
				<div class='clear'></div>	
			</div>
						<div class='form-field-box even' id="descripcio_field_box">
				<div class='form-display-as-box' id="descripcio_display_as_box">
					Descripcio :
				</div>
				<div class='form-input-box' id="descripcio_input_box">
					<input id='field-descripcio' name='descripcio' type='text' value="" maxlength='300' />				</div>
				<div class='clear'></div>	
			</div>
						<div class='form-field-box odd' id="riscs_field_box">
				<div class='form-display-as-box' id="riscs_display_as_box">
					Riscs :
				</div>
				<div class='form-input-box' id="riscs_input_box">
					<input id='field-riscs' name='riscs' type='text' value="" maxlength='300' />				</div>
				<div class='clear'></div>	
			</div>
						<div class='form-field-box even' id="acceptat_field_box">
				<div class='form-display-as-box' id="acceptat_display_as_box">
					Acceptat :
				</div>
				<div class='form-input-box' id="acceptat_input_box">
					<div class='pretty-radio-buttons'><label><input id='field-acceptat-true' class='radio-uniform'  type='radio' name='acceptat' value='1'  /> active</label> <label><input id='field-acceptat-false' class='radio-uniform' type='radio' name='acceptat' value='0'  /> inactive</label></div>				</div>
				<div class='clear'></div>	
			</div>
						<div class='form-field-box odd' id="data_field_box">
				<div class='form-display-as-box' id="data_display_as_box">
					Data :
				</div>
				<div class='form-input-box' id="data_input_box">
					<input id='field-data' name='data' type='text' value='' maxlength='10' class='datepicker-input' /> 
		<a class='datepicker-input-clear' tabindex='-1'>Clear</a> (dd/mm/yyyy)				</div>
				<div class='clear'></div>	
			</div>
						<div class='form-field-box even' id="denegat_field_box">
				<div class='form-display-as-box' id="denegat_display_as_box">
					Denegat :
				</div>
				<div class='form-input-box' id="denegat_input_box">
					<div class='pretty-radio-buttons'><label><input id='field-denegat-true' class='radio-uniform'  type='radio' name='denegat' value='1'  /> active</label> <label><input id='field-denegat-false' class='radio-uniform' type='radio' name='denegat' value='0'  /> inactive</label></div>				</div>
				<div class='clear'></div>	
			</div>
						<div class='form-field-box odd' id="pendent_field_box">
				<div class='form-display-as-box' id="pendent_display_as_box">
					Pendent :
				</div>
				<div class='form-input-box' id="pendent_input_box">
					<div class='pretty-radio-buttons'><label><input id='field-pendent-true' class='radio-uniform'  type='radio' name='pendent' value='1'  /> active</label> <label><input id='field-pendent-false' class='radio-uniform' type='radio' name='pendent' value='0'  /> inactive</label></div>				</div>
				<div class='clear'></div>	
			</div>
						<div class='form-field-box even' id="tipus_projecte_id_field_box">
				<div class='form-display-as-box' id="tipus_projecte_id_display_as_box">
					Tipus projecte id :
				</div>
				<div class='form-input-box' id="tipus_projecte_id_input_box">
					<select id='field-tipus_projecte_id'  name='tipus_projecte_id' class='chosen-select' data-placeholder='Select Tipus projecte id' style='width:300px'><option value=''></option></select>				</div>
				<div class='clear'></div>	
			</div>
						<div class='form-field-box odd' id="Persones_DNI_field_box">
				<div class='form-display-as-box' id="Persones_DNI_display_as_box">
					Persones DNI :
				</div>
				<div class='form-input-box' id="Persones_DNI_input_box">
					<input id='field-Persones_DNI' name='Persones_DNI' type='text' value='' class='numeric' maxlength='11' />				</div>
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
				<div class='small-loading' id='FormLoading'>Cargando, guardando datos...</div>
			</div>
			<div class='clear'></div>	
		</div>
	</form></div>
</div>
<script>
	var validation_url = 'http://localhost/igovern/admin/propostes/insert_validation';
	var list_url = 'http://localhost/igovern/admin/propostes';

	var message_alert_add_form = "The data you had insert may not be saved.\nAre you sure you want to go back to list?";
	var message_insert_error = "An error has occurred on insert.";	
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