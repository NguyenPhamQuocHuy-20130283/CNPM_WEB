package tran_ty_phu_quy.dao.Impl;
import tran_ty_phu_quy.dao.IproductDao;
import webCNPM.db.DBConnect;

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
        System.out.println(ProductDaoImpl.getInstall().getProductById(3));
    }
    @Override
    public List<Product> getLstProductByName(String name, int limit) {
        List<Product> lst = new ArrayList<>();
        try {
            PreparedStatement statement = DBConnect.getInstall().get("select p.id, p.model,p.image,p.price, p.description " +
                            " from phone p where p.model like ? limit ?,15");
            statement.setString(1,"%"+name+"%");
            statement.setInt(2,limit);
            ResultSet rs = statement.executeQuery();
            while(rs.next()) {
                Product p = new Product();
                p.setId(rs.getInt(1));
                p.setModel(rs.getString(2));
                p.setImage(rs.getString(3));
                p.setPrice(rs.getDouble(4));
                p.setDescription(rs.getString(5));
                lst.add(p);
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
            PreparedStatement statement = DBConnect.getInstall().get("select p.id, p.model,p.image,p.price," +
                    " (select name from color where id=p.id), (select size from ram where id = p.id)," +
                    "(select size from rom where id = p.id),(select type from battery where id =p.id), p.description,p.Specification" +
                            " from phone p where p.id = ?");
            statement.setInt(1,parseInt);
            ResultSet rs = statement.executeQuery();
            while(rs.next()) {
                p.setId(rs.getInt(1));
                p.setModel(rs.getString(2));
                p.setImage(rs.getString(3));
                p.setPrice(rs.getDouble(4));
                p.setColor(rs.getString(5));
                p.setRam(rs.getString(6));
                p.setRom(rs.getString(7));
                p.setBattery(rs.getString(8));
                p.setDescription(rs.getString(9));
                p.setSpecification(rs.getString(10));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return p;
    }
}
