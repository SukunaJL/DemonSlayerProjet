<?php

require_once './models/Arc.php';
require_once './models/ArcManager.php';

class ArcController {
    // ********** PAGES DU SITES **********
        // *** LISTE ARCS
    public function arcs() {
        
        $manager = new ArcManager();
        $arcs = $manager->selectAll();
        
        require './views/site/arcs.phtml';
    }
        // *** DETAIL ARC
    public function arc() {
        
        $manager = new ArcManager();
        $arc = $manager->selectById($_GET['id']);
        
        require './views/site/arc.phtml';
    }
    
    // ********** ADMINISTRATION **********
        // *** AJOUTER
    public function addArcs(): void {
        if($_SESSION['admin']) {
        
            if (isset($_POST['name'])        && !empty($_POST['name'])        && 
                isset($_POST['description']) && !empty($_POST['description']) &&
                isset($_FILES['picture'])    && !empty($_FILES['picture'])
                ) {
                $arc = new Arc();
                
                $arc->setPicture($_FILES['picture']['name']);
                $arc->setName($_POST['name']);
                $arc->setDescription($_POST['description']);
                
                $manager = new ArcManager();
                $manager->insert($arc);
                
                move_uploaded_file($_FILES['picture']['tmp_name'],'images/upload/arc/'.$_FILES['picture']['name']);
                
                header('Location: index.php?page=admin_add_arc');
            }
            require './views/admin/add_arcs.phtml';
        } else {
            header('Location: index.php');
        }
    }
        // *** LISTER
    public function listArcs() {
        if($_SESSION['admin']) {
        
        $manager = new ArcManager();
        $arcs = $manager->selectAllForAdmin();
        
        require './views/admin/list_arcs.phtml';
        } else {
            header('Location: index.php');
        }
    }
        // *** MODIFIER
    public function modifyArc(): void {
        if($_SESSION['admin']) {
        
            if (isset($_POST['name'])        && !empty($_POST['name'])        && 
                isset($_POST['description']) && !empty($_POST['description']) &&
                isset($_FILES['picture'])    && !empty($_FILES['picture'])
                ) {
                $arc = new Arc();
                
                $arc->setId($_GET['id']);
                $arc->setPicture($_FILES['picture']['name']);
                $arc->setName($_POST['name']);
                $arc->setDescription($_POST['description']);
                
                $manager = new ArcManager();
                $update = $manager->update($arc);
                
                move_uploaded_file($_FILES['picture']['tmp_name'],'images/upload/arc/'.$_FILES['picture']['name']);
                
                header('Location: index.php?page=admin_list_arc');
            }
            
        require 'views/admin/modify_arc.phtml';
        } else {
            header('Location: index.php');
        }
    }
}