<?php

class ProductOrder {
    
    private ?int $productId;
    private ?int $orderId;
    private ?string $size;
    
    public function getProductId(): ?int {
        return $this->productId;
    }
    
    public function setProductId(?int $productId): void {
        $this->productId = $productId;
    }
    //////////////////
    public function getOrderId(): ?int {
        return $this->orderId;
    }
    
    public function setOrderId(?int $orderId): void {
        $this->orderId = $orderId;
    }
    //////////////////
    public function getSize(): ?string {
        return $this->size;
    }

    public function setSize(?string $size): void {
        $this->size = $size;
    }
}