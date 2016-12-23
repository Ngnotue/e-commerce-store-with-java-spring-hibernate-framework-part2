package com.ecamstore.dao.impl;

import com.ecamstore.dao.CustomerOrderDao;
import com.ecamstore.model.CustomerOrder;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by Yuth on 12/21/2016.
 */
@Repository
@Transactional
public class CustomerOrderDaoImpl implements CustomerOrderDao {
    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public void addCustomerOrder(CustomerOrder customerOrder) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(customerOrder);
        session.flush();
    }
}
