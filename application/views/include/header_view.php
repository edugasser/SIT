<div class="topheader">

<div class="left">

<h1 class="logo"><img width="100" src="<?php echo base_url();?>assets/images/logo.png"></h1>

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

                <span>Eduardo Andrés Gasser</span>

            </div><!--userinfo-->

            

            <div class="userinfodrop">

            	<div class="avatar">

                	<!--<a href="#"><img src="<?php echo base_url();?>assets	/foto_perfil/496.jpg" alt="" /></a>-->

                     

                </div><!--avatar-->

                <div class="userdata">

                	<h4>Eduardo Andrés Gasser</h4>

                    <span class="email">edugasser@gmail.com</span>

                    <ul>

                    	<li><a href="editprofile.html">Editar cuenta</a></li>
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
		<?php if ($this->session->userdata('Propostes') == 1){ ?>
		<li><a href="#propuesta" class="editor">Propostes</a>
			<span class="arrow"></span>
			<ul id="propuesta">
				<li><a href="<?php echo base_url();?>proposta/gestion">Listar</a></li>
				<li><a href="<?php echo base_url();?>proposta/add">Crear</a></li>
				 	 
			</ul>
         </li>
         <?php } if ($this->session->userdata('Principis') == 1){ ?>
		 <li><a href="#principis" class="editor">Principis</a>
			<span class="arrow"></span>
			<ul id="principis">
				<li><a href="<?php echo base_url();?>principis/gestion">Listar</a></li>
				<li><a href="<?php echo base_url();?>principis/add">Crear</a></li>	 
			</ul>
        </li>
		<?php } if ($this->session->userdata('Objectius') == 1){ ?>
		 <li><a href="#objectius_estrategics" class="editor">Objectius</a>
			<span class="arrow"></span>
			<ul id="objectius_estrategics">
				<li><a href="<?php echo base_url();?>objectius_estrategics/gestion">Objectius estratègics</a></li>
				<li><a href="<?php echo base_url();?>objectius_tactics/gestion">Objectius tàctics</a></li>	 
			</ul>
        </li>
		 
		 <?php } if ($this->session->userdata('Projectes') == 1){ ?>
        <li><a href="#formsub" class="editor">Projectes</a>
			<span class="arrow"></span>
			<ul id="formsub">
				<li><a href="<?php echo base_url();?>proyecto/gestion">Listar</a></li>
 
				<li><a href="<?php echo base_url();?>tipus_projectes/gestion">Tipus projectes</a></li>				
			</ul>
        </li>
	 
        <?php } if ($this->session->userdata('Serveis') == 1){ ?>
		  <li><a href="#servicis" class="editor">Serveis</a>
			<span class="arrow"></span>
			<ul id="servicis">
				<li><a href="<?php echo base_url();?>serveis/gestion">Listar</a></li>
				<li><a href="<?php echo base_url();?>serveis/add">Crear</a></li>					
			</ul>
        </li>
		<?php } if ($this->session->userdata('Persones') == 1){ ?>
		<li><a href="#persones" class="editor">Persones</a>
			<span class="arrow"></span>
			<ul id="persones">
				<li><a href="<?php echo base_url();?>persona/gestion">Listar</a></li>
				<li><a href="<?php echo base_url();?>persona/add">Registrar</a></li>	 
			</ul>
        </li>
		<?php } if ($this->session->userdata('Departaments') == 1){?>
		<li><a href="#departament" class="editor">Departaments</a>
			<span class="arrow"></span>
			<ul id="departament">
				<li><a href="<?php echo base_url();?>departament/gestion">Listar</a></li>
				<li><a href="<?php echo base_url();?>departament/add">Crear</a></li>	 
			</ul>
        </li>
		<?php } if (($this->session->userdata('Operacio')) == 1){ ?>
		<li><a href="#operacio" class="editor">Operació</a>
			<span class="arrow"></span>
			<ul id="operacio">
				<li><a href="<?php echo base_url();?>operacio/gestion">Listar</a></li>
				<li><a href="<?php echo base_url();?>operacio/add">Crear</a></li>	 
			</ul>
        </li>
		<?php } if (($this->session->userdata('Usuaris'))== 1){?>
		<li><a href="#usuarios" class="editor">Usuaris</a>
			<span class="arrow"></span>
			<ul id="usuarios">
				<li><a href="<?php echo base_url();?>usuaris">Usuaris</a></li>
				<li><a href="<?php echo base_url();?>usuaris/perfils">Perfils</a></li>
				<li><a href="<?php echo base_url();?>usuaris/perfil_permisos">Permisos</a></li>	
			</ul>
        </li>
		<?php } ?>
        <a class="togglemenu"></a>

        <br /><br />

    </div><!--leftmenu-->

        