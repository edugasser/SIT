
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
	var subject = 'Enquesta';

	var unique_hash = 'ec5a8bb22b3d9b72fcc12dfe4c0a7666';
	
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
	<style type="text/css">
								</style>	
								
<div id='report-error' class='report-div error report-list'></div>
<div id='report-success' class='report-div success report-list' ></div>	
<div class="datatables-add-button">
<a role="button" class="edit_button ui-button ui-widget ui-state-default ui-corner-all ui-button-text-icon-primary" href="<?php echo base_url();?>admin/encuesta_admin/add">
	<span class="ui-button-icon-primary ui-icon ui-icon-circle-plus"></span>
	<span class="ui-button-text">Agregar Enquesta</span>
</a>
</div>
<div style='height:10px;'></div>
<table cellpadding="0" cellspacing="0" border="0" class="display" id="groceryCrudTable">
	<thead>
		<tr>
							<th>Pregunta</th>
							<th>Data</th>
							<th>Id projecte</th>
							<th>Gràfic</th>
									<th class='actions'>Acciones</th>
					</tr>
	</thead>
	<tbody>
		   <?php if(!empty($data)){ ?>
		  <?php foreach($data as $row){ ?>
		<tr id='row-0'>
							<td><?php echo $row->pregunta;?></td>
							<td><?php echo $row->data;?></td>
							<td><?php echo $row->titol;?></td>
							<td style="text-align:center; ">
					 
					<a  href="<?php echo base_url();?>proyecto/chart/<?php echo $row->id_encuensta;?>">
					 
					<img width="30" src="<?php echo base_url();?>assets/images/icons/chart.png">
					</a>
				</td>
							<td class='actions'>
								<a target="_blank" href="<?php echo base_url();?>panel/encuesta/<?php echo $row->id_encuensta;?>" class="edit_button ui-button ui-widget ui-state-default ui-corner-all ui-button-text-icon-primary" role="button">
							<span class="ui-button-icon-primary ui-icon ui-icon-plus Lbaacc90c"></span><span class="ui-button-text">&nbsp;Link enquesta</span>
						</a>		
							
					<a href="<?php echo base_url();?>admin/encuesta_admin/edit/<?php echo $row->id_encuensta;?>" class="edit_button ui-button ui-widget ui-state-default ui-corner-all ui-button-text-icon-primary" role="button">
						<span class="ui-button-icon-primary ui-icon ui-icon-pencil"></span>
						<span class="ui-button-text">&nbsp;Editar</span>
					</a>
						<a onclick = "javascript: return delete_row('<?php echo base_url();?>admin/encuesta_admin/delete/<?php echo $row->id_encuensta;?>', '0')" 
						href="javascript:void(0)" class="delete_button ui-button ui-widget ui-state-default ui-corner-all ui-button-text-icon-primary" role="button">
						<span class="ui-button-icon-primary ui-icon ui-icon-circle-minus"></span>
						<span class="ui-button-text">&nbsp;Borrar</span>
					</a>
							</td>
					</tr>
		 <?php }} ?>
			</tbody>
	<tfoot>
	 
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
