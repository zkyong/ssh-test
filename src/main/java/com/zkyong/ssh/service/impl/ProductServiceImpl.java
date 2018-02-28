package com.zkyong.ssh.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.zkyong.ssh.dao.ProductDao;
import com.zkyong.ssh.model.Product;
import com.zkyong.ssh.service.ProductService;

@Service
public class ProductServiceImpl implements ProductService {

	@Autowired
	private ProductDao productDao;

	@Override
	public void saveProduct(Product product) {
		productDao.saveProduct(product);
	}

}