package com.oop.servlet;

import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.oop.model.Passenger;
import com.oop.service.PassengerDBUtil;

@WebServlet("/DeletePassengerServlet")
public class DeletePassengerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String id = request.getParameter("pasid");
		PassengerDBUtil passengerdbutil = new PassengerDBUtil();
		
		if (id == null || id.isEmpty()) {
			response.sendRedirect("errorPage.jsp"); // Redirect to an error page or handle it appropriately
			return;
		}
		System.out.println(id);
		boolean isTrue = passengerdbutil.deletePassenger(id);
		System.out.println(isTrue);
		if (isTrue) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
			dispatcher.forward(request, response);
		} else {
			List<Passenger> pasDetails = passengerdbutil.getPassengerDetails(id);
			request.setAttribute("pasDetails", pasDetails);
			RequestDispatcher dispatcher = request.getRequestDispatcher("Account.jsp");
			dispatcher.forward(request, response);
		}
	}
}
