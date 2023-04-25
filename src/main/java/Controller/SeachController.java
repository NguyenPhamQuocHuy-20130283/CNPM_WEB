package Controller;

import Models.Product;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;
import Dao.Impl.ProductDaoImpl;
@WebServlet(name = "SeachController", value = "/SeachController")
public class SeachController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        if(name==null) {
            request.setAttribute("error","Không tìm thấy");
        } else {
            List<Product> lst = ProductDaoImpl.getInstall().getLstProductByName(name,0);
            request.setAttribute("name",name);
            request.setAttribute("lstProduct",lst);
            request.setAttribute("size",lst.size());
        }
        request.getRequestDispatcher("/seach.jsp").forward(request,response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
}
