package Dao;

import Models.Product;

import java.util.List;

public interface IproductDao {
    List<Product> getLstProductByName(String name, int limit);

    Product getProductById(int parseInt);
}
