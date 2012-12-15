
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />

	<link type="text/css" rel="stylesheet" href="<?php echo base_url();?>assets/grocery_crud/css/ui/simple/jquery-ui-1.9.0.custom.min.css" />
	<link type="text/css" rel="stylesheet" href="<?php echo base_url();?>assets/grocery_crud/css/jquery_plugins/chosen/chosen.css" />
	<link type="text/css" rel="stylesheet" href="<?php echo base_url();?>assets/grocery_crud/themes/datatables/css/datatables.css" />
	<script src="<?php echo base_url();?>assets/grocery_crud/js/jquery-1.8.2.min.js"></script>
	<script src="<?php echo base_url();?>assets/grocery_crud/texteditor/ckeditor/ckeditor.js"></script>
	<script src="<?php echo base_url();?>assets/grocery_crud/texteditor/ckeditor/adapters/jquery.js"></script>
	<script src="<?php echo base_url();?>assets/grocery_crud/js/jquery_plugins/config/jquery.ckeditor.config.js"></script>
	<script src="<?php echo base_url();?>assets/grocery_crud/js/jquery_plugins/ui/jquery-ui-1.9.0.custom.min.js"></script>
	<script src="<?php echo base_url();?>assets/grocery_crud/js/jquery_plugins/config/jquery.datepicker.config.js"></script>
	<script src="<?php echo base_url();?>assets/grocery_crud/js/jquery_plugins/jquery.chosen.min.js"></script>
	<script src="<?php echo base_url();?>assets/grocery_crud/js/jquery_plugins/config/jquery.chosen.config.js"></script>
	<script src="<?php echo base_url();?>assets/grocery_crud/themes/flexigrid/js/jquery.form.js"></script>
	<script src="<?php echo base_url();?>assets/grocery_crud/themes/datatables/js/datatables-edit.js"></script>
 	<script type="text/javascript" src="http://davidwalsh.name/demo/moo1.2.js"></script>
 
	<style type="text/css">
		.holder	{ width:200px; float:left; }
		
	 

		 
		#add,#remove	{ display:block; width:100px; border:1px solid #ccc; background:#eee; padding:10px; }
		select	.multiple { margin:0 0 10px 0; width:150px; font:12px tahoma; padding:5px; height:300px; }
		option	{ padding:10px; }
	</style>
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
var ajax_relation_url = '<?php echo base_url();?>admin/projectes/ajax_relation';

</script>
<script type="text/javascript">
var ajax_relation_url = '<?php echo base_url();?>admin/projectes/ajax_relation';

</script>
<div class='ui-widget-content ui-corner-all datatables'>
	<h3 class="ui-accordion-header ui-helper-reset ui-state-default form-title">
		<div class='floatL form-title-left'>
			<a href="#">Editar Projectes</a>
		</div> 		
		<div class='clear'></div>
	</h3>
