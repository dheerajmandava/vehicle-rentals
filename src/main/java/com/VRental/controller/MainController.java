package com.VRental.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.VRental.model.Booking;
import com.VRental.model.Login;
import com.VRental.model.User;
import com.VRental.model.Vehicle;
import com.VRental.service.UserService;

@Controller
public class MainController {

	@Autowired
	public UserService userService;

	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public ModelAndView showRegister(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView("register");
		mav.addObject("user", new User());

		return mav;
	}

	@RequestMapping(value = "/registerProcess", method = { RequestMethod.POST, RequestMethod.GET })
	public ModelAndView addUser(HttpServletRequest request, HttpServletResponse response,
			@ModelAttribute("user") User user) {

		userService.register(user);

		return new ModelAndView("register", "firstname", user.getName());
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView showLogin() {
		ModelAndView mav = new ModelAndView("login");
		mav.addObject("login", new Login());

		return mav;
	}

	@RequestMapping(value = "/loginProcess", method = { RequestMethod.POST, RequestMethod.GET })
	public ModelAndView loginProcess(HttpServletRequest request, HttpServletResponse response,
			@ModelAttribute("login") Login login) {
		ModelAndView mav = null;
		
		User user = userService.loginValidation(login);
		String role1 = "admin";
		String role2 = "customer";
		if (user != null) {
			if(role1.equals(user.getRoles())) {
				System.out.println("adminnnuu!");
				mav = new ModelAndView("redirect:addv");
				mav.addObject("name", user.getName());
			}
			else if(role2.equals(user.getRoles())) {
				mav = new ModelAndView("redirect:rental");
				mav.addObject("name", user.getName());
			
			} 
		}
			else {
			mav = new ModelAndView("login");
			mav.addObject("message", "Username or Password is wrong!!");
		}

		return mav;
	}

	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public ModelAndView viewHome(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView("home");
		mav.addObject("user", new User());

		return mav;
	}

	@RequestMapping(value = "/addv", method = RequestMethod.GET)
	public ModelAndView viewAddVehicle(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView("addvehicle");
		mav.addObject("vehicle", new Vehicle());

		return mav;
	}

	@RequestMapping(value = "/addVehicle", method = RequestMethod.POST)
	public ModelAndView addUser(HttpServletRequest request, HttpServletResponse response,
			@ModelAttribute("vehicle") Vehicle vehicle) {
		userService.addVehicle(vehicle);
		return new ModelAndView("rentalsview", "vname", vehicle.getVname());
	}

	@RequestMapping(value = "/rental", method = RequestMethod.GET)
	public ModelAndView viewRentalsView(HttpServletRequest request, HttpServletResponse response,
			@RequestParam("name") String name) {
		ModelAndView mav = new ModelAndView("rentalsview");
		List<Vehicle> veh = userService.getVehicles();

		mav.addObject("name", name);

		mav.addObject("list", veh);

		return mav;
	}

	@RequestMapping(value = "/vehicle", method = RequestMethod.GET)
	public ModelAndView viewVehicleDetails(@RequestParam("vrn") String vrn, @RequestParam("name") String name) {
		ModelAndView mav = new ModelAndView("vehicle");
		List<Vehicle> veh = userService.getVehicleByRegnum(vrn);
		mav.addObject("vrn", vrn);
		mav.addObject("name", name);
		mav.addObject("list", veh);

		return mav;
	}

	@RequestMapping(value = "/bookVehicle", method = RequestMethod.GET)
	public ModelAndView viewVehicleDetails1(@RequestParam("vrn") String vrn, @RequestParam("name") String name) {
		ModelAndView mav = new ModelAndView("booking");

		mav.addObject("book", new Booking());
		mav.addObject("vrn", vrn);
		mav.addObject("name", name);
		return mav;
	}

	@RequestMapping(value = "/bookingVehicle", method = { RequestMethod.POST, RequestMethod.GET })
	public ModelAndView bookVehicle(HttpServletRequest request, HttpServletResponse response,
			@ModelAttribute("book") Booking book, @RequestParam("name") String name, @RequestParam("vrn") String vrn) {

		userService.bookVehicle(book);
		ModelAndView mav = new ModelAndView("redirect: rental");
		mav.addObject("name", name);
		mav.addObject("vrn", vrn);

		return mav;
	}

	@RequestMapping(value = "/myrentals", method = RequestMethod.GET)
	public ModelAndView myRentals(@RequestParam("name") String name, @RequestParam("vrn") String vrn) {

		ModelAndView mav = new ModelAndView("mybooking");

		List<Vehicle> veh = userService.getVehicleByRegnum(vrn);
	
		mav.addObject("name", name);
		mav.addObject("vrn", vrn);
		mav.addObject("list", veh);

		return mav;
	}

}