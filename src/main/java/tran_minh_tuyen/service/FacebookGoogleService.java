package tran_minh_tuyen.service;

import org.jdbi.v3.core.Jdbi;
import org.jdbi.v3.core.statement.Query;
import org.jdbi.v3.core.statement.Update;
import tran_minh_tuyen.model.Log;
import tran_minh_tuyen.model.TypeAcc;
import tran_minh_tuyen.model.UserCustomer;

public class FacebookGoogleService {

    /*
        - Hàm này dùng để kiểm tra sự tồn tại của id_user_fb_gg trong Db
        - Nếu
            + tồn tại : => sẽ trả về id_user của tài khoản Fb/Gg đó
            + không tồn tại or xảy ra ngoại lệ : => sẽ trả về giá trị là -1
     */
    public static int checkExistAccReturnId(Jdbi jdbi, String id_user_fb_gg, int typeAcc) {
        int id_user_customer = -1;
        try {
            if (typeAcc == TypeAcc.ACC_FACEBOOK) {

                id_user_customer = jdbi.withHandle(handle -> {
                    Query query = handle.createQuery("SELECT id FROM user WHERE id_fb = :id_fb AND account_type_id= :typeAcc");
                    query.bind("id_fb", id_user_fb_gg);
                    query.bind("typeAcc", typeAcc);
                    return query.mapTo(Integer.class).one();//--> Phương thức one() sẽ trả về giá trị của cột đầu tiên nếu có bản ghi được trả về từ câu truy vấn, ngược lại sẽ ném ra một ngoại lệ.
                });

            } else if (typeAcc == TypeAcc.ACC_GOOGLE) {


            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }

        return id_user_customer;
    }

    /*
        - Hàm này dùng để tạo tài khoản mới trong Db dựa vào thông tin trả về từ Fb/Gg
        => kết quả trả về là id_user của tài khoản đó trong Db
        - nếu xảy ra ngoại lệ thì giá trị trả về sẽ là -1
        - ghi lại Log tạo tài khoản
     */
    public static int createAccProReturnId(Jdbi jdbi, UserCustomer infor, int typeAcc, Log logCreateAcc) {
        int id_user = -1;
        try {
            if (typeAcc == TypeAcc.ACC_FACEBOOK) {
                id_user = jdbi.withHandle(handle -> {
                    Update update = handle.createUpdate("INSERT INTO user(name,email,password,account_type_id,id_fb) VALUES (:name,:email,:password,:account_type_id,:id_fb)");
                    update.bind("name", infor.getName())
                            .bind("email", infor.getEmail())
                            .bind("password", infor.getId_fb() + "123@")
                            .bind("account_type_id", TypeAcc.ACC_FACEBOOK)
                            .bind("id_fb", infor.getId_fb());

                    int row_insert = update.execute(); // trả về số dòng được insert vào bảng account_customers

                    if (row_insert == 1) {
                        Query query = handle.createQuery("SELECT LAST_INSERT_ID()"); // Khi chèn dữ liệu vào bảng trong MySQL bằng câu lệnh INSERT, một giá trị ID mới thường được tạo ra tự động cho mỗi bản ghi. Giá trị này thường được tạo ra bởi một trường ID tự động trong bảng hoặc một cột có thuộc tính AUTO_INCREMENT. Nếu bạn muốn truy vấn giá trị ID vừa được tạo ra để sử dụng cho các mục đích khác, bạn có thể sử dụng câu lệnh SELECT LAST_INSERT_ID().
                        return query.mapTo(Integer.class).one(); // trả về id_user ở dòng mới được thêm vào
                    }

                    return -1;
                });

            } else if (typeAcc == TypeAcc.ACC_GOOGLE) {

            }

        } catch (Exception e) {
            System.out.println(e.getMessage());
        } finally {

            logCreateAcc.setUser_id(id_user + "");
            if (typeAcc == TypeAcc.ACC_FACEBOOK) {
                logCreateAcc.setContent("Tạo tài khoản bằng thông tin tài khoản Fb");
            } else if (typeAcc == TypeAcc.ACC_GOOGLE) {
                logCreateAcc.setContent("Tạo tài khoản bằng thông tin tài khoản Gg");
            }
            logCreateAcc.insert(jdbi);

        }
        return id_user;
    }

}
