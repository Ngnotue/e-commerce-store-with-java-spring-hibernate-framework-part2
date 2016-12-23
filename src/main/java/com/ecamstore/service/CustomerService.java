package com.ecamstore.service;

import com.ecamstore.model.Customer;

import java.util.List;

/**
 * Created by Yuth on 12/9/2016.
 */
public interface CustomerService {
    void addCustomer(Customer customer);
    Customer getCustomerById(int customerId);
    List<Customer> getAllCustomers();

    Customer getCustomerByUsername(String username);
}
