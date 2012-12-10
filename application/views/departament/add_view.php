 
	<link type="text/css" rel="stylesheet" href="http://localhost/igovern/assets/grocery_crud/themes/datatables/css/datatables.css" />
	<link type="text/css" rel="stylesheet" href="http://localhost/igovern/assets/grocery_crud/css/ui/simple/jquery-ui-1.9.0.custom.min.css" />
	<script src="http://localhost/igovern/assets/grocery_crud/js/jquery-1.8.2.min.js"></script>
	<script src="http://localhost/igovern/assets/grocery_crud/themes/flexigrid/js/jquery.form.js"></script>
	<script src="http://localhost/igovern/assets/grocery_crud/themes/datatables/js/datatables-add.js"></script>
	<script src="http://localhost/igovern/assets/grocery_crud/js/jquery_plugins/ui/jquery-ui-1.9.0.custom.min.js"></script>
 <div class="pageheader">
<h1 class="pagetitle">Departaments</h1>
<span class="pagedesc"></span>

</div><!--pageheader-->
 
<?php $this->load->view('include/navigation_view'); ?><!-- navigation -->

<div id="contentwrapper" class="contentwrapper">
<div class="contenttitle2">
    <h3>Nou departament</h3>
</div><!--contenttitle-->
            
 
<br>
<div class='ui-widget-content ui-corner-all datatables'>
 
<div class='form-content form-div'>
	<form action="http://localhost/igovern/admin/departaments/insert" method="post" id="crudForm" autocomplete="off" enctype="multipart/form-data" accept-charset="utf8">		<div>
						<div class='form-field-box odd' id="dept_field_box">
				<div class='form-display-as-box' id="dept_display_as_box">
					Dept :
				</div>
				<div class='form-input-box' id="dept_input_box">
					<input id='field-dept' name='dept' type='text' value="" maxlength='45' />				</div>
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
				<div class='small-loading' id='FormLoading'>Loading, saving data...</div>
			</div>
			<div class='clear'></div>	
		</div>
	</form></div>
</div>
<script>
	var validation_url = 'http://localhost/igovern/admin/departaments/insert_validation';
	var list_url = 'http://localhost/igovern/admin/departaments';

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