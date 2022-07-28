<?php

return [
    'index'                     => [
        'action'                => [HomepageController::class, 'index']
    ],
    'contact'                   => [
        'action'                => [ContactController::class, 'contact']
    ],
    // ********** PAGES **********
    'arcs'                      => [
        'action'                => [ArcController::class, 'arcs']
    ],
    'arc'                       => [
        'action'                => [ArcController::class, 'arc']
    ],
    
    'characters'                => [
        'action'                => [CharacterController::class, 'characters']
    ],
    'character'                 => [
        'action'                => [CharacterController::class, 'character']
    ],
    // ********** UTILISATEURS **********
    'login'                     => [
        'action'                => [UserController::class, 'login']
    ],
    'register'                  => [
        'action'                => [UserController::class, 'register']
    ],
    'user'                      => [
        'action'                => [UserController::class, 'user']
    ],
    'user_profile'              => [
        'action'                => [UserController::class, 'userModify']
    ],
    // ********** ADMINISTRATION **********
    'admin'                     => [
        'action'                => [AdminController::class, 'admin']
    ],
    
    'admin_add_character'       => [
        'action'                => [CharacterController::class, 'addCharacters']
    ],
    'admin_list_character'      => [
        'action'                => [CharacterController::class, 'listCharacters']
    ],
    'admin_modify_character'    => [
        'action'                => [CharacterController::class, 'modifyCharacter']
    ],
    
    'admin_add_arc'             => [
        'action'                => [ArcController::class, 'addArcs']
    ],
    'admin_list_arc'            => [
        'action'                => [ArcController::class, 'listArcs']
    ],
    'admin_modify_arc'          => [
        'action'                => [ArcController::class, 'modifyArc']
    ],
    
    'admin_list_user'           => [
        'action'                => [UserController::class, 'listUsers']
    ],
    'admin_modify_user'         => [
        'action'                => [UserController::class, 'modifyUser']
    ],
    'admin_delete_user'         => [
        'action'                => [UserController::class, 'deleteUser']
    ],
    
    'admin_add_product'         => [
        'action'                => [ProductController::class, 'addProducts']
    ],
    'admin_list_product'        => [
        'action'                => [ProductController::class, 'listProducts']
    ],
    'admin_modify_product'      => [
        'action'                => [ProductController::class, 'modifyProduct']
    ],
    
    'admin_list_order'          => [
        'action'                => [OrderController::class, 'listOrders']
    ],
    'admin_detail_order'        => [
        'action'                => [OrderController::class, 'detailOrder']
    ],
    // **********      BOUTIQUE      **********
    'products'                  => [
        'action'                => [ProductController::class, 'products']
    ],
    'product'                   => [
        'action'                => [ProductController::class, 'product']
    ],
    
    'panier'                    => [
        'action'                => [OrderController::class, 'panier']
    ],
    'add_panier'                => [
        'action'                => [OrderController::class, 'addPanier']
    ],
    'delete_product_panier'     => [
        'action'                => [OrderController::class, 'deleteProductPanier']
    ],
];