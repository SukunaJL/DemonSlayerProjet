<?php

class Order {
    
    private ?int $id;
    private ?int $userId;
    private ?DateTime $date;
    private ?float  $total;

    public function getId(): ?int {
        return $this->id;
    }
    public function setId(?int $id): void {
        $this->id = $id;
    }
    //////////////////
    public function getUserId(): ?int {
        return $this->userId;
    }

    public function setUserId(?int $userId): void {
        $this->userId = $userId;
    }
    //////////////////
    public function getDate(): ?DateTime {
        return $this->date;
    }

    public function setDate(?DateTime $date): void {
        $this->date = $date;
    }
    //////////////////
    public function getTotal(): ?float {
        return $this->total;
    }

    public function setTotal(?float $total): void {
        $this->total = $total;
    }
}