 
<ul class="contactlist">
<?php
if(strlen($searchq)>0){
if (!empty($posibles)){
foreach($posibles as $row):?> 
	<li><a href="#" onclick="agregar(<?php echo $row->id_persona;?>,'<?php echo $row->nombrecompleto;?>');"><img width="28"src="<?php echo base_url();?>assets/foto_perfil/<?php echo $row->foto;?>.jpg" alt="" /> <span><?php echo $row->nombrecompleto;?></span></a></li>
<?php endforeach;}}?>
</ul>