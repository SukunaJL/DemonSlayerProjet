<?php

require_once './models/Order.php';
require_once './models/OrderManager.php';
require_once './models/ProductOrder.php';
require_once './models/ProductOrderManager.php';

class OrderController {
        // *** AJOUT PRODUIT AU PANIER
    public function addPanier(): void {
        $order = new Order();
        
        $order->setUserId($_SESSION['id']);
        
        $manager = new OrderManager();
        $orderId = $manager->selectByUserId($_SESSION['id']);
        if (isset($orderId['id'])) {
            $id = $orderId['id'];
        } else {
            $id = $manager->insert($order); 
            
        }
        
        $productOrder = new ProductOrder();
        
        $productOrder->setProductId($_GET['id']);
        $productOrder->setOrderId($id);
        $productOrder->setSize($_POST['size']);
        
        $manager = new ProductOrderManager();
        $manager->insert($productOrder);
        
        header('Location: index.php?page=panier');
        
    }
        // *** PANIER
    public function panier() {
        
        $manager = new OrderManager();
        
        $lastOrder = $manager->selectLastOrderByUser($_SESSION['id']);
        
        $order = $manager->selectByOrderId($lastOrder['id']);
        
        $total = $manager->selectTotalByOrder($lastOrder['id']);
        
        require './views/shop/panier.phtml';
    }
        // *** SUPPRIMER UN PRODUIT DU PANIER
    
    public function deleteProductPanier() {
            
        $productOrder = new ProductOrder();
        $productOrder->setProductId($_GET['idP']);
        $productOrder->setOrderId($_GET['idO']);
        
        
        $manager = new ProductOrderManager();
        $manager->deleteProductPanier($productOrder);
        
        header('Location: index.php?page=panier');
    }
    // *****************   ADMINISTRATION
        // *** LISTER
    public function listOrders() {
        if($_SESSION['admin']) {
        
        $manager = new OrderManager();
        
        $orders = $manager->selectAllForAdmin();
        
        require './views/admin/list_orders.phtml';
        } else {
            header('Location: index.php');
        }
    }
        // *** AFFICHAGE FACTURE - PREPARATION COMMANDE
    public function detailOrder() {
        
        $manager = new OrderManager();
        
        $order = $manager->selectAllByOrderId($_GET['id']);
        
        $total = $manager->selectTotalByOrder($_GET['id']);
        
        require './views/admin/detail_order.phtml';
    }
}