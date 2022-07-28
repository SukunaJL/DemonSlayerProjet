<?php
session_start();

require './configs/Router.php';

require_once './controllers/admin/AdminController.php';

require_once './controllers/HomepageController.php';

require_once './controllers/ArcController.php';
require_once './controllers/CharacterController.php';

require_once './controllers/UserController.php';

require_once './controllers/ContactController.php';

require_once './controllers/ProductController.php';
require_once './controllers/OrderController.php';


$router = new Router();

$routesAdmin = [
    'admin',
    
    'admin_add_character',
    'admin_list_character',
    'admin_modify_character',
    
    'admin_add_arc',
    'admin_list_arc',
    'admin_modify_arc',
    
    'admin_list_user',
    'admin_modify_user',
    'admin_delete_user',
    
    'admin_add_product',
    'admin_list_product',
    'admin_modify_product',
    
    'admin_list_order',
    'admin_detail_order',
];


if (isset($_GET["page"]) && in_array($_GET["page"], $routesAdmin)){
    require './views/admin/layout.phtml';
} else {
    require './views/layout.phtml';
}
