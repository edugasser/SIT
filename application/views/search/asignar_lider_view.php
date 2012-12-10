<ul class="contactlist">
	<?php
	if(strlen($searchq)>0){
	if (!empty($posibles)){
	echo "<ul>";
	foreach($posibles as $row):?>
		<li>
		<a href="#"  onClick="document.getElementById('<?php echo $id2;?>').value = '<?php echo $row->id_persona;?>';fill('<?php echo $id;?>','<?php echo $row->nombrecompleto;?>');return false;">
		<img width="28"src="<?php echo base_url();?>assets/foto_perfil/<?php echo $row->foto;?>.jpg" alt="" /> <?php echo $row->nombrecompleto;?></a></li>
	<?php endforeach;}}?>
	</ul>
 
