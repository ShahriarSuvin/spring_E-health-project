package com.exam.dao;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.exam.model.AddReceiptionist;
import com.exam.model.OnlineAppointment;
import com.exam.model.UserInfo;
@Repository
public class OnlineAppointDaoImpl implements CommonDao<OnlineAppointment> {

	@Autowired
	SessionFactory sessionFactory;

	@Override
	public OnlineAppointment save(OnlineAppointment entity) {
		try {
			sessionFactory.getCurrentSession().save(entity);
			return entity;
		} catch (Exception e) {
			return null;
		}
	}

	@Override
	public OnlineAppointment update(OnlineAppointment entity) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean delete(long id) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public OnlineAppointment getById(long id) {
		try {
			OnlineAppointment entity = sessionFactory.getCurrentSession().get(OnlineAppointment.class, id);
			return entity;
		} catch (HibernateException e) {
			return null;
		}
	}
	
	
	public List<OnlineAppointment> getByToken(int token) {
		try {
			List entity = sessionFactory.getCurrentSession().createQuery("FROM OnlineAppointment where token = '"+token+"'").list();
			return entity;
		} catch (HibernateException e) {
			return null;
		}
	}

	@Override
	public List<OnlineAppointment> getAll() {
		// TODO Auto-generated method stub
		return sessionFactory.getCurrentSession().createQuery("FROM OnlineAppointment").list();
	}

	

	
}
