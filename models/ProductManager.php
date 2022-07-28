<?php

require_once './models/Manager.php';

class ProductManager extends Manager {
    
    // ********** PAGES DU SITES **********
        // *** LISTE PRODUITS
    public function selectAll(): array {
        
        $query = $this->db->prepare("
            SELECT  id, 
                    name, 
                    picture, 
                    description, 
                    price
            FROM    products;
            ");
            
        $query->execute();
        
        $products = $query->fetchAll();
        
        return $products;
    }
        // *** DETAIL PRODUIT
    public function selectById(int $id): array {
        
        $query = $this->db->prepare('
            SELECT  id, 
                    name, 
                    picture, 
                    description, 
                    price
            FROM    products 
            WHERE   id = :id;
            ');
            
        $query->bindValue(':id', $id);
        
        $query->execute();
        
        $product = $query->fetch();
        
        return $product;
    }
    
    // ********** ADMINISTRATION **********
        // *** AJOUTER
    public function insert(Product $product): void{
        
        $query = $this->db->prepare('
            INSERT INTO products    ( name,  picture,  description,  price) 
            VALUES                  (:name, :picture, :description, :price)
            ');
        
        $query->bindValue(':name',          $product->getName());
        $query->bindValue(':picture',       $product->getPicture());
        $query->bindValue(':description',   $product->getDescription());
        $query->bindValue(':price',         $product->getPrice());
        
        $query->execute();
    }
        // *** LISTER
    public function selectAllForAdmin(): array {
        
        
        $query = $this->db->prepare("
            SELECT  id, 
                    name 
            FROM    products;
            ");
            
        $query->execute();
        
        $products = $query->fetchAll();
        
        return $products;
    }
        // *** MODIFIER
    public function update(Product $product): void {
        
        $query = $this->db->prepare("
            UPDATE  products 
            SET     name        = :name, 
                    picture     = :picture, 
                    description = :description, 
                    price       = :price
            WHERE   id          = :id;
            ");
            
        $query->bindValue(':name',          $product->getName());
        $query->bindValue(':picture',       $product->getPicture());
        $query->bindValue(':description',   $product->getDescription());
        $query->bindValue(':price',         $product->getPrice());
        
        $query->bindValue(':id',            $product->getId());
        
        $query->execute();
    }
}