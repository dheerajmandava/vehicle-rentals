package com.VRental.service;

import java.util.List;

import com.VRental.model.Booking;
import com.VRental.model.Login;
import com.VRental.model.User;

import com.VRental.model.Vehicle;

public interface UserService {

	int register(User user);
	User loginValidation(Login login);
	int addVehicle(Vehicle vehicle);
	List<Vehicle> getVehicles(); 
	List<Vehicle> getVehicleByRegnum(String rn);
	int bookVehicle(Booking book);
	
}
