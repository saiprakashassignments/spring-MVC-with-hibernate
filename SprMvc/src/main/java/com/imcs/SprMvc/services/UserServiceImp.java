package com.imcs.SprMvc.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.imcs.SprMvc.dao.UserDao;
import com.imcs.SprMvc.model.User;

import trng.imcs.hib.dao.CustomerDao;
import trng.imcs.hib.dao.ICustomerDao;
import trng.imcs.hib.excp.CustomException;
import trng.imcs.hib.pojo.Customers;

@Service
public class UserServiceImp implements UserService {

	@Autowired
	private UserDao userDao;

	@Transactional
	public void save(User user) {
		userDao.save(user);
	}

	@Transactional(readOnly = true)
	public List<User> list() {
		return userDao.list();
	}

	@Transactional
	public boolean find(String name) {
		User use = userDao.find(name);
		if (use == null)
			return false;
		else
			return true;
		// return userDao.find(name);
	}

	@Transactional
	public Customers findCustomer(int cust_id) {
		Customers c = null;
		ICustomerDao customerDao = new CustomerDao();
		try {
			c = customerDao.loadStudent(Integer.parseInt("" + cust_id));
		} catch (CustomException e) {
			e.printStackTrace();
		}
		return c;
	}

	@Transactional
	public void addCustomer(Customers cut) {
		ICustomerDao customerDao = new CustomerDao();
		try {
			customerDao.addStudent(cut);
		} catch (CustomException e) {
			e.printStackTrace();
		}
	}

}