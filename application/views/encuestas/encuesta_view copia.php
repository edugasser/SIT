<html lang="es">
<head>
	<meta charset="utf-8" />
	<link type="text/css" rel="stylesheet" href="<?php echo base_url();?>assets/grocery_crud/css/jquery_plugins/chosen/chosen.css" />
	<link type="text/css" rel="stylesheet" href="<?php echo base_url();?>assets/grocery_crud/themes/datatables/css/datatables.css" />
	<link type="text/css" rel="stylesheet" href="<?php echo base_url();?>assets/grocery_crud/css/ui/simple/jquery-ui-1.9.0.custom.min.css" />
	<script src="<?php echo base_url();?>assets/grocery_crud/js/jquery-1.8.2.min.js"></script>
	<script src="<?php echo base_url();?>assets/grocery_crud/js/jquery_plugins/jquery.chosen.min.js"></script>
	<script src="<?php echo base_url();?>assets/grocery_crud/js/jquery_plugins/config/jquery.chosen.config.js"></script>
	<script src="<?php echo base_url();?>assets/grocery_crud/themes/flexigrid/js/jquery.form.js"></script>
	<script src="<?php echo base_url();?>assets/grocery_crud/themes/datatables/js/datatables-add.js"></script>
	<script src="<?php echo base_url();?>assets/grocery_crud/js/jquery_plugins/ui/jquery-ui-1.9.0.custom.min.js"></script>
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
 
<div class='ui-widget-content ui-corner-all datatables'>
	<h3 class="ui-accordion-header ui-helper-reset ui-state-default form-title">
		<div class='floatL form-title-left'>
			<a href="#">Afegir Enquesta</a>
		</div>	
		<div class='clear'></div>
	</h3>
<div class='form-content form-div'>
	<form action="<?php echo base_url();?>panel/addencuesta/<?php echo $id;?>" method="post" id="crudForm" autocomplete="off" enctype="multipart/form-data" accept-charset="utf8"><div style="display:none">
<input type="hidden" name="csrf_test_name" value="ced342770a2f4e36951b58297b4f36c3" />
</div>		
<?php foreach($data as $row){ ?>
			<div>
				<div class='form-field-box odd' id="id_encuesta_field_box">
				<div class='form-display-as-box' id="id_encuesta_display_as_box">
					Id encuesta :
				</div>
				<div class='form-input-box' id="id_encuesta_input_box">
				<input type="hidden"   name='id_encuesta' id="id_encuesta" value="<?php echo $row->id_encuensta;?>">				
					</div>
					<label> <?php echo $row->pregunta;?></label>
				<div class='clear'></div>	
			</div>
						<div class='form-field-box even' id="resultado_field_box">
				<div class='form-display-as-box' id="resultado_display_as_box">
					Resultado :
				</div>
				<div class='form-input-box' id="resultado_input_box">
					<select id='field-resultado' name='resultado' class='chosen-select' data-placeholder='Select Resultado'><option value=''  ></option><option value='1'  >1</option><option value='2'  >2</option><option value='3'  >3</option><option value='4'  >4</option><option value='5'  >5</option><option value='6'  >6</option><option value='7'  >7</option><option value='8'  >8</option><option value='9'  >9</option><option value='10'  >10</option></select>				</div>
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
				<?php }?>
	</form></div>
</div>

    </div>
</body>
</html>
