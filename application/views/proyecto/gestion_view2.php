
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />


	<link type="text/css" rel="stylesheet" href="<?php echo base_url();?>/assets/grocery_crud/themes/datatables/css/demo_table_jui.css" />
	<link type="text/css" rel="stylesheet" href="<?php echo base_url();?>/assets/grocery_crud/css/ui/simple/jquery-ui-1.9.0.custom.min.css" />
	<link type="text/css" rel="stylesheet" href="<?php echo base_url();?>/assets/grocery_crud/themes/datatables/css/datatables.css" />
	<link type="text/css" rel="stylesheet" href="<?php echo base_url();?>/assets/grocery_crud/themes/datatables/css/jquery.dataTables.css" />
	<link type="text/css" rel="stylesheet" href="<?php echo base_url();?>/assets/grocery_crud/themes/datatables/extras/TableTools/media/css/TableTools.css" />
	<link type="text/css" rel="stylesheet" href="<?php echo base_url();?>/assets/grocery_crud/css/jquery_plugins/fancybox/jquery.fancybox.css" />
	<script src="<?php echo base_url();?>/assets/grocery_crud/js/jquery-1.8.2.min.js"></script>
	<script src="<?php echo base_url();?>/assets/grocery_crud/js/jquery_plugins/ui/jquery-ui-1.9.0.custom.min.js"></script>
	<script src="<?php echo base_url();?>/assets/grocery_crud/themes/datatables/js/jquery.dataTables.min.js"></script>
	<script src="<?php echo base_url();?>/assets/grocery_crud/themes/datatables/js/datatables-extras.js"></script>
	<script src="<?php echo base_url();?>/assets/grocery_crud/themes/datatables/js/datatables.js"></script>
	<script src="<?php echo base_url();?>/assets/grocery_crud/themes/datatables/extras/TableTools/media/js/ZeroClipboard.js"></script>
	<script src="<?php echo base_url();?>/assets/grocery_crud/themes/datatables/extras/TableTools/media/js/TableTools.min.js"></script>
	<script src="<?php echo base_url();?>/assets/grocery_crud/js/jquery_plugins/jquery.fancybox.pack.js"></script>
	<script src="<?php echo base_url();?>/assets/grocery_crud/js/jquery_plugins/jquery.easing-1.3.pack.js"></script>
 
 

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
<body >
 
    <div>
		<script type='text/javascript'>
	var base_url = '<?php echo base_url();?>/';
	var subject = 'Projectes';

	var unique_hash = 'c564eadeffb3ff4818db55d591ff2ab4';
	
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
<a role="button" class="edit_button ui-button ui-widget ui-state-default ui-corner-all ui-button-text-icon-primary" href="<?php echo base_url();?>admin/projectes/add">
	<span class="ui-button-icon-primary ui-icon ui-icon-circle-plus"></span>
	<span class="ui-button-text">Afegir Projectes</span>
