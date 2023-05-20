package tran_ty_phu_quy.Controller;

import tran_ty_phu_quy.Model.Product;
import tran_ty_phu_quy.Service.Impl.ProductServiceImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "SeachController", value = "/seach")
public class SeachServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {

            String key = request.getParameter("keySeach");
            /*B1.2: getLstProductByName(key, 0)*/
            List<Product> lst = ProductServiceImpl.getInstall().getLstProductByName(key, 0);
            int size = ProductServiceImpl.getInstall().getTotalProduct(key);

            request.setAttribute("key", key);
            request.setAttribute("lstProduct", lst);
            request.setAttribute("size", size);
            request.getRequestDispatcher("/client/seach.jsp").forward(request, response);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
}
