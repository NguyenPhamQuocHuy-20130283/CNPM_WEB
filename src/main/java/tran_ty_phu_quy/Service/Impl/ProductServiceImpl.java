package tran_ty_phu_quy.Service.Impl;

import tran_ty_phu_quy.Model.Product;
import tran_ty_phu_quy.Service.IProductService;
import tran_ty_phu_quy.dao.Impl.ProductDaoImpl;

import java.sql.SQLException;
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
//        B1.3: getLstProductByName(name,limit);
//        B2.3: getLstProductByName(name,limit);
        return ProductDaoImpl.getInstall().getLstProductByName(name,limit);
    }

    @Override
    public Product getProductById(int parseInt) {
        return ProductDaoImpl.getInstall().getProductById(parseInt);
    }

    @Override
    public int getTotalProduct(String name) throws SQLException {
        return ProductDaoImpl.getInstall().getTotalProduct(name);
    }
}
