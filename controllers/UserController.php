<?php

require_once './models/User.php';
require_once './models/UserManager.php';

class UserController {
    // ********** ENREGISTRER **********
    public function register(): void {
        
        if (
            isset($_POST['name']) && !empty($_POST['name']) &&
            isset($_POST['firstname']) && !empty($_POST['firstname']) &&
            isset($_POST['address']) && !empty($_POST['address']) &&
            isset($_POST['email']) && !empty($_POST['email']) &&
            isset($_POST['password']) && !empty($_POST['password'])
            ) {
            
            
            $user = new User();
            
            $user->setName($_POST['name']);
            $user->setFirstname($_POST['firstname']);
            $user->setAddress($_POST['address']);
            $user->setEmail($_POST['email']);
            $user->setPassword($_POST['password']);
            $user->setPhone($_POST['phone']);
            $user->setAvatar($_FILES['avatar']['name']);
            
            $manager = new UserManager();
            $email = $manager->selectEmail($user);
        
            if(empty($email)) {
                
                $manager = new UserManager();
                $id = $manager->insert($user);
                
                mkdir('images/upload/user/'.$id);
                
                move_uploaded_file($_FILES['avatar']['tmp_name'], 'images/upload/user/'.$id.'/'.$_FILES['avatar']['name']);
                
                $_SESSION['avatar'] = $_FILES['avatar']['name'];
                
                $_SESSION['email'] = $user->getEmail();
                $_SESSION['id'] = $id;
                $_SESSION['admin'] = 0;
                
                
                header('Location: index.php');
            } else {
                $errors['email'] = 'Cet email existe déjà.';
            }
        }
        require './views/user/register.phtml';
    }
    // ********** CONNECTION **********
    public function login() :void {
                     
            
        if(isset($_GET['logout']) && !empty($_GET['logout'])) {
            if($_GET['logout']) {
                
                session_destroy();
                
                header('Location: index.php');
            }
        }
        
        if (isset($_POST['email']) && !empty($_POST['email']) &&
            isset($_POST['password']) && !empty($_POST['password'])) {
            
            
            $user = new User();
            
            $user->setEmail($_POST['email']);
            $user->setPassword($_POST['password']);
            
            $manager = new UserManager();
            $login = $manager->selectByEmail($user);
            
            if(empty($login)) {
                
                $errors['email'] = 'Identifiant incorrect.';
                $errors['password'] = 'Identifiant incorrect.';
                
            } else {
                $_SESSION['id'] = $login['id'];
                $_SESSION['email'] = $login['email'];
                $_SESSION['avatar'] = $login['avatar'];
                $_SESSION['admin'] = $login['admin'];
                
                header('Location: index.php');
            }
        }
        require './views/user/login.phtml';
    }
    // ********** PROFIL **********
    public function user() {
        
        $manager = new UserManager();
        
        $user = $manager->selectById($_SESSION['id']);
        
        require './views/user/user.phtml';
    }
    // ********** MODIFIER SON PROFIL **********
    public function userModify() {
        
        $manager = new UserManager();
    
        $user = $manager->selectById($_SESSION['id']);
        
        $avatar = $user['avatar'];
        
        if (isset($_POST['name']) && !empty($_POST['name']) &&
            isset($_POST['firstname']) && !empty($_POST['firstname']) &&
            isset($_POST['address']) && !empty($_POST['address']) &&
            isset($_POST['password']) && !empty($_POST['password'])
            ) {
                
            $user = new User();
            
            $user->setName($_POST['name']);
            $user->setFirstname($_POST['firstname']);
            $user->setAddress($_POST['address']);
            $user->setPassword($_POST['password']);
            $user->setPhone($_POST['phone']);
            $user->setId($_SESSION['id']);
            
            if (isset($_FILES['avatar']['name']) && !empty($_FILES['avatar']['name'])) {
                    $user->setAvatar($_FILES['avatar']['name']);
                    move_uploaded_file($_FILES['avatar']['tmp_name'],'images/upload/user/'.$_SESSION['id'].'/'.$_FILES['avatar']['name']);
                    $_SESSION['avatar'] = $_FILES['avatar']['name'];
                
                }else{
                    $user->setAvatar($avatar);
                }
            
            $manager = new UserManager();
            $update = $manager->update($user);
            
            header('Location: index.php?page=user');
        }
        require './views/user/modify_profile.phtml';
    }
    // ********** ADMINISTRATION **********
    public function listUsers() {
        if($_SESSION['admin']) {
        
        $manager = new UserManager();
        $users = $manager->selectAllForAdmin();
        
        require './views/admin/list_users.phtml';
        } else {
            header('Location: index.php');
        }
    }
    public function modifyUser(): void {
        
        if($_SESSION['admin']) {
        
            $manager = new UserManager();
    
            $user = $manager->selectById($_GET['id']);
            
            $avatar = $user['avatar'];
        
            if (isset($_POST['name']) && !empty($_POST['name']) &&
                isset($_POST['firstname']) && !empty($_POST['firstname']) &&
                isset($_POST['address']) && !empty($_POST['address'])
                ) {
                    
                $user = new User();
            
                $user->setName($_POST['name']);
                $user->setFirstname($_POST['firstname']);
                $user->setAddress($_POST['address']);
                $user->setPhone($_POST['phone']);
                
                if (isset($_FILES['avatar']['name']) && !empty($_FILES['avatar']['name'])) {
                    $user->setAvatar($_FILES['avatar']['name']);
                    move_uploaded_file($_FILES['avatar']['tmp_name'],'images/upload/user/'.$_GET['id'].'/'.$_FILES['avatar']['name']);
                
                }else{
                    $user->setAvatar($avatar);
                }
                
                $user->setId($_GET['id']);
                
                $update = $manager->updateForAdmin($user);
                
                header('Location: index.php?page=admin_list_user');
            }
            
        require 'views/admin/modify_user.phtml';
        } else {
            header('Location: index.php');
        }
    }
    
    public function deleteUser() {
        if($_SESSION['admin']) {
            
        $user = new User();
        $user->setId($_GET['id']);
        
        $manager = new UserManager();
        $manager->deleteUser($user);
        
        header('Location: index.php?page=admin_list_user');
        } else {
            header('Location: index.php');
        }
    }
}