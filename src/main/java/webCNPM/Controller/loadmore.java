package webCNPM.Controller;
import webCNPM.Model.Product;
import webCNPM.Service.Impl.ProductServiceImpl;
import webCNPM.dao.Impl.ProductDaoImpl;

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

        List<Product> productList = ProductServiceImpl.
                getInstall().getLstProductByName(name, Integer.parseInt(amount));
        PrintWriter out = response.getWriter();
        for (Product p:productList) {
            out.println(" <div class=\"col-lg-4 col-md-6\">\n" +
                    "            <div class=\"product__item\">\n" +
                    "              <div class=\"product__item__pic set-bg\" data-setbg=\""+p.getImage()+"\">\n" +
                    "                <div class=\"label new\">New</div>\n" +
                    "                <ul class=\"product__hover\">\n" +
                    "                  <li><a href=\""+p.getImage()+"\" class=\"image-popup\"><span class=\"arrow_expand\"></span></a></li>\n" +
                    "                  <li><a href=\"#\"><span class=\"icon_heart_alt\"></span></a></li>\n" +
                    "                  <li><a href=\"./ProductController?productId="+p.getId()+"><span class=\"icon_bag_alt\"></span></a></li>\n" +
                    "                </ul>\n" +
                    "              </div>\n" +
                    "              <div class=\"product__item__text\">\n" +
                    "                <h6><a href=\"#\">"+p.getModel()+"</a></h6>\n" +
                    "                <div class=\"rating\">\n" +
                    "                  <i class=\"fa fa-star\"></i>\n" +
                    "                  <i class=\"fa fa-star\"></i>\n" +
                    "                  <i class=\"fa fa-star\"></i>\n" +
                    "                  <i class=\"fa fa-star\"></i>\n" +
                    "                  <i class=\"fa fa-star\"></i>\n" +
                    "                </div>\n" +
                    "                <div class=\"product__price\">"+p.getPrice()+"</div>\n" +
                    "              </div>\n" +
                    "            </div>\n" +
                    "          </div>");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
