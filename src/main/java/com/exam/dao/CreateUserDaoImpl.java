package com.exam.dao;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.exam.model.CreateUser;
import com.exam.model.DoctorRegistration;
import com.exam.model.OnlineAppointment;
import com.exam.model.UserInfo;
import com.exam.model.UserMessage;
@Repository
public class CreateUserDaoImpl implements CommonDao<UserMessage> {

	@Autowired
	SessionFactory sessionFactory;
public UserMessage save(UserMessage entity) {
	try {
		sessionFactory.getCurrentSession().save(entity);
		return entity;
	} catch (Exception e) {
		return null;
	}
 }
@Override
public UserMessage update(UserMessage entity) {
	// TODO Auto-generated method stub
	return null;
}
@Override
public boolean delete(long id) {
	System.out.println("dao id ===================" + id);
	try {
		UserMessage userMessage = sessionFactory.getCurrentSession().get(UserMessage.class,
				id);
		sessionFactory.getCurrentSession().delete(userMessage);
		return true;
	} catch (HibernateException e) {
		return true;
	}
}
@Override
public UserMessage getById(long id) {
	try {
		UserMessage entity = sessionFactory.getCurrentSession().get(UserMessage.class, id);
		return entity;
	} catch (HibernateException e) {
		return null;
	}
}
@Override
public List<UserMessage> getAll() {
	// TODO Auto-generated method stub
	return sessionFactory.getCurrentSession().createQuery("FROM UserMessage").list();
}
	
	
}
