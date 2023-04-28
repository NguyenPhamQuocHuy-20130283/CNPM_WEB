package webCNPM.Controller;
import webCNPM.Model.Product;
import webCNPM.Service.Impl.ProductServiceImpl;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
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
