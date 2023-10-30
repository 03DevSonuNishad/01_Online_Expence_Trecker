package Com.Servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.jasper.runtime.ProtectedFunctionMapper;

import Com.DB.HibernateUtil;
import Com.Dao.UserDao;
import Com.Entity.User;

@WebServlet("/userRegister")
public class RegisterServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String fullName = req.getParameter("fullName");
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		String about = req.getParameter("about");

		User u = new User(fullName, email, password, about);
		/* System.out.println(u); */

		UserDao dao = new UserDao(HibernateUtil.getSessionFactory());

		boolean f = dao.saveUser(u);

		HttpSession session = req.getSession();

		if (f) {
			session.setAttribute("msg", "Register Succesfully");
			resp.sendRedirect("register.jsp");
		} else {
			session.setAttribute("msg", "Something wrong on server");
			resp.sendRedirect("register.jsp");
		}
	}

}
