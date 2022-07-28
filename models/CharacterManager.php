<?php

require_once './models/Manager.php';

class CharacterManager extends Manager {
    
    // ********** PAGES DU SITES **********
        
    public function selectAll(): array {
        
        $query = $this->db->prepare("
            SELECT  id, 
                    name 
            FROM    characters;
            ");
            
        $query->execute();
        
        $characters = $query->fetchAll();
        
        return $characters;
    }
    
    public function selectById(int $id): array {
        
        $query = $this->db->prepare('
            SELECT  id, 
                    name, 
                    description, 
                    picture 
            FROM    characters 
            WHERE   id = :id;
            ');
            
        $query->bindValue(':id', $id);
        
        $query->execute();
        
        $character = $query->fetch();
        
        return $character;
    }
    
    // ********** ADMINISTRATION **********
    
    public function insert(Character $character): void{
        
        $query = $this->db->prepare('
            INSERT INTO characters  (name,   description,   picture) 
            VALUES                  (:name, :description, :picture)
            ');
        
        $query->bindValue(':name',          $character->getName());
        $query->bindValue(':description',   $character->getDescription());
        $query->bindValue(':picture',       $character->getPicture());
        
        $query->execute();
    }
    
    public function selectAllForAdmin(): array {
        
        
        $query = $this->db->prepare("
            SELECT  id, 
                    name 
            FROM    characters;");
            
        $query->execute();
        
        $characters = $query->fetchAll();
        
        return $characters;
    }
    
    public function update(Character $character): void {
        
        $query = $this->db->prepare("
            UPDATE  characters 
            SET     name        = :name, 
                    description = :description, 
                    picture     = :picture 
            WHERE   id          = :id;
            ");
            
        $query->bindValue(':name',          $character->getName());
        $query->bindValue(':description',   $character->getDescription());
        $query->bindValue(':picture',       $character->getPicture());
        
        $query->bindValue(':id',            $character->getId());
        
        $query->execute();
    }
}