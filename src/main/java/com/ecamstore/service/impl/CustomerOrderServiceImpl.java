package com.ecamstore.service.impl;

import com.ecamstore.dao.CustomerOrderDao;
import com.ecamstore.model.Cart;
import com.ecamstore.model.CartItem;
import com.ecamstore.model.CustomerOrder;
import com.ecamstore.service.CartService;
import com.ecamstore.service.CustomerOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Yuth on 12/21/2016.
 */
@Service
public class CustomerOrderServiceImpl implements CustomerOrderService {
    @Autowired
    private CustomerOrderDao customerOrderDao;

    @Autowired
    private CartService cartService;

    @Override
    public void addCustomerOrder(CustomerOrder customerOrder) {
        customerOrderDao.addCustomerOrder(customerOrder);
    }

    @Override
    public double getCustomerOrderGrandTotal(int cartId) {
        double grandTotal=0;
        Cart cart = cartService.getCartById(cartId);
        List<CartItem> cartItems = cart.getCartItems();
        for (CartItem item : cartItems) {
            grandTotal += item.getTotalPrice();
        }
        return grandTotal;
    }
}
