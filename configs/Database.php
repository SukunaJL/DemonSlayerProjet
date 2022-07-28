<?php

class Database {
    
    private array $configs;
    
    private \PDO $database;
    
    public function __construct() {
        
        $this->configs = require 'configs/databaseRoutes.php';
        
        $this->initConnection();
    }
    
    private function initConnection() {
        
        $this->database = new PDO(
            'mysql:host=' . $this->configs['host'] . ';port=' . $this->configs['port'] . ';dbname=' . $this->configs['name'],
            $this->configs['username'],
            $this->configs['password']
        );
        
    }
    
    public function getConnection() {
        
        return $this->database;
    }
}
