package com.imcs.SprMvc.controller;

import java.util.Locale;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.imcs.SprMvc.model.User;
import com.imcs.SprMvc.services.UserService;

import trng.imcs.hib.pojo.Customers;

@Controller
public class UserController {

	@Autowired
	private UserService userService;

	@RequestMapping("/")
	public String userForm(Locale locale, Model model) {

		model.addAttribute("user", new User());
		model.addAttribute("users", userService.list());

		return "userForm";
	}

	@RequestMapping("/saveUser")
	public String saveUser(@ModelAttribute("user") @Valid User user, BindingResult result, Model model) {

		if (result.hasErrors()) {

			model.addAttribute("users", userService.list());
			return "userForm";
		}

		userService.save(user);

		return "redirect:/";

	}

	@RequestMapping("/validateUser")
	public String validateUser(@ModelAttribute("user") @Valid User user, BindingResult result, Model model) {
System.out.println("validate user called");
		if (result.hasErrors()) {

			model.addAttribute("users", userService.list());
			return "userForm";
		}

		boolean flag = userService.find(user.getName());

		if (flag) {
			model.addAttribute("userName", user.getName());
			return "landing";
		} else
			return "userForm";

	}

	@RequestMapping("getInformation")
	public String getInformation(/*@RequestParam("cust_id") int cust_id, Model model*/) {
		System.out.println("get information called");

		//Customers c = userService.findCustomer(cust_id);
	//	model.addAttribute("users", c);
		
		return "custid";
	}
	
	
	@RequestMapping(value="findInformation",method=RequestMethod.POST)
	public String findInformation(@RequestParam int cust_id, Model model) {
		System.out.println("find information called");

		Customers c = userService.findCustomer(cust_id);
		model.addAttribute("customers", c);
		
		return "custid";
	}

	@RequestMapping("addInformation")
	public String addInformation(/*@ModelAttribute("customer") Customers cut, */Model model) {
		System.out.println("add information called");
		model.addAttribute("customer", new Customers());

	//	userService.addCustomer(cut);
		return "info";
	}
	
	@RequestMapping(value="processInformation",method=RequestMethod.POST)
	public String processInformation(@ModelAttribute("customer") Customers cut,BindingResult result, Model model) {
		System.out.println("process information called");

		userService.addCustomer(cut);
		return "landing";
	}
	
	@RequestMapping("redirection")
	public String redirection(Model model) {
		System.out.println("redirection called");
		model.addAttribute("customer", new Customers());
		return "landing";
	}
	
	

}