package Dao.Impl;

import Dao.IproductDao;
import Models.Product;
import db.DBConnect;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ProductDaoImpl implements IproductDao {
    static IproductDao install;

    public static IproductDao getInstall() {
        if(install==null) {
            install = new ProductDaoImpl();
        }
        return install;
    }

    public static void main(String[] args) {
        System.out.println(ProductDaoImpl.getInstall().getLstProductByName("iphone",0));
    }
    @Override
    public List<Product> getLstProductByName(String name, int limit) {
        List<Product> lst = new ArrayList<>();
        try {
            PreparedStatement statement = DBConnect.getInstall().getConn().
                    prepareStatement("select p.id, p.model,p.image,p.price,p.description" +
                            " from phone p where p.model like ? limit ?,15");
            statement.setString(1,"%"+name+"%");
            statement.setInt(2,limit);
            ResultSet rs = statement.executeQuery();
            while(rs.next()) {
                lst.add(new Product(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5)));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return lst;
    }

    @Override
    public Product getProductById(int parseInt) {
        Product p = new Product();
        try {
            PreparedStatement statement = DBConnect.getInstall().getConn().
                    prepareStatement("select p.id, p.model,p.image,p.price,p.description" +
                            " from phone p where p.id = ?");
            statement.setInt(1,parseInt);
            ResultSet rs = statement.executeQuery();
            while(rs.next()) {
                p.setId(rs.getInt(1));
                p.setModel(rs.getString(2));
                p.setImage(rs.getString(3));
                p.setPrice(rs.getDouble(4));
                p.setDescription(rs.getString(5));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return p;
    }
}
