package com.ecamstore.service.impl;

import com.ecamstore.dao.ProductDao;
import com.ecamstore.model.Product;
import com.ecamstore.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Yuth on 12/8/2016.
 */
@Service
public class ProductServiceImpl implements ProductService {
    @Autowired
    private ProductDao productDao;


    @Override
    public List<Product> getProductList() {
        return productDao.getProductList();
    }

    @Override
    public Product getProductById(int productId) {
        return productDao.getProductById(productId);
    }

    @Override
    public void addProduct(Product product) {

        productDao.addProduct(product);
    }

    @Override
    public void editProduct(Product product) {

        productDao.editProduct(product);
    }

    @Override
    public void deleteProduct(Product product) {

        productDao.deleteProduct(product);
    }
}
