<?php

require_once './models/Manager.php';

class OrderManager extends Manager {
    
    // ********** PAGES DU SITES **********
        // *** PANIER
    public function selectLastOrderByUser(int $id): array {
        
        $query = $this->db->prepare('
            SELECT      id
            FROM        orders 
            WHERE       user_id = :id;
            ORDER BY    date DESC
            LIMIT 1
            ');
            
        $query->bindValue(':id', $id);
        
        $query->execute();
        
        $order = $query->fetch();
        
        return $order;
    }
        
    public function selectByOrderId(int $id): array | bool {
        
        $query = $this->db->prepare('
            SELECT      orders.id, 
                        orders.user_id, 
                        orders.date, 
                        orders.total, 
                        products_orders.size, 
                        products_orders.order_id, 
                        products_orders.product_id,
                        products.name, 
                        products.picture, 
                        products.price
            FROM        orders 
            LEFT JOIN   products_orders
            ON          products_orders.order_id = orders.id
            LEFT JOIN   products
            ON          products.id              = products_orders.product_id
            WHERE       orders.id                = :id
            ');
            
        $query->bindValue(':id', $id);
        
        $query->execute();
        
        $order = $query->fetchAll();
        
        return $order;
        
    }
        // *** AJOUTER
    public function insert(Order $order): int{
        
        $query = $this->db->prepare('
            INSERT INTO orders (user_id) 
            VALUES      (:user_id)
            ');
        
        $query->bindValue(':user_id',   $order->getUserId());
        
        $query->execute();
        
        $id = $this->db->lastInsertId();
        
        return $id;
    }
    
    public function selectByUserId(int $id): array | bool {
        
        $query = $this->db->prepare('
            SELECT  id
            FROM    orders 
            WHERE   user_id = :user_id
            ;');
            
        $query->bindValue(':user_id', $id);
        
        $query->execute();
        
        $order = $query->fetch();
        
        return $order;
    }
        
        
    // ********** ADMINISTRATION **********
        // *** LISTER
        
    public function selectAllForAdmin(): array {
        
        
        $query = $this->db->prepare("
            SELECT      orders.id, 
                        orders.user_id, 
                        orders.date,
                        users.nom, 
                        users.prenom
            FROM        orders
            LEFT JOIN   users
            ON          orders.user_id = users.id
            ;");
            
        $query->execute();
        
        $orders = $query->fetchAll();
        
        return $orders;
    }
        // *** AFFICHAGE FACTURE - PREPARATION COMMANDE
    public function selectAllByOrderId(int $id): array | bool {
        
        $query = $this->db->prepare('
            SELECT      orders.id AS ref_order, 
                        orders.user_id, 
                        orders.date,
                        products_orders.size, 
                        products_orders.order_id, 
                        products_orders.product_id,
                        products.id AS ref_product, 
                        products.name, 
                        products.picture, 
                        products.price,
                        users.id AS ref_user, 
                        users.nom, 
                        users.prenom, 
                        users.adresse, 
                        users.email, 
                        users.telephone
            FROM        orders
            LEFT JOIN   users
            ON          orders.user_id              = users.id
            LEFT JOIN   products_orders
            ON          products_orders.order_id    = orders.id
            LEFT JOIN   products
            ON          products.id                 = products_orders.product_id
            WHERE       orders.id                   = :id
            ');
            
        $query->bindValue(':id', $id);
        
        $query->execute();
        
        $order = $query->fetchAll();
        
        return $order;
    }
        // *** TOTAL
    public function selectTotalByOrder(int $id): array {
        
        $query = $this->db->prepare('
            SELECT SUM(products.price) AS total
            FROM        products
            LEFT JOIN   products_orders
            ON          products_orders.product_id = products.id
            LEFT JOIN   orders
            ON          orders.id = products_orders.order_id
            WHERE       orders.id = :id
            ');
            
        $query->bindValue(':id', $id);
        
        $query->execute();
        
        $order = $query->fetch();
        
        return $order;
    }
    
}