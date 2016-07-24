package hgksoft.acquy.user.actions;

import com.opensymphony.xwork2.ActionSupport;
import java.io.PrintWriter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts2.ServletActionContext;

/**
 *
 * @author HNTIN
 */
public class LietKeSanPhamActionSupport extends ActionSupport {
    
    public LietKeSanPhamActionSupport() {
    }

    public String execute() throws Exception {
        // TODO Auto-generated method stub
        HttpServletRequest request = ServletActionContext.getRequest();
        HttpServletResponse response = ServletActionContext.getResponse();
        PrintWriter out = response.getWriter();
        
        String id = (String) request.getParameter("select_id");
        String mode = (String) request.getParameter("select_mode");
        return SUCCESS;
    }

}