</a>
</div>
<div style='height:10px;'></div>
<table cellpadding="0" cellspacing="0" border="0" class="display" id="groceryCrudTable">
	<thead>
		<tr>
							<th>Titol</th>
							<th>Data inici</th>
						 
							<th>Pressupost </th>
							<th>Prioritat</th>
							<th style="text-align:center;" >Obj. tàctic</th>
							<th style="text-align:center;" >Personal</th>
							<th style="text-align:center;" >Operacions</th>
							<th>Monitoritzacio</th> 
							<th style="text-align:center;" >PDF</th>
							<th style="text-align:center;" class='actions'>Accions</th>
					</tr>
	</thead>
	<tbody>
	 <?php
			function semaforo($s){
				if ($s == "1"){
					return "rojo";
				}else if($s == "2"){
					return "amarillo";
				}else if($s == "3"){
				return "verde";
				}
			}
			function semaforo_calidad($s){
				if ($s<=33){
					return "rojo";
				}else if ($s>=33 AND $s<=66){
					return "amarillo";
				}else{
					return "verde";
				}
			}
		?>
		   <?php 
		     if(!empty($encuestas)){ 
				foreach($encuestas as $row3){ 
				$porcentaje = ($row3->suma*100)/($row3->cuento*10);
				$mono[$row3->id_projecte] = $porcentaje; 
				}
			} 
			?>
		
		  <?php if(!empty($data)){ ?>
		  <?php foreach($data as $row){ ?>
		 
			<tr id='row-0'>
				<td ><?php echo $row->titol;?></td>
				<td  ><?php echo $row->data_inici;?></td>
 
				<td  ><?php echo $row->pressupost_inicial;?>€</td>
				<td  ><?php echo $row->prioritat;?></td>
				<td style="text-align:center;">
					<a  href="<?php echo base_url();?>proyecto/objectius_tactics/<?php echo $row->id;?>">
					<img width="20" src="<?php echo base_url();?>assets/images/info.png">
					</a>
				</td>
				<td style="text-align:center; " >
					 
					<a  href="<?php echo base_url();?>admin/persones_projecte/edit/<?php echo $row->id_projecte;?>">
					 
					<img width="30" src="<?php echo base_url();?>assets/images/icons/persona.png">
					</a>
				</td>
					<td style="text-align:center; ">
					 
					<a  href="<?php echo base_url();?>admin/operacio/<?php echo $row->id_projecte;?>">
					 
					<img width="30" src="<?php echo base_url();?>assets/images/icons/bosquejo.png">
					</a>
				</td>
					<td style="width:80px">
					<a href="<?php echo base_url();?>admin/mono_projectes/edit/<?php echo $row->id_projecte;?>/monotoritzacio">
						<img title="Temps" src="<?php echo base_url();?>assets/images/<?php echo semaforo($row->monotoritzacio_temps)?>.png">
					</a>
					<a href="<?php echo base_url();?>admin/mono_projectes/edit/<?php echo $row->id_projecte;?>/monotoritzacio">
						<img title="Recursos" src="<?php echo base_url();?>assets/images/<?php echo semaforo($row->monotoritzacio_recursos)?>.png">
					</a>
					 						<?php if (empty($mono[$row->id_projecte])){ $por=0;}else{ $por=$mono[$row->id_projecte] ;}?>
						<img title="Qualitat" src="<?php echo base_url();?>assets/images/<?php echo semaforo_calidad($por)?>.png">
				 
					

				</td>
				<td style="text-align:center; ">
					 
					<a target="_blank" href="<?php echo base_url();?>proyecto/pdf/<?php echo $row->id_projecte;?>">
					 
					<img width="30" src="<?php echo base_url();?>assets/images/icons/pdf-ico.png">
					</a>
				</td>
				<td>
				<?php  if (($this->session->userdata('Editar')) != 0 ){ ?>

					<a href="<?php echo base_url();?>admin/projectes/edit/<?php echo $row->id_projecte;?>" class="edit_button ui-button ui-widget ui-state-default ui-corner-all ui-button-text-icon-primary" role="button">
					<span class="ui-button-icon-primary ui-icon ui-icon-pencil"></span>
					<span class="ui-button-text">&nbsp;Editar</span>
					</a>
					<?php }if (($this->session->userdata('Eliminar'))!= 0){ ?>
					<a target="_parent" href="<?php echo base_url();?>proyecto/delete/<?php echo $row->id;?>" class="delete_button ui-button ui-widget ui-state-default ui-corner-all ui-button-text-icon-primary" role="button">
							<span class="ui-button-icon-primary ui-icon ui-icon-circle-minus"></span>
							<span class="ui-button-text">&nbsp;Borrar</span>
					</a>
					<?php } ?>
				</td>
			</tr>
		 <?php }} ?>
	</tbody>
						 
</table><script type="text/javascript">
	var default_javascript_path = '<?php echo base_url();?>/assets/grocery_crud/js';
	var default_css_path = '<?php echo base_url();?>/assets/grocery_crud/css';
	var default_texteditor_path = '<?php echo base_url();?>/assets/grocery_crud/texteditor';
	var default_theme_path = '<?php echo base_url();?>/assets/grocery_crud/themes';
	var base_url = '<?php echo base_url();?>/';

</script>
 

    </div>
</body>
</html>

