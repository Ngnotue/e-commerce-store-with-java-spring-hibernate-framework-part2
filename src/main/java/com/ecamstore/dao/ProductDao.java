package com.ecamstore.dao;

import com.ecamstore.model.Product;

import java.util.List;

/**
 * Created by Yuth on 12/5/2016.
 */
public interface ProductDao {

    List<Product> getProductList();
    Product getProductById(int id);
    void addProduct(Product product);
    void editProduct(Product product);
    void deleteProduct(Product product);
}
