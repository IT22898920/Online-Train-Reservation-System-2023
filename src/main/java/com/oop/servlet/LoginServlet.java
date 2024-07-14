package com.oop.servlet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oop.model.Passenger;
import com.oop.service.PassengerDBUtil;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		HttpSession session = request.getSession();
		

		String userName = request.getParameter("uid");
		String password = request.getParameter("pass");
		boolean isTrue;
		
		PassengerDBUtil passengerdbutil = new PassengerDBUtil();
		isTrue = passengerdbutil.validate(userName, password);
		
		if (isTrue == true) {
			List<Passenger> pasDetails = passengerdbutil.getPassenger(userName);
			request.setAttribute("pasDetails", pasDetails);
			session.setAttribute("pasDetails", pasDetails);
			RequestDispatcher dis = request.getRequestDispatcher("index.jsp");
			dis.forward(request, response);
		} else {
			out.println("<script type='text/javascript'>");
			out.println("alert('Your username or password is incorrect');");
			out.println("location='login.jsp'");
			out.println("</script>");
		}
	}
}
