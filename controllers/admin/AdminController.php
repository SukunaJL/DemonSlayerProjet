<?php

class AdminController {
    
    public function admin() {
        if(isset($_SESSION['admin']) && !empty($_SESSION['admin']) && $_SESSION['admin'] == 1) {
            
            require './views/admin/index.phtml';
        } else {
            header('Location: index.php');
        }
        
    }
}