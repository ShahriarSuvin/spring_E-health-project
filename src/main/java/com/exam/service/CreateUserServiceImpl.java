package com.exam.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.exam.dao.CreateUserDaoImpl;
import com.exam.dao.OnlineAppointDaoImpl;
import com.exam.model.CreateUser;
import com.exam.model.OnlineAppointment;
import com.exam.model.UserMessage;

@Service
@Transactional
public class CreateUserServiceImpl implements CommonService<UserMessage> {

	@Autowired
	CreateUserDaoImpl createUserDaoImpl;

	@Override
	public UserMessage save(UserMessage entity) {
		
		return createUserDaoImpl.save(entity);
	}

	@Override
	public UserMessage update(UserMessage entity) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean delete(long id) {
		// TODO Auto-generated method stub
		return createUserDaoImpl.delete(id);
	}

	@Override
	public UserMessage getById(long id) {
		// TODO Auto-generated method stub
		return createUserDaoImpl.getById(id);
	}

	@Override
	public List<UserMessage> getAll() {
		// TODO Auto-generated method stub
		return createUserDaoImpl.getAll();
	}
	
	

}
