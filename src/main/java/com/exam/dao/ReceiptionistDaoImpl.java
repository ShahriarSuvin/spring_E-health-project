package com.exam.dao;

import java.util.List;



import org.hibernate.HibernateException;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.PathVariable;

import com.exam.model.AddReceiptionist;

@Repository
public class ReceiptionistDaoImpl implements CommonDao<AddReceiptionist> {

	@Autowired
	SessionFactory sessionFactory;

	@Override
	public AddReceiptionist save(AddReceiptionist entity) {
		try {
			sessionFactory.getCurrentSession().save(entity);
			return entity;
		} catch (Exception e) {
			return null;
		}
		
	}

	@Override
	public AddReceiptionist update(AddReceiptionist entity) {
		sessionFactory.getCurrentSession().saveOrUpdate(entity);

		return entity;
	}

	@Override
	public boolean delete(long id) {
		try {
			AddReceiptionist addReceiptionist = sessionFactory.getCurrentSession().get(AddReceiptionist.class,
					id);
			sessionFactory.getCurrentSession().delete(addReceiptionist);
			return true;
		} catch (HibernateException e) {
			return true;
		}
	}

	@Override
	public AddReceiptionist getById(long id) {
		try {
			AddReceiptionist entity = sessionFactory.getCurrentSession().get(AddReceiptionist.class, id);
			return entity;
		} catch (HibernateException e) {
			return null;
		}
	}

	@Override
	public List<AddReceiptionist> getAll() {
		return sessionFactory.getCurrentSession().createQuery("FROM AddReceiptionist").list();
	}

	
	//receiptionist login
	public boolean ReceiptionistLogin(@PathVariable String user, @PathVariable String password) {
		
		try {
			List<AddReceiptionist> list = sessionFactory.getCurrentSession().createQuery("FROM AddReceiptionist where username='"+user+"' and pass='"+password+"'").list();
			if (list.isEmpty()) {
				 return false;
			}
	         return true;
		} catch (Exception e) {
		return false;
			// TODO: handle exception
		}
	}
	
}
