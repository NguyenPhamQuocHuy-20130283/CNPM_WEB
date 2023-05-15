package tran_minh_tuyen.model;

import java.io.Serializable;

public class UserCustomer implements Serializable {

    private String id;
    private String image;
    private String name;
    private String email;
    private String password;
    private int account_type_id;
    private String id_fb;
    private String id_gg;
    private String sex;

    public UserCustomer() {
    }

    public UserCustomer(String id, String image, String name, String email, String password, int account_type_id, String id_fb, String id_gg, String sex) {
        this.id = id;
        this.image = image;
        this.name = name;
        this.email = email;
        this.password = password;
        this.account_type_id = account_type_id;
        this.id_fb = id_fb;
        this.id_gg = id_gg;
        this.sex = sex;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getAccount_type_id() {
        return account_type_id;
    }

    public void setAccount_type_id(int account_type_id) {
        this.account_type_id = account_type_id;
    }

    public String getId_fb() {
        return id_fb;
    }

    public void setId_fb(String id_fb) {
        this.id_fb = id_fb;
    }

    public String getId_gg() {
        return id_gg;
    }

    public void setId_gg(String id_gg) {
        this.id_gg = id_gg;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }
}
