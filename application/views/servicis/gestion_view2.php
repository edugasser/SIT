
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
	<link type="text/css" rel="stylesheet" href="<?php echo base_url();?>assets/grocery_crud/themes/datatables/css/demo_table_jui.css" />
	<link type="text/css" rel="stylesheet" href="<?php echo base_url();?>assets/grocery_crud/css/ui/simple/jquery-ui-1.9.0.custom.min.css" />
	<link type="text/css" rel="stylesheet" href="<?php echo base_url();?>assets/grocery_crud/themes/datatables/css/datatables.css" />
	<link type="text/css" rel="stylesheet" href="<?php echo base_url();?>assets/grocery_crud/themes/datatables/css/jquery.dataTables.css" />
	<link type="text/css" rel="stylesheet" href="<?php echo base_url();?>assets/grocery_crud/themes/datatables/extras/TableTools/media/css/TableTools.css" />
	<link type="text/css" rel="stylesheet" href="<?php echo base_url();?>assets/grocery_crud/css/jquery_plugins/fancybox/jquery.fancybox.css" />
	<script src="<?php echo base_url();?>assets/grocery_crud/js/jquery-1.8.2.min.js"></script>
	<script src="<?php echo base_url();?>assets/grocery_crud/js/jquery_plugins/ui/jquery-ui-1.9.0.custom.min.js"></script>
	<script src="<?php echo base_url();?>assets/grocery_crud/themes/datatables/js/jquery.dataTables.min.js"></script>
	<script src="<?php echo base_url();?>assets/grocery_crud/themes/datatables/js/datatables-extras.js"></script>
	<script src="<?php echo base_url();?>assets/grocery_crud/themes/datatables/js/datatables.js"></script>
	<script src="<?php echo base_url();?>assets/grocery_crud/themes/datatables/extras/TableTools/media/js/ZeroClipboard.js"></script>
	<script src="<?php echo base_url();?>assets/grocery_crud/themes/datatables/extras/TableTools/media/js/TableTools.min.js"></script>
	<script src="<?php echo base_url();?>assets/grocery_crud/js/jquery_plugins/jquery.fancybox.pack.js"></script>
	<script src="<?php echo base_url();?>assets/grocery_crud/js/jquery_plugins/jquery.easing-1.3.pack.js"></script>
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
		<script type='text/javascript'>
	var base_url = '<?php echo base_url();?>';
	var subject = 'Serveis';

	var unique_hash = 'f2b8ed0c25467b142a116711485de0e0';
	
	var displaying_paging_string = "Mostrando _START_ a _END_ de _TOTAL_ registros";
	var filtered_from_string 	= "(filtered de _MAX_ total entradas)";
	var show_entries_string 	= "Mostrar _MENU_ entradas";
	var search_string 			= "Buscar";
	var list_no_items 			= "No hay registros para mostrar";
	var list_zero_entries 			= "Mostrando 0 a 0 de 0 registros";

	var list_loading 			= "Cargando...";

	var paging_first 	= "Primero";
	var paging_previous = "Anterior";
	var paging_next 	= "Siguiente";
	var paging_last 	= "Ultimo";

	var message_alert_delete = "Seguro que quieres borrar este registro?";

	var default_per_page = 25;

	var unset_export = false;
	var unset_print = false;

	var export_text = 'Export';
	var print_text = 'Print';
	
		
	var datatables_aaSorting = [[ 0, "asc" ]];
	
</script>
<div id='report-error' class='report-div error report-list'></div>
<div id='report-success' class='report-div success report-list' ></div>	
<div class="datatables-add-button">
<a role="button" class="edit_button ui-button ui-widget ui-state-default ui-corner-all ui-button-text-icon-primary" href="<?php echo base_url();?>admin/serveis/add">
	<span class="ui-button-icon-primary ui-icon ui-icon-circle-plus"></span>
	<span class="ui-button-text">Afegir Serveis</span>
</a>
</div>
<div style='height:10px;'></div>
<table cellpadding="0" cellspacing="0" border="0" class="display" id="groceryCrudTable">
	<thead>
		<tr>
							<th>Nom servei</th>
							<th>Descripcio servei</th>
							<th>Data servei</th>
							<th>Incidencies</th>
							<th>Grafic</th>
									<th class='actions'>Accions</th>
					</tr>
	</thead>
	<tbody>
		 <?php if (!empty($data)) { ?>
		 <?php foreach ($data as $row){ ?> 
			<tr id='row-0'>
				<td><?php echo $row->nom_servei;?></td>
				<td>
					<?php echo $row->descripcio_servei;?>
				</td>
				<td><?php echo $row->data;?></td>
				<td style="text-align:center; ">
					 
					<a  href="<?php echo base_url();?>admin/incidencias/<?php echo $row->id_servici;?>">
					 
					<img width="30" src="<?php echo base_url();?>assets/images/icons/incidencia.png">
					</a>
				</td>
					<td style="text-align:center; ">
					 
					<a  href="<?php echo base_url();?>serveis/chart/<?php echo $row->id_servici;?>">
					 
					<img width="30" src="<?php echo base_url();?>assets/images/icons/chart.png">
					</a>
				</td>
				<td class='actions'>
			<?php  if (($this->session->userdata('Editar')) != 0 ){ ?>

					<a href="<?php echo base_url();?>admin/serveis/edit/<?php echo $row->id_servici;?>" class="edit_button ui-button ui-widget ui-state-default ui-corner-all ui-button-text-icon-primary" role="button">
					<span class="ui-button-icon-primary ui-icon ui-icon-pencil"></span>
					<span class="ui-button-text">&nbsp;Editar</span>
				</a>
				<?php }if (($this->session->userdata('Eliminar'))!= 0){ ?>
												<a onclick = "javascript: return delete_row('<?php echo base_url();?>admin/serveis/delete/<?php echo $row->id_servici;?>', '0')" 
					href="javascript:void(0)" class="delete_button ui-button ui-widget ui-state-default ui-corner-all ui-button-text-icon-primary" role="button">
					<span class="ui-button-icon-primary ui-icon ui-icon-circle-minus"></span>
					<span class="ui-button-text">&nbsp;Borrar</span>
					
				</a>
				<?php } ?>
				</td>
			</tr>
		<?php }} ?>
	</tbody>
	<tfoot>
		<tr >
							<th><input type="text" name="nom_servei" placeholder="Buscar Nom servei" class="search_nom_servei" /></th>
							<th><input type="text" name="descripcio_servei" placeholder="Buscar Descripcio servei" class="search_descripcio_servei" /></th>
							<th ><input type="text" name="data_servei" placeholder="Buscar Data servei" class="search_data_servei" /></th>
										<th colspan="5">
					<a href="javascript:void(0)" role="button" class="clear-filtering ui-button ui-widget ui-state-default ui-corner-all ui-button-text-icon-primary floatR">
						<span class="ui-button-icon-primary ui-icon ui-icon-arrowrefresh-1-e"></span>
						<span class="ui-button-text">Limpiar filtrados</span>
					</a>
				</th>
					</tr>
	</tfoot>
</table><script type="text/javascript">
	var default_javascript_path = '<?php echo base_url();?>assets/grocery_crud/js';
	var default_css_path = '<?php echo base_url();?>assets/grocery_crud/css';
	var default_texteditor_path = '<?php echo base_url();?>assets/grocery_crud/texteditor';
	var default_theme_path = '<?php echo base_url();?>assets/grocery_crud/themes';
	var base_url = '<?php echo base_url();?>';

</script>
    </div>
</body>
</html>
