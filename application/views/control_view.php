<script type="text/javascript" src="<?php echo base_url();?>assets/js/plugins/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="<?php echo base_url();?>assets/js/plugins/jquery.uniform.min.js"></script>

<script type="text/javascript" src="<?php echo base_url();?>assets/js/custom/tables.js"></script>
<script type="text/javascript" src="<?php echo base_url();?>assets/js/custom/dashboard.js"></script>
 
 
<div class="pageheader">
<h1 class="pagetitle">Control</h1>
<span class="pagedesc"></span>

</div><!--pageheader-->
 
<?php $this->load->view('include/navigation_view'); ?><!-- navigation -->

  

        

        <div id="contentwrapper" class="contentwrapper">

        

        	<div id="updates" class="subcontent">

          
                    

                    <div class="two_third dashboard_left">

                    

                      <div class="contenttitle2 nomargintop">
                            <h3>Resumen</h3>
                        </div><!--contenttitle-->
 
                        <table cellpadding="0" cellspacing="0" border="0" class="stdtable overviewtable">
                            <colgroup>
                                <col class="con0" width="20%" />
                                <col class="con1" width="20%" />
                                <col class="con0" width="20%" />
                                <col class="con1" width="20%" />
                     
                   
                            </colgroup>
                            <thead>
                                <tr>
                                    <th class="head0">Principis</th>
                                    <th class="head1">Objectius estratègics</th>
                                    <th class="head0">Objectius tàctics</th>
                                    <th class="head1">Propostes</th>
                              
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td class="center"><?php echo $total_principis;?></td>
                                    <td><?php echo $total_oe;?></td>
                                    <td><?php echo $total_ot;?></td>
                                    <td class="center"><?php echo $total_propostes;?></td>
               
                                 
                                    
                                </tr>
                            </tbody>
                        </table>
                          <table cellpadding="0" cellspacing="0" border="0" class="stdtable overviewtable">
                            <colgroup>
                                <col class="con0" width="20%" />
                                <col class="con1" width="20%" />
                                <col class="con0" width="20%" />
                                <col class="con1" width="20%" />
                                <col class="con0" width="20%" />
           
                            </colgroup>
                            <thead>
                                <tr>
									 <th class="head0">Projectes</th>   
                                    <th class="head0">Serveis</th>
                                    <th class="head0">Departaments</th>
                                    <th class="head0">Persones</th>
                                        
                                    
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td class="center"><?php echo $total_proyectos;?></td>
                                    <td><?php echo $total_servicios;?></td>
                                    <td><?php echo $total_departament;?></td>
									<td><?php echo $total_persones;?></td>
                            
                                    
                                </tr>
                            </tbody>
                        </table>
                        
                        <br clear="all" />
						<div class="contenttitle2">
							<h3>Alertes</h3>
						</div><!--contenttitle-->
						<?php if (!empty($alerta_proyectos)){ ?>
						<?php foreach ($alerta_proyectos as $row){ ?>
							<div class="notibar msgalert">
							<a class="close"></a>
							<p>El projecte "<a href="<?php echo base_url();?>proyecto/gestion"><?php echo $row->titol;?></a>" no es troba alineat amb cap objectiu tàctic</p>
							</div><!-- notification msgalert -->	
						<?php }} ?>
						
						<?php if (!empty($alerta_objectius)){ ?>
						<?php foreach ($alerta_objectius as $row){ ?>
							<div class="notibar msgalert">
							<a class="close"></a>
							<p>L'objectiu estratègic "<a href="<?php echo base_url();?>objectius_estrategics/gestion"><?php echo $row->objectiu;?></a>" no es troba alineat amb cap principi</p>
							</div><!-- notification msgalert -->	
						<?php }} ?>
						
						<?php if (!empty($alerta_propostes)){ ?>
						<?php foreach ($alerta_propostes as $row){ ?>
							<div class="notibar msgalert">
							<a class="close"></a>
							<p>Encara no es va pres capa desició sobre la proposta "<a href="<?php echo base_url();?>proposta/gestion"><?php echo $row->titol;?></a>" </p>
							</div><!-- notification msgalert -->	
						<?php }} ?>
						
						<?php if (!empty($alerta_tactics)){ ?>
						<?php foreach ($alerta_tactics as $row){ ?>
							<div class="notibar msgalert">
							<a class="close"></a>
							<p>L'objectiu tàctic "<a href="<?php echo base_url();?>objectius_tactics/gestion"><?php echo $row->objectiu;?></a>" no es troba alineat amb cap objectiu estratègic </p>
							</div><!-- notification msgalert -->	
						<?php }} ?>
						
				  

                        </div><!-- widgetbox -->                            

                        

					 
                        

                    </div><!--two_third dashboard_left -->

                    

                    <div class="one_third last dashboard_right">

                    

                        
                        <div class="contenttitle2 nomargintop">

                    	<h3>Projectes</h3>

                        </div><!--contenttitle-->
 						<div class="widgetcontent userlistwidget nopadding">                
                       	<ul>
						<?php if (!empty($proyectos)){ ?>
						<?php foreach ($proyectos as $row){ ?>
							<li>
							<div class="info">
								<a href="#"><?php echo $row->titol;?><a>  
							</div><!--info-->
							<div class="progress">
								<?php 
							$inici = $row->data_inici;
							$entrega = $row->data_entrega;
						 
							$s = strtotime($entrega)-strtotime($inici);
							$d = intval($s/86400);
							$s -= $d*86400;
							$h = intval($s/3600);
							$s -= $h*3600;
							$m = intval($s/60);
							$s -= $m*60;
							$total= $d;
							
							$hoy = date('Y-m-d');
							$s = strtotime($entrega)-strtotime($hoy);
							$d = intval($s/86400);
							$s -= $d*86400;
							$h = intval($s/3600);
							$s -= $h*3600;
							$m = intval($s/60);
							$s -= $m*60;
							$quedan = $d;
							
							 $porcentaje = (($quedan*100)/$total);
							
							?>
							<?php echo  date('d-m-Y', strtotime($inici));?>
							<p style="margin-top:-18px;"align="right"><?php echo  date('d-m-Y', strtotime($entrega));?></p>
							<div class="bar2"><div class="value bluebar" style="width: <?php echo $porcentaje;?>%;">Temps (<?php echo $quedan;?> dies)</div></div>
							</div><!--progress-->


							</li>
						<?php }}?>
                        </ul>
                        
						</div>
						<br>
                          

                    </div><!--one_third last-->

                    

                    

     
        

        </div><!--contentwrapper-->
