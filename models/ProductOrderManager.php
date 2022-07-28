<?php

require_once './models/Manager.php';

class ProductOrderManager extends Manager {
        // *** AJOUT DE PRODUIT 
    public function insert(ProductOrder $productOrder): void {
        
        $query = $this->db->prepare('
        INSERT INTO     products_orders ( product_id,  order_id,  size) 
        VALUES                          (:product_id, :order_id, :size)
        ');
        
        $query->bindValue(':product_id',    $productOrder->getProductId());
        $query->bindValue(':order_id',      $productOrder->getOrderId());
        $query->bindValue(':size',          $productOrder->getSize());
        $query->execute();
    }
        
        // *** SUPPRIMER DU PANIER
    public function deleteProductPanier(ProductOrder $productOrder): void {
        
        $query = $this->db->prepare("
            DELETE FROM     products_orders
            WHERE           product_id  = :idP
            AND             order_id    = :idO;
            ");
            
        $query->bindValue(':idP', $productOrder->getProductId());
        $query->bindValue(':idO', $productOrder->getOrderId());
            
        $query->execute();
    }
        
}