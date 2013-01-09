<?php $url = uri_string();$apartado = explode("/",$url);?>
<ul class="breadcrumbs">
<li><?php echo ucwords($apartado[0]);?></li>

<li> <a href="javascript:history.back();"> << Tornar enrere</a></li>
</ul>
