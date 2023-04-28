package webCNPM.Controller;
import webCNPM.Model.Product;
import webCNPM.Service.Impl.ProductServiceImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ProductController", value = "/ProductController")
public class ProductServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        /*feature hiển thị chi tiết sản phẩm
           B2: Lấy thông tin chi tiết sản phẩm*/
        String productId = request.getParameter("productId");
        Product p = ProductServiceImpl.getInstall().getProductById(Integer.parseInt(productId));

        request.setAttribute("product",p);
        request.getRequestDispatcher("./client/product-details.jsp").forward(request,response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
