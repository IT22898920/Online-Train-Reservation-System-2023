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

@WebServlet("/UpdatePassengerServlet")
public class UpdatePassengerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String id = request.getParameter("pasid");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String username = request.getParameter("uname");
		String password = request.getParameter("pass");
		PassengerDBUtil passengerdbutil = new PassengerDBUtil();
		boolean isTrue;

		isTrue = passengerdbutil.updatepassenger(id, name, email, phone, username, password);

		if (isTrue == true) {

			List<Passenger> pasDetails = passengerdbutil.getPassengerDetails(id);
			request.setAttribute("pasDetails", pasDetails);

			RequestDispatcher dis = request.getRequestDispatcher("Account.jsp");
			dis.forward(request, response);
		} else {
			List<Passenger> pasDetails = passengerdbutil.getPassengerDetails(id);
			request.setAttribute("pasDetails", pasDetails);

			RequestDispatcher dis = request.getRequestDispatcher("Account.jsp");
			dis.forward(request, response);
		}
	}

}
