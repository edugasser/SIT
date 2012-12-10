<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
 <META http-equiv="Content-Type" content="text/html; charset=windows-1252">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Login Page | Amanda Admin Template</title>
<link rel="stylesheet" href="<?php echo base_url();?>assets/css/style.default.css" type="text/css" />
<script type="text/javascript" src="<?php echo base_url();?>assets/js/plugins/jquery-1.7.min.js"></script>
<script type="text/javascript" src="<?php echo base_url();?>assets/js/plugins/jquery-ui-1.8.16.custom.min.js"></script>
<script type="text/javascript" src="<?php echo base_url();?>assets/js/plugins/jquery.cookie.js"></script>
<script type="text/javascript" src="<?php echo base_url();?>assets/js/plugins/jquery.uniform.min.js"></script>
<script type="text/javascript" src="<?php echo base_url();?>assets/js/custom/general.js"></script>
<script type="text/javascript" src="<?php echo base_url();?>assets/js/custom/index.js"></script>
<!--[if IE 9]>
    <link rel="stylesheet" media="screen" href="css/style.ie9.css"/>
<![endif]-->
<!--[if IE 8]>
    <link rel="stylesheet" media="screen" href="css/style.ie8.css"/>
<![endif]-->
<!--[if lt IE 9]>
	<script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script>
<![endif]-->
</head>

<body class="loginpage">

<?php
$login = array(
	'name'	=> 'login',
	'id'	=> 'login',
	'value' => set_value('login'),
	'maxlength'	=> 80,
	'size'	=> 30,
);
if ($login_by_username AND $login_by_email) {
	$login_label = 'Email or login';
} else if ($login_by_username) {
	$login_label = 'Login';
} else {
	$login_label = 'Email';
}
$password = array(
	'name'	=> 'password',
	'id'	=> 'password',
	'size'	=> 30,
);
$remember = array(
	'name'	=> 'remember',
	'id'	=> 'remember',
	'value'	=> 1,
	'checked'	=> set_value('remember'),
	'style' => 'margin:0;padding:0',
);
$captcha = array(
	'name'	=> 'captcha',
	'id'	=> 'captcha',
	'maxlength'	=> 8,
);
?>

	<div class="loginbox">
    	<div class="loginboxinner">
        	
            <div class="logo">
            	<h1><img width="200"src="<?php echo base_url();?>assets/images/logo.png"></h1>
                <p>Práctica SIT 2012/13</p>
            </div><!--logo-->
            
            <br clear="all" /><br />
            
            <div class="nousername">
				<div class="loginmsg">El password es incorrecto.</div>
            </div><!--nousername-->
            
            <div class="nopassword">
				<div class="loginmsg">El password es incorrecto.</div>
                <div class="loginf">
                    <div class="thumb"><img alt="" src="images/thumbs/avatar1.png" /></div>
                    <div class="userlogged">
                        <h4></h4>
                        <a href="index.html">No <span></span>?</a> 
                    </div>
                </div><!--loginf-->
            </div><!--nopassword-->
            
           <?php $a= "autocomplete=off";echo form_open($this->uri->uri_string(),$a); ?>
            	
                <div class="username">
                	<div class="usernameinner">
                    	<?php echo form_input($login); ?>
                    </div>
                </div>
                
                <div class="password">
                	<div class="passwordinner">
                    	<?php echo form_password($password); ?>
                    </div>
                </div>
                 <div class="keep"> <?php echo form_checkbox($remember); ?>
			<?php echo form_label('Recuerdame', $remember['id']); ?>	 <?php echo form_submit('submit', 'Entrar'); ?> </div>
			 
			<?php echo anchor('/auth/forgot_password/', 'Recupera contraseña'); ?> | 
			<?php if ($this->config->item('allow_registration', 'tank_auth')) echo anchor('/auth/register/', 'Registrar'); ?><br>
		
                 
                
               
            
        
<?php echo form_close(); ?>
            
        </div><!--loginboxinner-->
    </div><!--loginbox-->


</body>

</html>

  