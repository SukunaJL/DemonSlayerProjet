<?php 

class User {
    
    private ?int    $id;
    private ?string $name;
    private ?string $firstname;
    private ?string $address;
    private ?string $email;
    private ?string $password;
    private ?string $phone;
    private ?string $avatar;
    private ?bool   $admin;
    
    public function getId(): ?int {
        return $this->id;
    }
    
    public function setId(?int $id): void {
        $this->id = $id;
    }
    //////////////////
    public function getName(): ?string {
        return $this->name;
    }
    
    public function setName(?string $name): void {
        $this->name = $name;
    }
    //////////////////
    public function getFirstname(): ?string {
        return $this->firstname;
    }
    
    public function setFirstname(?string $firstname): void {
        $this->firstname = $firstname;
    }
    //////////////////
    public function getAddress(): ?string {
        return $this->address;
    }
    
    public function setAddress(?string $address): void {
        $this->address = $address;
    }
    //////////////////
    public function getEmail(): ?string {
        return $this->email;
    }
    
    public function setEmail(?string $email): void {
        $this->email = $email;
    }
    //////////////////
    public function getPassword(): ?string {
        return $this->password;
    }
    
    public function setPassword(?string $password): void {
        $this->password = hash('sha256', $password, false);
        // $this->password = $password;
    }
    //////////////////
    public function getPhone(): ?string {
        return $this->phone;
    }
    
    public function setPhone(?string $phone): void {
        $this->phone = $phone;
    }
    //////////////////
    public function getAvatar(): ?string {
        return $this->avatar;
    }
    
    public function setAvatar(?string $avatar): void {
        $this->avatar = $avatar;
    }
    //////////////////
    public function getAdmin(): ?bool {
        return $this->admin;
    }
    
    public function setAdmin(?bool $admin): void {
        $this->admin = $admin;
    }
    
    // public function getValidationErrors(): array
    // {
    //     $err = [];
        
    //     if ($this->name === '' || $this->name === null) {
    //         $err[] = 'Veuillez entrer votre nom.';
    //     }
    //     if ($this->firstname === '' || $this->firstname === null) {
    //         $err[] = 'Veuillez entrer votre prénom.';
    //     }
    //     if ($this->address === '' || $this->address === null) {
    //         $err[] = 'Veuillez entrer votre adresse.';
    //     }
    //     if ($this->email === '' || $this->email === null) {
    //         $err[] = 'Veuillez entrer votre adresse mail.';
    //     }
    //     if ($this->password === '' || $this->password === null) {
    //         $err[] = 'Veuillez entrer votre mot de passe.';
    //     }
    //     return $err;
    // }
}