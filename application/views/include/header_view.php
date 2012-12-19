<div class="topheader">

<div class="left">

<h1 class="logo"><a href="<?php echo base_url();?>"><img width="100" src="<?php echo base_url();?>assets/images/logo.png"></a></h1>

<span class="slogan">PANEL CONTROL</span>



<div class="chatsearch">   
<input   value="Buscador de proyectos" 
onfocus="if (this.value == 'Buscador de proyectos') this.value = '';" onblur="if (this.value == '')
this.value = 'Buscador de proyectos';" name="proyectos-q" id="proyectos-q" type="text" 
style="width: 200px" onkeyup="javascript:autosuggest('proyectos','buscador','buscador')"/>
<div class="autosuggest"  id="proyectos"></div> 
</div><!--search-->
 
   

           

            

            <br clear="all" />

            

        </div><!--left-->

        

        <div class="right">
<!--
        	<div class="notification">

                <a class="count" href="ajax/notifications.html"><span>9</span></a>

        	</div>
-->
            <div class="userinfo">

            	<!--<img width="20"src="<?php echo base_url();?>assets/foto_perfil/496.jpg" alt="" />-->

	                <span><?php echo $this->session->userdata('username');?></span>

            </div><!--userinfo-->

            

            <div class="userinfodrop">

            	<div class="avatar">

                 <a href="#"><img src="<?php echo base_url();?>assets/images/icons/persona.png" alt="" /></a> 
                     

                </div><!--avatar-->

                <div class="userdata">

                	 

                    <span class="email"><?php echo $this->session->userdata('email');?></span>

                    <ul>

                    
                        <li><a href="<?php echo base_url();?>auth/logout">Cerrar sesión</a></li>

                    </ul>

                </div><!--userdata-->

            </div><!--userinfodrop-->

        </div><!--right-->

    </div><!--topheader-->

    

    

    <div class="header">

    	<ul class="headermenu">

        	<li class="current"><a href="<?php echo base_url();?>"><span class="icon icon-flatscreen"></span>Panel de control</a></li>
   

       
       
        </ul>

        

        <div class="headerwidget" >

        	<div class="earnings" >

            	<div class="one_half" >

                	<h4>PROJECTES </h4>

                    <h2>
                     <?php echo $this->numproyectos;?>
                     </h2>

                </div><!--one_half-->

                <div class="one_half last alignright">

                	<h4></h4>

                    <h2></h2>

                </div><!--one_half last-->

            </div><!--earnings-->

        </div><!--headerwidget-->

        

        

    </div><!--header-->

    <div class="vernav2 iconmenu">

    	<ul>
		<?php if ($this->session->userdata('Principis_i_objectius') == 1){ ?>
		<li><a href="#propuesta" class="editor">Principis y objectius</a>
			<span class="arrow"></span>
			<ul id="propuesta">
				<li><a href="<?php echo base_url();?>principis/gestion">Principis</a></li>
				<li><a href="<?php echo base_url();?>objectius_estrategics/gestion">Objectius estratègics</a></li>
				<li><a href="<?php echo base_url();?>objectius_tactics/gestion">Objectius tàctics</a></li>	 
				 	 
			</ul>
         </li>
         <?php } if ($this->session->userdata('Projectes') == 1){ ?>
		 <li><a href="#principis" class="editor">Projectes</a>
			<span class="arrow"></span>
			<ul id="principis">
				<li><a href="<?php echo base_url();?>proyecto/gestion">Projectes</a></li>
				<li><a href="<?php echo base_url();?>proposta/gestion">Propostes</a></li>
				<li><a href="<?php echo base_url();?>serveis/gestion">Serveis</a></li>
				<li><a href="<?php echo base_url();?>tipus_projectes/gestion">Tipus projectes</a></li>
				<li><a href="<?php echo base_url();?>proyecto/encuestas">Control de qualitat</a></li>

			</ul>
        </li>
		 
		 
		 
	  
		<?php } if ($this->session->userdata('Sesions') == 1){ ?>
		<li><a href="#persones" class="editor">Sesions</a>
			<span class="arrow"></span>
			<ul id="persones">
				<li><a href="<?php echo base_url();?>reunions/gestion">Reunions</a></li>
				<li><a href="<?php echo base_url();?>persona/gestion">Persones</a></li>
				<li><a href="<?php echo base_url();?>estructures/gestion">Estructures</a></li>	 
			</ul>
        </li>
 
		 
		<?php } if (($this->session->userdata('Usuaris'))== 1){?>
		<li><a href="#usuarios" class="editor">Usuaris</a>
			<span class="arrow"></span>
			<ul id="usuarios">
				<li><a href="<?php echo base_url();?>usuaris">Usuaris</a></li>
			 
				<li><a href="<?php echo base_url();?>usuaris/perfil_permisos">Perfils</a></li>	
			</ul>
        </li>
		<?php } ?>
        <a class="togglemenu"></a>

        <br /><br />

    </div><!--leftmenu-->

        