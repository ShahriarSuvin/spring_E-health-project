package com.exam.dao;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.exam.model.DoctorRegistration;

@Repository
public class DoctorRegistrationDaoImpl implements CommonDao<DoctorRegistration> {

	@Autowired
	SessionFactory sessionFactory;

	@Override
	public DoctorRegistration save(DoctorRegistration entity) {
		try {
			sessionFactory.getCurrentSession().save(entity);
			return entity;
		} catch (Exception e) {
			return null;
		}

	}

	@Override
	public DoctorRegistration update(DoctorRegistration entity) {

		sessionFactory.getCurrentSession().saveOrUpdate(entity);

		return entity;
	}

	@Override
	public boolean delete(long id) {
		System.out.println("dao id ===================" + id);
		try {
			DoctorRegistration doctorRegistration = sessionFactory.getCurrentSession().get(DoctorRegistration.class,
					id);
			sessionFactory.getCurrentSession().delete(doctorRegistration);
			return true;
		} catch (HibernateException e) {
			return true;
		}
	}

	@Override
	public DoctorRegistration getById(long id) {
		try {
			DoctorRegistration entity = sessionFactory.getCurrentSession().get(DoctorRegistration.class, id);
			return entity;
		} catch (HibernateException e) {
			return null;
		}
	}

	@Override
	public List<DoctorRegistration> getAll() {

		return sessionFactory.getCurrentSession().createQuery("FROM DoctorRegistration").list();

	}

}
