package com.ecamstore.service;

import com.ecamstore.model.Cart;
import com.ecamstore.model.CartItem;

/**
 * Created by Yuth on 12/20/2016.
 */
public interface CartItemService {
   void addCartItem(CartItem cartItem);
   void removeCartItem(CartItem cartItem);
   void removeAllCartItems(Cart cart);
   CartItem getCartItemByProductId(int productId);
}
