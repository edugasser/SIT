<script type="text/javascript" src="<?php echo base_url();?>assets/js/plugins/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="<?php echo base_url();?>assets/js/plugins/jquery.uniform.min.js"></script>

<script type="text/javascript" src="<?php echo base_url();?>assets/js/custom/tables.js"></script>
<script type="text/javascript" src="<?php echo base_url();?>assets/js/custom/dashboard.js"></script>
 
 <div class="pageheader">

            <h1 class="pagetitle">Panel de control</h1>
 

        </div><!--pageheader-->

        

        <div id="contentwrapper" class="contentwrapper">

        

        	<div id="updates" class="subcontent">

          
                    

                    <div class="two_third dashboard_left">

                    

                      <div class="contenttitle2 nomargintop">
                            <h3>Resumen</h3>
                        </div><!--contenttitle-->
                        
                        <div class="overviewhead">
                        	<div class="overviewselect">
                                <select id="overviewselect" name="select">
                                    <option value="">Last 1 hour ago</option>
                                    <option value="">Last 5 hours ago</option>
                                    <option value="">Today</option>
                                    <option value="">Yesterday</option>
                                    <option value="">This Week</option>
                                    <option value="">Last Week</option>
                                    <option value="">This Month</option>
                                    <option value="">Last Month</option>
                                </select>
                            </div><!--floatright-->
                        	De: &nbsp;<input type="text" id="datepickfrom" /> &nbsp; &nbsp; a: &nbsp;<input type="text" id="datepickto" />
                        </div><!--overviewhead-->
                        
                        <br clear="all" />
                        
                        <table cellpadding="0" cellspacing="0" border="0" class="stdtable overviewtable">
                            <colgroup>
                                <col class="con0" width="20%" />
                                <col class="con1" width="20%" />
                                <col class="con0" width="20%" />
                                <col class="con1" width="20%" />
                                <col class="con0" width="20%" />
                                <col class="con0" width="20%" />
                                <col class="con0" width="20%" />
                                <col class="con0" width="20%" />
                                <col class="con0" width="20%" />
                            </colgroup>
                            <thead>
                                <tr>
                                    <th class="head0">Personas tradas</th>
                                    <th class="head1">Personas nuevas</th>
                                    <th class="head0">Personas añadidas a grupos</th>
                                    <th class="head1">Personas quitadas de grupos</th>
                                    <th class="head0">Grupos creados</th>
                              
                                    
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td class="center">20.5</td>
                                    <td>67.3%</td>
                                    <td>856, 220</td>
                                    <td class="center">32, 012</td>
                                    <td class="center">20.5</td>
                                 
                                    
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
                              
                                    <th class="head0">Cambios de anfitrión</th>
                                    <th class="head0">Grupos sin validar</th>
                                    <th class="head0">Grupos sin configurar</th>
                                    <th class="head0">Informes no enviados</th>
                                    <th class="head0">Alerta obreros</th>
                                    
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td class="center">20.5</td>
                                    <td>67.3%</td>
                                    <td>856, 220</td>
                                    <td class="center">32, 012</td>
                                    <td class="center">20.5</td>
                            
                                    
                                </tr>
                            </tbody>
                        </table>
                        
                        <br clear="all" />
				 <div class="contenttitle2">
                	<h3>Registro</h3>
                </div><!--contenttitle-->
                <table cellpadding="0" cellspacing="0" border="0" class="stdtable" id="dyntable">

                    <colgroup>
                        <col class="con0" />
                        <col class="con1" />
                        <col class="con0" />
 
                    </colgroup>
                    <thead>
                        <tr>
                            <th class="head0">Quién</th>
                            <th class="head1">Cuándo</th>
                            <th class="head0">Qué</th>
 
                        </tr>
                    </thead>
              
                    <tbody>
                        <tr class="gradeX">
                            <td>Eduardo Andrés Gasser</td>
                            <td>16/12/2012 12:12</td>
                            <td>INICIO SESIÓN</td>
 
                        </tr>
                          <tr class="gradeX">
                            <td>Eduardo Andrés Gasser</td>
                            <td>16/12/2012 12:12</td>
                            <td>INICIO SESIÓN</td>
 
                        </tr>
                          <tr class="gradeX">
                            <td>Eduardo Andrés Gasser</td>
                            <td>16/12/2012 12:12</td>
                            <td>INICIO SESIÓN</td>
 
                        </tr>
                          <tr class="gradeX">
                            <td>Eduardo Andrés Gasser</td>
                            <td>16/12/2012 12:12</td>
                            <td>INICIO SESIÓN</td>
 
                        </tr>
					</tbody>
					</table>
					                                     </div><!--widgetcontent-->

                        </div><!-- widgetbox -->                            

                        

					 
                        

                    </div><!--two_third dashboard_left -->

                    

                    <div class="one_third last dashboard_right">

                    

                        
                        <div class="contenttitle2 nomargintop">

                    	<h3>Últimas personas tradas</h3>

                        </div><!--contenttitle-->
 						<div class="widgetcontent userlistwidget nopadding">                
                       	<ul>
  									<li>

                                        <div class="avatar"><img alt="" src="<?php echo base_url();?>assets/foto_perfil/4.jpg" /></div>

                                        <div class="info">

                                            <a href="#">Alfonso Zuñiga</a> <br />

                                            Software Engineer <br /> 18 minutes ago

                                        </div><!--info-->

                                    </li>
                                    <li>

                                        <div class="avatar"><img alt="" src="<?php echo base_url();?>assets/foto_perfil/5.jpg" /></div>

                                        <div class="info">

                                            <a href="#">Lily Zuñiga</a> <br />

                                            Software Engineer <br /> 18 minutes ago

                                        </div><!--info-->

                                    </li>

                        </ul>
                        
						</div>
						<br>
                         <div class="contenttitle2 nomargintop">

                    	<h3>Cumpleaños</h3>

                        </div><!--contenttitle-->
 						<div class="widgetcontent userlistwidget nopadding">                
                       	<ul>
  									<li>

                                        <div class="avatar"><img alt="" src="<?php echo base_url();?>assets/foto_perfil/4.jpg" /></div>

                                        <div class="info">

                                            <a href="#">Alfonso Zuñiga</a> <br />

                                            Software Engineer <br /> 18 minutes ago

                                        </div><!--info-->

                                    </li>
                                    <li>

                                        <div class="avatar"><img alt="" src="<?php echo base_url();?>assets/foto_perfil/5.jpg" /></div>

                                        <div class="info">

                                            <a href="#">Lily Zuñiga</a> <br />

                                            Software Engineer <br /> 18 minutes ago

                                        </div><!--info-->

                                    </li>

                        </ul>
                        
						</div>
					   <br>
					   <div class="contenttitle2 nomargintop">

                    	<h3>Personas en grupos</h3>

                        </div><!--contenttitle-->
                    

                    	<ul class="toplist">

                        	<li>

                            	<div>

                                	<span class="three_fourth">

                                    	<span class="left">

                                    		<span class="title"><a href="#">Palma</a></span>

                                        	<span class="desc"></span>

                                    	</span><!--left-->

                                    </span><!--three_fourth-->

                                    <span class="one_fourth last">

                                    	<span class="right">

                                        	<span class="h3">800</span>

                                        </span><!--right-->

                                    </span><!--one_fourth-->

                                    <br clear="all" />

                                </div>

                            </li>

                        	<li>

                            	<div>

                                	<span class="three_fourth">

                                    	<span class="left">

                                    		<span class="title"><a href="#">Inca</a></span>

                                        	<span class="desc">Social Network</span>

                                    	</span><!--left-->

                                    </span><!--three_fourth-->

                                    <span class="one_fourth last">

                                    	<span class="right">

                                        	<span class="h3">700</span>

                                        </span><!--right-->

                                    </span><!--one_fourth-->

                                    <br clear="all" />

                                </div>

                            </li>

                        	<li>

                            	<div>

                                	<span class="three_fourth">

                                    	<span class="left">

                                    		<span class="title"><a href="#">Alcudia</a></span>

                                        	<span class="desc"></span>

                                    	</span><!--left-->

                                    </span><!--three_fourth-->

                                    <span class="one_fourth last">

                                    	<span class="right">

                                        	<span class="h3">600</span>

                                        </span><!--right-->

                                    </span><!--one_fourth-->

                                    <br clear="all" />

                                </div>

                            </li>

                        </ul>

                        

					 
                        

                       
                                            

                    </div><!--one_third last-->

                    

                    

     
        

        </div><!--contentwrapper-->
