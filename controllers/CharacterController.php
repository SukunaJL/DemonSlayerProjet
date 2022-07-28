<?php

require_once './models/Character.php';
require_once './models/CharacterManager.php';

class CharacterController {
    // ********** PAGES DU SITES **********
    public function characters() {
        
        $manager = new CharacterManager();
        $characters = $manager->selectAll();
        
        require './views/site/characters.phtml';
    }
    
    public function character() {
        
        $manager = new CharacterManager();
        $character = $manager->selectById($_GET['id']);
        
        require './views/site/character.phtml';
    }
    
    // ********** ADMINISTRATION **********
    public function addCharacters(): void {
        if($_SESSION['admin']) {
        
            if (isset($_POST['name'])        && !empty($_POST['name'])        && 
                isset($_POST['description']) && !empty($_POST['description']) &&
                isset($_FILES['picture'])    && !empty($_FILES['picture'])
                ) {
                $character = new Character();
                
                $character->setPicture($_FILES['picture']['name']);
                $character->setName($_POST['name']);
                $character->setDescription($_POST['description']);
                
                $manager = new CharacterManager();
                $manager->insert($character);
                
                move_uploaded_file($_FILES['picture']['tmp_name'],'images/upload/character/'.$_FILES['picture']['name']);
                
                header('Location: index.php?page=admin_add_character');
            }
            require './views/admin/add_characters.phtml';
        } else {
            header('Location: index.php');
        }
    }
    
    public function listCharacters() {
        if($_SESSION['admin']) {
        
        $manager = new CharacterManager();
        $characters = $manager->selectAllForAdmin();
        
        require './views/admin/list_characters.phtml';
        } else {
            header('Location: index.php');
        }
    }
    
    public function modifyCharacter(): void {
        if($_SESSION['admin']) {
    
            if (isset($_POST['name'])        && !empty($_POST['name'])        && 
                isset($_POST['description']) && !empty($_POST['description']) &&
                isset($_FILES['picture'])    && !empty($_FILES['picture'])
                ) {
                $character = new Character();
                
                $character->setId($_GET['id']);
                $character->setPicture($_FILES['picture']['name']);
                $character->setName($_POST['name']);
                $character->setDescription($_POST['description']);
                
                $manager = new CharacterManager();
                $update = $manager->update($character);
                
                move_uploaded_file($_FILES['picture']['tmp_name'],'images/upload/character/'.$_FILES['picture']['name']);
                
                header('Location: index.php?page=admin_list_character');
            }
            
        require 'views/admin/modify_character.phtml';
        } else {
            header('Location: index.php');
        }
    }
    
}

    