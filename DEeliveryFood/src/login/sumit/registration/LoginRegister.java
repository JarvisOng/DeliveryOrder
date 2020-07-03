package login.sumit.registration;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/loginRegister")
public class LoginRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;


    public LoginRegister() {

    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		CustomerDao cd=new CustomerDAOImpl();
		String userName=request.getParameter("username");
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		String submitType=request.getParameter("submit");
		Customer c=cd.getCustomer(userName, email,password);
		if (submitType.equals("login") && c!=null && c.getUsername()!=null) {
			request.setAttribute("message", c.getUsername());
			request.getRequestDispatcher("welcome.jsp").forward(request, response);
		} else if (submitType.contentEquals("register") ){
			c.setUsername(request.getParameter("username"));
			c.getPassword();
			cd.insertCustomer(c);
			request.setAttribute("message", "登録に成功しました。");
			request.getRequestDispatcher("testlogin.jsp").forward(request,  response);
		}
		    request.setAttribute("message", "データが見つからないです。新規登録をお願いします");
		    request.getRequestDispatcher("testlogin.jsp").forward(request,  response);










	}

}
