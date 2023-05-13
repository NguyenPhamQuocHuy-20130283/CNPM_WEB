package webCNPM.Service;

import webCNPM.Model.Product;

import java.util.List;

public interface IProductService {
    List<Product> getLstProductByName(String name, int limit);

    Product getProductById(int parseInt);
}
