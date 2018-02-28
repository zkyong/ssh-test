package com.zkyong.ssh.dao;

import com.zkyong.ssh.model.Product;

/**
 * 商品操作-持久层接口
 *
 */
public interface ProductDao {
	void saveProduct(Product product);
}
