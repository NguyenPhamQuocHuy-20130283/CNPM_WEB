package tran_ty_phu_quy.Service;

import tran_ty_phu_quy.Model.Product;

import java.util.List;

public interface IProductService {
    List<Product> getLstProductByName(String name, int limit);

    Product getProductById(int parseInt);
}
