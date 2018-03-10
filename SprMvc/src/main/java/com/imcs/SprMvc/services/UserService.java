package com.imcs.SprMvc.services;

import java.util.List;

import com.imcs.SprMvc.model.User;

import trng.imcs.hib.pojo.Customers;


public interface UserService {
   void save(User user);

   List<User> list();

boolean find(String name);

Customers findCustomer(int cust_id);

void addCustomer(Customers cut);
}
