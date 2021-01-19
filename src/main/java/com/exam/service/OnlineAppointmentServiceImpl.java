package com.exam.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.exam.dao.OnlineAppointDaoImpl;
import com.exam.model.OnlineAppointment;

@Service
@Transactional
public class OnlineAppointmentServiceImpl implements CommonService<OnlineAppointment> {

	@Autowired
	OnlineAppointDaoImpl onlineAppointDaoImpl;
	
	@Override
	public OnlineAppointment save(OnlineAppointment entity) {
		
		return onlineAppointDaoImpl.save(entity);
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
		// TODO Auto-generated method stub
		return onlineAppointDaoImpl.getById(id);
	}
	
	public List<OnlineAppointment> getByToken(int token) {
		// TODO Auto-generated method stub
		return onlineAppointDaoImpl.getByToken(token);
	}

	@Override
	public List<OnlineAppointment> getAll() {
		// TODO Auto-generated method stub
		return onlineAppointDaoImpl.getAll();
	}
	

}
