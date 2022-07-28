<?php

class Router {
    
    private array $routes;
    
    public function __construct() {
        
        $this->routes = require 'configs/routes.php';
        
    }
    
    public function callActionFromRequest(): void{
        
        if(isset($_GET['page']) && !empty($_GET['page']) && array_key_exists($_GET['page'], $this->routes)) {
            $route = $this->routes[$_GET['page']];
        } else {
            $route = $this->routes['index'];
        }
        $controller = new $route['action'][0];
        $controller->{$route['action'][1]}();
    }
    
}