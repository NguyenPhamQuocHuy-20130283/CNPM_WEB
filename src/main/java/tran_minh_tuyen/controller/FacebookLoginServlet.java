package tran_minh_tuyen.controller;

import com.restfb.types.User;
import tran_minh_tuyen.db.JDBiConnector;
import tran_minh_tuyen.model.Log;
import tran_minh_tuyen.model.TypeAcc;
import tran_minh_tuyen.model.UserCustomer;
import tran_minh_tuyen.service.FacebookGoogleService;
import tran_minh_tuyen.utils.FacebookUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "FacebookLoginServlet", value = "/FacebookLoginServlet")
public class FacebookLoginServlet extends HttpServlet {

    // 1.Usecase: đăng nhập bằng Facebook
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        // alter_flow_2 : 4. gửi đoạn mã error thông báo user đã "Hủy đăng nhập bằng Fb"
        String error = request.getParameter("error");

        // alter_flow_2 : 5. chuyển về trang đăng nhập
        if (error != null && error.equals("access_denied")) {
            response.sendRedirect(request.getContextPath() + "/LoginServlet");
        }

        // basic_flow && alter_flow_1 : 4.gửi một đoạn code chứa mã xác thực
        String code = request.getParameter("code");

        if (code != null) {

            // basic_flow && alter_flow_1 : 5.gọi hàm getToken() của class FacebookUtils
            // => trả về giá trị là một accessToken
            String accessToken = FacebookUtils.getToken(code);

            // basic_flow && alter_flow_1 : 6.gọi hàm getUserInfor() của class FacebookUtils
            // => trả về giá trị là một object userFacebook dựa vào accessToken
            User userFacebook = FacebookUtils.getUserInfor(accessToken);

            String webBrowser = request.getHeader("User-Agent");

            // basic_flow && alter_flow_1 : 7.khởi tạo object userCustomer
            UserCustomer userCustomer = new UserCustomer();
            userCustomer.setId_fb(userFacebook.getId());
            userCustomer.setName(userFacebook.getName());
            userCustomer.setSex(userFacebook.getGender());
            userCustomer.setEmail(userFacebook.getEmail());

            // basic_flow && alter_flow_1 : 8. gọi hàm checkExistAccReturnId() của class FacebookGoogleService
            int id_user = FacebookGoogleService.checkExistAccReturnId(JDBiConnector.me(), userFacebook.getId(),
                    TypeAcc.ACC_FACEBOOK);

            // Tài khoản Fb dùng để đăng nhập đã tồn tại trong hệ thống => basic_flow
            if (id_user != -1) {

                userCustomer.setId(id_user + "");

                // basic_flow : 9.khởi tạo object logSignIn
                Log logSignIn = new Log(userCustomer.getId(), "", "đăng nhập hệ thống bằng tài khoản Fb", "",
                        webBrowser, "");

                // basic_flow : 10.ghi lại thông tin về lịch sử đăng nhập vào Db
                logSignIn.insert(JDBiConnector.me());

                request.getSession().setAttribute("auth_customer", userCustomer);

                // basic_flow : 11. chuyển đến Trang chủ với tư cách là user đã đăng nhập bằng tài khoản Fb
                response.sendRedirect(request.getContextPath() + "/HomeServlet");

            }

            // Tài khoản Fb dùng để đăng nhập chưa tồn tại trong hệ thống => alter_flow_1
            else if (id_user == -1) {

                // alter_flow_1 : 9.khởi tạo object logCreateAcc
                Log logCreateAcc = new Log("", "", "", "", webBrowser, "");

                // alter_flow_1 : 10.gọi hàm tạo tài khoản và trả về giá trị id mới
                int new_id_user = FacebookGoogleService.createAccProReturnId(JDBiConnector.me(), userCustomer,
                        TypeAcc.ACC_FACEBOOK, logCreateAcc);

                if (new_id_user != -1) {

                    userCustomer.setId(new_id_user + "");

                    // alter_flow_1 : 11.khởi tạo object logSignIn
                    Log logSignIn = new Log(userCustomer.getId(), "", "đăng nhập hệ thống bằng tài khoản Fb", "",
                            webBrowser, "");

                    // alter_flow_1 : 12. ghi lại thông tin lịch sử đăng nhập vào db
                    logSignIn.insert(JDBiConnector.me());

                    request.getSession().setAttribute("auth_customer", userCustomer);

                    // alter_flow_1 : 13. chuyển đến Trang chủ với tư cách là user đã đăng nhập bằng tài khoản Fb
                    response.sendRedirect(request.getContextPath() + "/HomeServlet");

                } else {

                    response.sendRedirect(request.getContextPath() + "/LoginServlet");

                }

            }

        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
