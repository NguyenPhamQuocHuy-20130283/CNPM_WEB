package webCNPM.Service.Impl;

import webCNPM.Model.Product;
import webCNPM.Service.IProductService;
import webCNPM.dao.Impl.ProductDaoImpl;
import webCNPM.dao.IproductDao;

import java.util.List;

public class ProductServiceImpl implements IProductService {

    static IProductService install;

    public static IProductService getInstall() {
        if(install==null) {
            install = new ProductServiceImpl();
        }
        return install;
    }
    @Override
    public List<Product> getLstProductByName(String name, int limit) {
        return ProductDaoImpl.getInstall().getLstProductByName(name,limit);
    }

    @Override
    public Product getProductById(int parseInt) {
        return ProductDaoImpl.getInstall().getProductById(parseInt);
    }
}
