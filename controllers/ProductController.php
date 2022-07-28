<?php

require_once './models/Product.php';
require_once './models/ProductManager.php';
require_once './models/ProductOrderManager.php';

class ProductController {
    // ********** PAGES DU SITES **********
        // *** LISTE PRODUITS
    public function products() {
        
        $manager = new ProductManager();
        $products = $manager->selectAll();
        
        require './views/shop/products.phtml';
    }
        // *** DETAIL PRODUIT
    public function product() {
        
        $manager = new ProductManager();
        $product = $manager->selectById($_GET['id']);
        
        require './views/shop/product.phtml';
    }
    
    // ********** ADMINISTRATION **********
        // *** AJOUTER
    public function addProducts(): void {
        if($_SESSION['admin']) {
        
            if (isset($_POST['name'])        && !empty($_POST['name'])        && 
                isset($_POST['description']) && !empty($_POST['description']) &&
                isset($_FILES['picture'])    && !empty($_FILES['picture']) &&
                isset($_POST['price'])       && !empty($_POST['price'])
                ) {
                $product = new Product();
                
                $product->setPicture($_FILES['picture']['name']);
                $product->setName($_POST['name']);
                $product->setDescription($_POST['description']);
                $product->setPrice($_POST['price']);
                
                $manager = new ProductManager();
                $manager->insert($product);
                
                move_uploaded_file($_FILES['picture']['tmp_name'],'images/upload/product/'.$_FILES['picture']['name']);
                
                header('Location: index.php?page=admin_add_product');
            }
            require './views/admin/add_products.phtml';
        } else {
            header('Location: index.php');
        }
    }
        // *** LISTER
    public function listProducts() {
        if($_SESSION['admin']) {
        
        $manager = new ProductManager();
        $products = $manager->selectAllForAdmin();
        
        require './views/admin/list_products.phtml';
        } else {
            header('Location: index.php');
        }
    }
        // *** MODIFIER
    public function modifyProduct(): void {
        
        if($_SESSION['admin']) {
        
            $manager = new ProductManager();
    
            $product = $manager->selectById($_GET['id']);
            
            $picture = $product['picture'];
            
            if (isset($_POST['name'])        && !empty($_POST['name'])        && 
                isset($_POST['description']) && !empty($_POST['description']) &&
                isset($_FILES['picture'])    && !empty($_FILES['picture']) &&
                isset($_POST['price'])       && !empty($_POST['price'])
                ) {
                $product = new Product();
                
                $product->setName($_POST['name']);
                $product->setDescription($_POST['description']);
                $product->setPrice($_POST['price']);
                
                if (isset($_FILES['picture']['name']) && !empty($_FILES['picture']['name'])) {
                    
                    $product->setPicture($_FILES['picture']['name']);
                    
                    move_uploaded_file($_FILES['picture']['tmp_name'],'images/upload/product/'.$_GET['id'].'/'.$_FILES['picture']['name']);
                    
                }else{
                    $product->setPicture($picture);
                }
                
                $product->setId($_GET['id']);
                
                $update = $manager->update($product);
                
                header('Location: index.php?page=admin_list_product');
            }
            
            require 'views/admin/modify_product.phtml';
            
        } else {
            header('Location: index.php');
        }
    }
}