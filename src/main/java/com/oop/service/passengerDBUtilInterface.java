package com.oop.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.ArrayList;
import java.util.List;

import com.oop.model.Passenger;
import com.oop.util.DBConnect;

public interface passengerDBUtilInterface {
	
	public boolean validate(String uid, String pass);
	
	public List<Passenger> getPassenger(String userName);
	
	public boolean insertpassenger(String name, String email, String phone, String username, String password);

	public boolean updatepassenger(String id, String name, String email, String phone, String username,
			String password);
	
	public List<Passenger> getPassengerDetails(String Id);

	public boolean deletePassenger(String id);

}
