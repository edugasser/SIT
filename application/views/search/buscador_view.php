 
<ul class="contactlist">
<?php  
if(strlen($searchq)>0){
if (!empty($posibles)){
foreach($posibles as $row):?> 
	<li><a href="<?php echo base_url();?>projecte/ficha/<?php echo $row->id;?>"><span><?php echo $row->titol;?></span></a></li>
<?php endforeach;}}?>
</ul>
