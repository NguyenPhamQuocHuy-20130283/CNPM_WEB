package tran_ty_phu_quy.Controller;

import webCNPM.Model.Product;
import webCNPM.Service.Impl.ProductServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "SeachController", value = "/SeachController")
public class SeachServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       /*FEATURE TÌM KIẾM SẢN PHẨM
         B3: Tìm kiếm sản phẩm*/
        String name = request.getParameter("name");
        List<Product> lst = ProductServiceImpl.getInstall().getLstProductByName(name,0);
        if(lst.size()<=0) {
            request.setAttribute("error", "Tìm thấy 0 sản phẩm cho từ khóa:"+name);
        } else {
            request.setAttribute("error", "");
        }
        request.setAttribute("name",name);
        request.setAttribute("lstProduct",lst);
        request.setAttribute("size",lst.size());
        request.getRequestDispatcher("./client/seach.jsp").forward(request,response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
}
