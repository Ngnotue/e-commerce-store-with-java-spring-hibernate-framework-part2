package com.ecamstore.dao;

import com.ecamstore.model.Cart;

import java.io.IOException;

/**
 * Created by Yuth on 12/7/2016.
 */
public interface CartDao {
    Cart getCartById(int cartId);

    Cart validate(int cartId) throws IOException;

    void update(Cart cart);
}
