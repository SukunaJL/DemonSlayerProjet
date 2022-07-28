<?php

class Product {
    
    private ?int    $id;
    private ?string $name;
    private ?string $picture;
    private ?string $description;
    private ?float  $price;

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
    public function getPicture(): ?string {
        return $this->picture;
    }

    public function setPicture(?string $picture): void {
        $this->picture = $picture;
    }
    //////////////////
    public function getDescription(): ?string {
        return $this->description;
    }

    public function setDescription(?string $description): void {
        $this->description = $description;
    }
    //////////////////
    public function getPrice(): ?float {
        return $this->price;
    }

    public function setPrice(?float $price): void {
        $this->price = $price;
    }
}
