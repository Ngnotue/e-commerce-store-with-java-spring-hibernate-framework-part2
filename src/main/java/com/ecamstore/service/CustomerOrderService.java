package com.ecamstore.service;

import com.ecamstore.model.CustomerOrder;

/**
 * Created by Yuth on 12/21/2016.
 */
public interface CustomerOrderService {
    void addCustomerOrder(CustomerOrder customerOrder);
    double getCustomerOrderGrandTotal(int cartId);
}
