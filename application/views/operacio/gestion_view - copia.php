
<script type="text/javascript" src="<?php echo base_url();?>assets/js/plugins/jquery.dataTables.min.js"></script>

<script type="text/javascript" src="<?php echo base_url();?>assets/js/plugins/jquery.uniform.min.js"></script>

<script type="text/javascript" src="<?php echo base_url();?>assets/js/custom/tables.js"></script>
<script type="text/javascript" src="<?php echo base_url();?>assets/js/custom/dashboard.js"></script> 
<div class="pageheader">
<h1 class="pagetitle">Operacions</h1>
<span class="pagedesc"></span>

</div><!--pageheader-->
 
<?php $this->load->view('include/navigation_view'); ?><!-- navigation -->

<div id="contentwrapper" class="contentwrapper">
<div class="contenttitle2">
    <h3>Listat de operacions</h3>
</div><!--contenttitle-->
            
 
<br>

  <form name="myform3"  id="myform3" action="<?php echo base_url().'operacio/delete_all';?>"; method="post">

 

<table cellpadding="0" cellspacing="0" border="0" class="stdtable" id="dyntable">

    <colgroup>
        <col class="con0" />
        <col class="con1" />
        <col class="con0" />

    </colgroup>
    
    <thead>
    
        <tr>
            <th class="head0 nosort"  ><input type="checkbox" name="Check_ctr" value="yes" onClick="Check3(document.myform3.check_list)"></th>
            <th class="head1 nosort">#</th>
            <th class="head1">Operació</th>
			 <th class="head1">Projecte</th>
            <th class="head0 nosort">Acció</th>     
        </tr>
    </thead>
    <tbody >
  
      <?php if (!empty($data)){$i=1;?>
      <?php foreach ($data as $row2):?> 	
       <tr class="gradeX">
          <td align="center" >
	          <span class="center">
	          	<input type="hidden" name="id[]"  value="<?php echo $row2->id;?>"/>
	            <input type="checkbox" name="<?php echo $i;?>" id="check_list"/>
	          </span>
          </td>
          <td style="width:1%"><a href=""> <?php echo $i++;?></a></td>
	      <td width="200"><a href=""> <?php echo $row2->nom;?></a></td>
		   <td width="200"><a href=""> <?php echo $row2->nom_projecte;?></a></td>
	      <td alig="center" width="200">
			<a href="#" title="Ver"class="btn btn3 btn_search"></a> 
			 
			<a href="javascript:ajaxEliminar(<?php echo $row2->id;?>,<?php echo $row2->id;?>)" title="Eliminar"class="btn btn3 btn_trash"></a>
			
		  </td>
 
        </tr>
        <?php endforeach;}?>
    </tbody>
   </table>
   
   <br>
   <button class="submit radius2" onClick="javascript:ajaxEliminarAll();">Eliminar</button>
   
   </form>
<?php if (!empty($success)){?>
 <div name="whatever" id="whatever"  class="notibar msgsuccess">
    <a class="close"></a>
    <p>La información se actualizó correctamente</p>
</div><!-- notification msgsuccess -->
<script type="text/javascript" language="javascript">
	$("#whatever").fadeOut(3000);
</script>
<?php }?>
  <script type="text/javascript" language="javascript">
function ajaxUpdate(id,i){
	var dato = document.getElementById('dato'+i).value;
	document.location = '<?php echo base_url().'proyecto/update/'?>'+'/'+<?php echo $id_seccion;?>+'/'+id+'/'+dato; 
}
</script>
 <script type="text/javascript" language="javascript">
function ajaxEliminar(id1,id2){
	if (confirm("¿Está seguro que desea realizar esta acción?")) {
         document.location = '<?php echo base_url().'proyecto/delete'?>'+'/'+id1+'/'+id2;
      };	
}
</script>
 
<script language="JavaScript">
	function Check3(chk)
	{
	if(document.myform3.Check_ctr.checked==true){
	for (i = 0; i < chk.length; i++)
		chk[i].checked = true ;
	}else{
	
	for (i = 0; i < chk.length; i++)
		chk[i].checked = false ;
	}
	}
</script>

<script type="text/javascript" language="javascript">
function ajaxEliminarAll(){
	if (confirm("¿Está seguro que desea realizar esta acción?")) {
	return true;
	}
};
</script>

 

 