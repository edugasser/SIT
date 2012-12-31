<div class="pageheader">
<h1 class="pagetitle">Usuaris</h1>
<span class="pagedesc"></span>

</div><!--pageheader-->
<?php $this->load->view('include/navigation_view'); ?><!-- navigation -->
<div id="contentwrapper" class="contentwrapper">

<div class="contenttitle2">
<h3>LListat usuaris</h3>
</div><!--contenttitle--><br>
<button onClick="top.frames['iframe'].location.href='<?php echo base_url();?>auth/register';" >Agregar Usuaris</button>
<iframe id="iframe" src="<?php echo base_url();?>admin/usuaris" frameborder="0" width="100%" height="600">  </iframe>
 

 