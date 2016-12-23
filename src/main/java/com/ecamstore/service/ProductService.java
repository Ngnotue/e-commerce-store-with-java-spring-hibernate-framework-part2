package com.ecamstore.service;

import com.ecamstore.model.Product;

import java.util.List;

/**
 * Created by Yuth on 12/8/2016.
 */
public interface ProductService {

    List<Product> getProductList();
    Product getProductById(int id);
    void addProduct(Product product);
    void editProduct(Product product);
    void deleteProduct(Product product);
}
