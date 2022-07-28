<?php

require_once './models/Manager.php';

class ArcManager extends Manager {
    
    // ********** PAGES DU SITES **********
        // *** LISTE ARCS
    public function selectAll(): array {
        
        $query = $this->db->prepare("
            SELECT  id, 
                    name 
            FROM    arcs;");
            
        $query->execute();
        
        $arcs = $query->fetchAll();
        
        return $arcs;
    }
        // *** DETAIL ARC
    public function selectById(int $id): array {
        
        $query = $this->db->prepare('
            SELECT  id, 
                    name, 
                    description, 
                    picture 
            FROM    arcs 
            WHERE   id = :id;');
            
        $query->bindValue(':id', $id);
        
        $query->execute();
        
        $arc = $query->fetch();
        
        return $arc;
    }
    
    // ********** ADMINISTRATION **********
        // *** AJOUTER
    public function insert(Arc $arc): void{
        
        $query = $this->db->prepare('
            INSERT INTO     arcs    (name,  description,    picture) 
            VALUES                  (:name, :description,   :picture)
            ');
        
        $query->bindValue(':name',          $arc->getName());
        $query->bindValue(':description',   $arc->getDescription());
        $query->bindValue(':picture',       $arc->getPicture());
        
        $query->execute();
    }
        // *** LISTER
    public function selectAllForAdmin(): array {
        
        
        $query = $this->db->prepare("
            SELECT  id, 
                    name 
            FROM    arcs;
            ");
            
        $query->execute();
        
        $arcs = $query->fetchAll();
        
        return $arcs;
    }
        // *** MODIFIER
    public function update(Arc $arc): void {
        
        $query = $this->db->prepare("
            UPDATE  arcs 
            SET     name = :name, 
                    description = :description, 
                    picture = :picture 
            WHERE   id = :id;
            ");
            
        $query->bindValue(':name',          $arc->getName());
        $query->bindValue(':description',   $arc->getDescription());
        $query->bindValue(':picture',       $arc->getPicture());
        
        $query->bindValue(':id',            $arc->getId());
        
        $query->execute();
    }
}