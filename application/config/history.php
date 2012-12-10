<?php

$hook['post_controller'] = array(
                                'function' => 'push',
                                'filename' => 'history.php',
                                'filepath' => 'hooks',
                                );
$hook['post_controller_constructor'] = array(
                                'function' => 'setup_history',
                                'filename' => 'history.php',
                                'filepath' => 'hooks',
                                ); 
?>