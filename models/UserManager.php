<?php

require_once './models/Manager.php';

class UserManager extends Manager {
    // ********** ENREGISTRER **********
    public function selectEmail(User $user): array | bool {
        
        $query = $this->db->prepare('
            SELECT  email 
            FROM    users 
            WHERE   email = :email
            ');
            
        $query->bindValue(':email', $user->getEmail());
        
        $query->execute();
        
        $result = $query->fetch();
        
        return $result;
    }
    
    public function insert(User $user): int {
        
        $query = $this->db->prepare('
            INSERT INTO users (nom,  prenom,  adresse,  email,  password,  telephone,  avatar) 
            VALUES           (:nom, :prenom, :adresse, :email, :password, :telephone, :avatar)
            ');
            
        $query->bindValue(':nom',       $user->getName());
        $query->bindValue(':prenom',    $user->getFirstname());
        $query->bindValue(':adresse',   $user->getAddress());
        $query->bindValue(':email',     $user->getEmail());
        $query->bindValue(':password',  $user->getPassword());
        $query->bindValue(':telephone', $user->getPhone());
        $query->bindValue(':avatar',    $user->getAvatar());
        
        $query->execute();
        
        $id = $this->db->lastInsertId();
        
        return $id;
    }
    // ********** CONNECTION **********
    public function selectByEmail(User $user): array | bool {
        
        $query = $this->db->prepare('
            SELECT  id, 
                    nom, 
                    prenom, 
                    adresse, 
                    email, 
                    password, 
                    telephone, 
                    avatar, 
                    admin 
            FROM    users 
            WHERE   email       = :email 
            AND     password    = :password;
            ');
            
        $query->bindValue(':email',     $user->getEmail());
        $query->bindValue(':password',  $user->getPassword());
        $query->execute();
        
        $result = $query->fetch();
        
        return $result;
    }
    // ********** PROFIL **********
    public function selectById(int $id): array {
        
        $query = $this->db->prepare('
            SELECT  nom, 
                    prenom, 
                    adresse, 
                    email, 
                    password, 
                    telephone, 
                    avatar 
            FROM    users
            WHERE   id = :id;
            ');
            
        $query->bindValue(':id', $id);
        
        $query->execute();
        
        $result = $query->fetch();
        
        return $result;
    }
    // ********** MODIFIER SON PROFIL **********
    public function update(User $user): void {
        
        $query = $this->db->prepare("
            UPDATE  users 
            SET     nom         = :nom, 
                    prenom      = :prenom, 
                    adresse     = :adresse, 
                    password    = :password, 
                    telephone   = :telephone, 
                    avatar      = :avatar
            WHERE   id          = :id;
            ");
            
        $query->bindValue(':nom',       $user->getName());
        $query->bindValue(':prenom',    $user->getFirstname());
        $query->bindValue(':adresse',   $user->getAddress());
        $query->bindValue(':password',  $user->getPassword());
        $query->bindValue(':telephone', $user->getPhone());
        $query->bindValue(':avatar',    $user->getAvatar());
        
        $query->bindValue(':id',        $user->getId());
        
        $query->execute();
    }
    
    // ********** ADMINISTRATION **********
        // *** LISTE UTILISATEURS
    public function selectAllForAdmin(): array {
        
        
        $query = $this->db->prepare("
            SELECT  id, 
                    nom, 
                    prenom, 
                    email 
            FROM    users;
            ");
            
        $query->execute();
        
        $users = $query->fetchAll();
        
        return $users;
    }
        // *** MODIFIER UTILISATEUR
    public function updateForAdmin(User $user): void {
        
        $query = $this->db->prepare("
            UPDATE  users 
            SET     nom         = :nom, 
                    prenom      = :prenom, 
                    adresse     = :adresse, 
                    telephone   = :telephone, 
                    avatar      = :avatar
            WHERE   id          = :id;
            ");
            
        $query->bindValue(':nom',       $user->getName());
        $query->bindValue(':prenom',    $user->getFirstname());
        $query->bindValue(':adresse',   $user->getAddress());
        $query->bindValue(':telephone', $user->getPhone());
        $query->bindValue(':avatar',    $user->getAvatar());
        
        $query->bindValue(':id',        $user->getId());
        
        $query->execute();
    }
        // *** SUPPRIMER UTILISATEUR
    public function deleteUser(User $user): void {
        
        
        $query = $this->db->prepare("
            DELETE FROM users
            WHERE       id = :id;
            ");
            
        $query->bindValue(':id', $user->getId());
            
        $query->execute();
    }
}