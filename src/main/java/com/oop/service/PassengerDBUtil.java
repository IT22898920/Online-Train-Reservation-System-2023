package com.oop.service;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.oop.model.Passenger;
import com.oop.util.DBConnect;

public class PassengerDBUtil implements  passengerDBUtilInterface{

	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
    
	public boolean validate(String uid, String pass) {
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from passenger1 where username='"+uid+"' and password='"+pass+"'";
			rs = stmt.executeQuery(sql);
			
			if (rs.next()) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	public List<Passenger> getPassenger(String userName) {
		System.out.println("dsddfgddgfg");
		ArrayList<Passenger> passenger = new ArrayList<>();
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from passenger1 where username='"+userName+"'";
			rs = stmt.executeQuery(sql);
			
			while (rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String email = rs.getString(3);
				String phone = rs.getString(4);
				String username = rs.getString(5);
				String password = rs.getString(6);
				
				Passenger pas = Passenger.getInstanceOfPassenger();
				pas.setId(id);
				pas.setEmail(email);
				pas.setName(name);
				pas.setPhone(phone);
				pas.setUsername(username);
				pas.setPassword(password);
				passenger.add(pas);
			}
			
		} catch (Exception e) {
			
		}
		
		return passenger;	
	}
	
	
	

	// insert passenger

	public boolean insertpassenger(String name, String email, String phone, String username, String password) {
		boolean isSuccess = false;

		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			System.out.println(name + email + phone + username + password);

			PreparedStatement preparedStatement = con.prepareStatement("insert into passenger1 values(?,?,?,?,?,?)");
			con.setAutoCommit(false);

			preparedStatement.setInt(1, 0);
			preparedStatement.setString(2, name);
			preparedStatement.setString(3, email);
			preparedStatement.setString(4, phone);
			preparedStatement.setString(5, username);
			preparedStatement.setString(6, password);

			System.out.println(name + email + phone + username + password);

			int rs = preparedStatement.executeUpdate();
			if (rs > 0) {
				isSuccess = true;
			}

			System.out.println(name + email + phone + username + password);
			con.commit();

			isSuccess = true;
			
		} catch (Exception e) {
			e.printStackTrace();
		}

		return isSuccess;
	}

	// update passenger

	public boolean updatepassenger(String id, String name, String email, String phone, String username,
			String password) {

		try {
			Connection connection = DBConnect.getConnection();

			stmt = connection.createStatement();

			String sql = "UPDATE passenger1 SET name=?, email=?, phone=?, username=?, password=? WHERE id=?";
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, name);
			preparedStatement.setString(2, email);
			preparedStatement.setString(3, phone);
			preparedStatement.setString(4, username);
			preparedStatement.setString(5, password);
			preparedStatement.setInt(6, Integer.parseInt(id));
			int rs = preparedStatement.executeUpdate();

			if (rs > 0) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return isSuccess;
	}

	public List<Passenger> getPassengerDetails(String Id) {

		int convertedID = Integer.parseInt(Id);

		ArrayList<Passenger> pas = new ArrayList<>();

		try {

			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from passenger1 where id='" + convertedID + "'";
			rs = stmt.executeQuery(sql);

			while (rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String email = rs.getString(3);
				String phone = rs.getString(4);
				String username = rs.getString(5);
				String password = rs.getString(6);

				Passenger c = Passenger.getInstanceOfPassenger();
				c.setId(id);
				c.setName(name);
				c.setEmail(email);
				c.setPhone(phone);
				c.setUsername(username);
				c.setPassword(password);
				pas.add(c);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return pas;
	}

	// Delete passenger

	public boolean deletePassenger(String id) {

		int convId = Integer.parseInt(id);

		try {

			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "delete from passenger1 where id='" + convId + "'";
			int r = stmt.executeUpdate(sql);

			if (r > 0) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return isSuccess;
	}

}
