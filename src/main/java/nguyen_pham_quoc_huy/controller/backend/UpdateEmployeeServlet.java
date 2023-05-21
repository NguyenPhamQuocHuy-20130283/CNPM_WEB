package nguyen_pham_quoc_huy.controller.backend;

import nguyen_pham_quoc_huy.model.exception.HashGenerationException;
import nguyen_pham_quoc_huy.service.EmployeeService;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "UpdateEmployeeServlet", value = "/backend/update_employee")
@MultipartConfig(
        fileSizeThreshold = 1024 * 10, // 10 KB
        maxFileSize = 1024 * 1024, // 1 MB
        maxRequestSize = 1024 * 1024 * 2 // 2 MB
)
public class UpdateEmployeeServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        EmployeeService service = new EmployeeService(request, response);
        try {
            service.updateEmployee();
        } catch (HashGenerationException e) {
            throw new RuntimeException(e);
        }
    }
}
