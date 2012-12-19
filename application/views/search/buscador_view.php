 
<ul class="contactlist">
<?php  
if(strlen($searchq)>0){
if (!empty($posibles)){
foreach($posibles as $row):?> 
	<li><a href="<?php echo base_url();?>proyecto/gestion/<?php echo $row->id;?>"><img width="28"src="<?php echo base_url();?>assets/images/bag.png"?><span><?php echo $row->titol;?></span></a></li>
<?php endforeach;}}?>
</ul>