<div class='form-content form-div'>
 
	<form action="<?php echo base_url();?>proyecto/nuevo" method="post" target="_parent" id="frmSelect" autocomplete="off" enctype="multipart/form-data" accept-charset="utf8">		<div>
	 
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
					<textarea id='field-descripcio' name='descripcio' class='texteditor' ></textarea>				</div>
				<div class='clear'></div>	
			</div>
			<div class='form-field-box even' id="descripcio_field_box">
				<div class='form-display-as-box' id="descripcio_display_as_box">
					Prioritat :
				</div>
				<div class='form-input-box' id="descripcio_input_box">
					 
					<select id="prioritat" name="prioritat">

						<option>Alta</option>
						<option>Mitjana</option>
						<option>Baixa</option>
					</select>
					</div>
				<div class='clear'></div>	
			</div>
			<div class='form-field-box odd' id="data_inici_field_box">
				<div class='form-display-as-box' id="data_inici_display_as_box">
					Data inici :
				</div>
				<div class='form-input-box' id="data_inici_input_box">
					<input id='field-data_inici' name='data_inici' type='text' value='12-12-2012' maxlength='10' class='datepicker-input' /> 
				<a class='datepicker-input-clear' tabindex='-1'> </a> (dd-mm-yyyy)				</div>
				<div class='clear'></div>	
			</div>
			<div class='form-field-box even' id="data_entrega_field_box">
				<div class='form-display-as-box' id="data_entrega_display_as_box">
					Data entrega :
				</div>
				<div class='form-input-box' id="data_entrega_input_box">
					<input id='field-data_entrega' name='data_entrega' type='text' value='12-12-2012' maxlength='10' class='datepicker-input' /> 
				<a class='datepicker-input-clear' tabindex='-1'> </a> (dd-mm-yyyy)				</div>
				<div class='clear'></div>	
			</div>
			<div class='form-field-box odd' id="pressupost_inicial_field_box">
				<div class='form-display-as-box' id="pressupost_inicial_display_as_box">
					Pressupost inicial :
				</div>
				<div class='form-input-box' id="pressupost_inicial_input_box">
					<input id='field-pressupost_inicial' name='pressupost_inicial' type='text' value="" maxlength='45' />				</div>
				<div class='clear'></div>	
			</div>
			<div class='form-field-box even' id="pressupost_final_field_box">
				<div class='form-display-as-box' id="pressupost_final_display_as_box">
					Pressupost final :
				</div>
				<div class='form-input-box' id="pressupost_final_input_box">
					<input id='field-pressupost_final' name='pressupost_final' type='text' value="" maxlength='45' />				</div>
				<div class='clear'></div>	
			</div>

			<div class='form-field-box ' id="Proposta_id_field_box">
				<div class='form-display-as-box' id="Proposta_id_display_as_box">
					Proposta :
				</div>
				<div class='form-input-box' id="Proposta_id_input_box">

					<select id='field-Proposta_id'  name='Proposta_id' class='chosen-select' data-placeholder='Select Proposta id' style='width:300px'>
					  <?php if(!empty($propostes)){ ?>
						<?php foreach($propostes as $row2){ ?>
						<option value='<?php echo $row2->id;?>' selected='selected' ><?php echo $row2->titol;?></option>
					</select>				
						<?php }} ?>
					</div>
				<div class='clear'></div>	
			</div>
				 
			<div class='form-field-box even' id="id_responsable_field_box">
			<div class='form-display-as-box' id="id_responsable_display_as_box">
				Responsable :
			</div>
			<div class='form-input-box' id="id_responsable_input_box">
				<select id='field-id_responsable'  name='id_responsable' class='chosen-select' data-placeholder='Select Responsable' style='width:300px'>
				  <?php if(!empty($responsable)){ ?>
					<?php foreach($responsable as $row2){ ?>
				<option value=''></option><option value='<?php echo $row2->id_persona;?>' selected='selected' ><?php echo $row2->nom_complet;?></option>
				<?php }} ?>
				</select>
				</div>
			<div class='clear'></div>	
			</div>

			<div class='form-field-box odd' id="id_responsable_field_box">
				<div class='form-display-as-box' id="id_responsable_display_as_box">
					Obj. t&agrave;ctics:
				</div>
			<div class='form-input-box' id="id_responsable_input_box">
			<div class="holder">
			  <select multiple="multiple" id="select1" name="select1[]" class="multiple">
			   <?php if(!empty($objectius)){ ?>
					<?php foreach($objectius as $row2){ ?>
				<option value="<?php echo $row2->id;?>"><?php echo $row2->objectiu;?></option>
				<?php }}?>
			  </select>
			  <a href="javascript:;" id="add">afegir>></a>
			</div>
			<div class="holder">
			  <select   id="select2" name="select2[]" multiple="true" class="multiple">
			 
			  </select>
			  <a href="javascript:;" id="remove"><< quitar</a>
			</div>
			</div>
			<div class='clear'></div>
			</div>
			</div>

					
				<!-- Start of hidden inputs -->
						<!-- End of hidden inputs -->		
			<div class='line-1px'></div>
			<div id='report-error' class='report-div error'></div>
			<div id='report-success' class='report-div success'></div>							
			</div>	
			<div class='buttons-box'>
			<div class='form-button-box'>
			<input type='submit' value='Crear projecte' onclick="excludeFirstOption(select2)"  class='ui-input-button' />
			</div>
					
			<div class='form-button-box'>
			<a target="_parent" href="<?php echo base_url();?>proyecto/gestion"><< Volver atras</a>
			</div>
					
			<div class='form-button-box loading-box'>
			<div class='small-loading' id='FormLoading'>Cargando, actualizando cambios...</div>
			</div>
			<div class='clear'></div>	
			</div>
			

	</form>	
 

</div>
</div>
<script>
	var validation_url = '<?php echo base_url();?>admin/projectes/update_validation/10';
	var list_url = '<?php echo base_url();?>admin/projectes';

	var message_alert_edit_form = "Los datos que insertaste no han sido guardados.\nEstas seguro que quieres regresar a la lista?";
	var message_update_error = "Ocurrio un error guardando.";	
</script><script type="text/javascript">
var js_date_format = 'dd/mm/yy';
</script>
<script type="text/javascript">
	var default_javascript_path = '<?php echo base_url();?>assets/grocery_crud/js';
	var default_css_path = '<?php echo base_url();?>assets/grocery_crud/css';
	var default_texteditor_path = '<?php echo base_url();?>assets/grocery_crud/texteditor';
	var default_theme_path = '<?php echo base_url();?>assets/grocery_crud/themes';
	var base_url = '<?php echo base_url();?>';

</script>
 	<script type="text/javascript">
		window.addEvent('domready', function() {
			$('add').addEvent('click', function() {
				$('select1').getSelected().each(function(el) {
					el.inject($('select2'));
				});
			});
			$('remove').addEvent('click', function() {
				$('select2').getSelected().each(function(el) {
					el.inject($('select1'));
				});
			});
		});
function excludeFirstOption(select) {

	 
        for (var i=0; i<2; i++) {
            $('select2').options[i].selected = true;
			
        }
    //document.write($('select2').value);
}
	</script>
	
    </div>
</body>
</html>
