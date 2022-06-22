package com.VRental.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.VRental.dao.UserDao;
import com.VRental.model.Booking;
import com.VRental.model.Login;
import com.VRental.model.User;

import com.VRental.model.Vehicle;

public class UserServiceImpl implements UserService {

	@Autowired
	UserDao userDao;

	public int register(User user) {
		return userDao.register(user);
	}

	public User loginValidation(Login login) {
		return userDao.loginValidation(login);
	}

	public int addVehicle(Vehicle vehicle) {
		return userDao.addVehicle(vehicle);
	}

	public List<Vehicle> getVehicles() {
		return userDao.getVehicles();
	}

	public List<Vehicle> getVehicleByRegnum(String rn) {
		return userDao.getVehicleByRegnum(rn);
	}

	public int bookVehicle(Booking book) {
		return userDao.bookVehicle(book);
	}

}
