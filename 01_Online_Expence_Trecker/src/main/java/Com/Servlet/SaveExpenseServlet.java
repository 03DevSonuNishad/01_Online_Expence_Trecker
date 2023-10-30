package Com.Servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Com.DB.HibernateUtil;
import Com.Dao.ExpenseDao;
import Com.Entity.Expense;
import Com.Entity.User;

@WebServlet("/saveExpense")
public class SaveExpenseServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String title = req.getParameter("title");
		String date = req.getParameter("date");
		String time = req.getParameter("time");
		String discription = req.getParameter("discription");
		String price = req.getParameter("price");

		HttpSession session = req.getSession();

		User user = (User) session.getAttribute("loginUser");

		Expense ex = new Expense(title, date, time, discription, price, user);

		ExpenseDao dao = new ExpenseDao(HibernateUtil.getSessionFactory());

		boolean f = dao.saveExpense(ex);

		if (f) {
			session.setAttribute("msg", "Expense Added Succesfully");
			resp.sendRedirect("user/add_expense.jsp");
		} else {
			session.setAttribute("msg", "Something wrong on server");
			resp.sendRedirect("user/add_expense.jsp");
		}

	}
}
