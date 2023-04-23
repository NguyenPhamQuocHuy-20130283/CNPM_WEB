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
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        /* Tham số này chứa mã lỗi nếu việc đăng nhập bị hủy bởi người dùng.*/
        String error = request.getParameter("error");

        /* Tham số này chứa mã xác thực dùng để lấy thông tin người dùng Facebook nếu việc đăng nhập thành công.*/
        String code = request.getParameter("code");

        // khi người dùng hủy đăng nhập bằng Facebook
        if (error != null && error.equals("access_denied")) {
            response.sendRedirect(request.getContextPath() + "/shop/login");
        }
        // khi người dùng đồng ý đăng nhập bằng tài khoản Facebook trên trang xác thực tài khoản của Fb
        if (code != null) {
            String accessToken = FacebookUtils.getToken(code);
            User userFacebook = FacebookUtils.getUserInfor(accessToken);

            String webBrowser = request.getHeader("User-Agent");

            UserCustomer userCustomer = new UserCustomer();
            userCustomer.setId_fb(userFacebook.getId());
            userCustomer.setName(userFacebook.getName());
            userCustomer.setSex(userFacebook.getGender());
            userCustomer.setEmail(userFacebook.getEmail());

            // kiểm tra id_user_fb của người dùng có tồn tại trong hệ thống hay chưa ?
            int id_user = FacebookGoogleService.checkExistAccReturnId(JDBiConnector.me(), userFacebook.getId(), TypeAcc.ACC_FACEBOOK);
            if (id_user != -1) {
                // đã tồn tại trong hệ thống
                userCustomer.setId(id_user + "");
                Log logSignIn = new Log(userCustomer.getId(), "", "đăng nhập hệ thống bằng tài khoản Fb", "", webBrowser, "");
                logSignIn.insert(JDBiConnector.me()); // ghi lịch sử đăng nhập vào bảng Log

                request.getSession().setAttribute("auth_customer", userCustomer);
                response.sendRedirect(request.getContextPath() + "/HomeServlet");

            } else if (id_user == -1) {
                // chưa tồn tại trong hệ thống

                Log logCreateAcc = new Log("", "", "", "", webBrowser, "");
                int new_id_user = FacebookGoogleService.createAccProReturnId(JDBiConnector.me(), userCustomer, TypeAcc.ACC_FACEBOOK, logCreateAcc);

                if (new_id_user != -1) {
                    // tạo tài khoản thành công đồng thời đăng nhập vào hệ thống
                    userCustomer.setId(new_id_user + "");
                    Log logSignIn = new Log(userCustomer.getId(), "", "đăng nhập hệ thống bằng tài khoản Fb", "", webBrowser, "");
                    logSignIn.insert(JDBiConnector.me());

                    request.getSession().setAttribute("auth_customer", userCustomer);
                    response.sendRedirect(request.getContextPath() + "/HomeServlet");

                } else {
                    // tạo tài khoản không thành công <=> không thể đăng nhập vào hệ thống

                    response.sendRedirect(request.getContextPath() + "/LoginServlet");

                }

            }

        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
