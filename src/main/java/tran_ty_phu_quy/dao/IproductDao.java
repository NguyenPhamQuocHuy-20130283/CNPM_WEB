package tran_ty_phu_quy.dao;

import tran_ty_phu_quy.Model.Product;

import java.sql.SQLException;
import java.util.List;

public interface IproductDao {
    List<Product> getLstProductByName(String name, int limit);

    Product getProductById(int parseInt);

    int getTotalProduct(String name) throws SQLException;
}
