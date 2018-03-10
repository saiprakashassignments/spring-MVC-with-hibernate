package com.imcs.SprMvc.dao;

import java.util.List;

import com.imcs.SprMvc.model.User;

public interface UserDao {
   void save(User user);
   List<User> list();
User find(String name);
}