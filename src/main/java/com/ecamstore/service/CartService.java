package com.ecamstore.service;

import com.ecamstore.model.Cart;

/**
 * Created by Yuth on 12/20/2016.
 */
public interface CartService {
    Cart getCartById(int cartId);
    void update(Cart cart);
}
