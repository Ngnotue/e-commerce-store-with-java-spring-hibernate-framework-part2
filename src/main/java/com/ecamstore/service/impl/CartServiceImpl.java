package com.ecamstore.service.impl;

import com.ecamstore.dao.CartDao;
import com.ecamstore.model.Cart;
import com.ecamstore.service.CartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by Yuth on 12/20/2016.
 */
@Service
public class CartServiceImpl implements CartService{
    @Autowired
    private CartDao cartDao;

    @Override
    public Cart getCartById(int cartId) {
        return cartDao.getCartById(cartId);
    }

    @Override
    public void update(Cart cart) {
        cartDao.update(cart);
    }
}
