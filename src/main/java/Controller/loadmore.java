package Controller;

import Dao.Impl.ProductDaoImpl;
import Models.Product;

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

        List<Product> productList = ProductDaoImpl.
                getInstall().getLstProductByName(name, Integer.parseInt(amount));
        PrintWriter out = response.getWriter();
        for (Product p:productList) {
            out.println("  <div class= \"pro item\">\n"+
                    "      <a href= product-detail?productId="+p.getId() +" "+
                    "      title=\" \"> \n" +
                    "      <img id=\"img__product\"" +
                    "      src=\""+p.getImage()+"\" alt=\" \"> \n" +
                    "      <p>"+p.getModel()+"</p>\n" +
                    "      <span>"+ p.getPrice()+"</span>\n" +
                    "      </a>\n" +
                    "  </div>");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
