<div style="text-align:left;  margin-left:40px;margin-top:20px ;">
<img id="Image-Maps_3201212121014062" src="<?php echo base_url();?>assets/images/nuevo.png" usemap="#Image-Maps_3201212121014062" border="0" width="584" height="533" alt="" />
<map id="_Image-Maps_3201212121014062" name="Image-Maps_3201212121014062">
<?php if ($this->session->userdata('Projectes') == 1){ ?>
<area shape="rect" coords="87,146,207,188" href="<?php echo base_url();?>panel/dirigir" alt="Dirigir" title="Dirigir"    />
<area shape="rect" coords="237,100,357,142" href="<?php echo base_url();?>proposta/evaluar" alt="Evaluar" title="Evaluar"    />

<area shape="rect" coords="375,144,495,186" href="<?php echo base_url();?>panel/control" alt="Controlar" title="Controlar"    />


<area shape="rect" coords="245,185,339,360" href="<?php echo base_url();?>proposta/gestion" alt="Usos de IT" title="Usos de IT"    />
<?php }?>
<?php if ($this->session->userdata('Principis_i_objectius') == 1){ ?>
<area shape="rect" coords="94,186,198,324" href="<?php echo base_url();?>panel/evaluar" alt="Planes" title="Planes"    />
<?php }if ($this->session->userdata('Sesions') == 1){ ?>
<area shape="rect" coords="389,228,483,365" href="<?php echo base_url();?>panel/conformidad" alt="Desempeño" title="Desempeño"    />
<?php } ?>
<?php if ($this->session->userdata('Projectes') == 1){ ?>
<area shape="rect" coords="35,385,263,483" href="<?php echo base_url();?>proyecto/gestion" alt="Proyectos" title="Proyectos"    />
<area shape="rect" coords="319,379,547,477" href="<?php echo base_url();?>proyecto/operaciones" alt="Operaciones IT" title="Operaciones IT"    />
<?php } ?>
<area shape="rect" coords="582,531,584,533" href="http://www.image-maps.com/index.php?aff=mapped_users_3201212121014062" alt="Image Map" title="Image Map" />
</map>
 
</div>
            