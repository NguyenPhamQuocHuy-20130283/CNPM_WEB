package tran_ty_phu_quy.Controller;
import tran_ty_phu_quy.Model.Product;
import tran_ty_phu_quy.Service.Impl.ProductServiceImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet(name = "loadmore", value = "/loadmore")
public class loadmore extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String amount = request.getParameter("exits");
        /*B2.2: getLstProductByName(name, Integer.parseInt(amount)*/
        List<Product> productList = ProductServiceImpl.
                getInstall().getLstProductByName(name, Integer.parseInt(amount));
        PrintWriter out = response.getWriter();
        for (Product p:productList) {
            out.println(
                    "                    <div class=\"product-item pro\">" +
                    "                        <img src=\""+p.getImage()+"\" alt=\"Product 1\">" +
                    "                        <h2>"+p.getModel()+"</h2>" +
                    "                        <p>"+p.getPrice()+"</p>" +
                    "                    </div>"
            );
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
