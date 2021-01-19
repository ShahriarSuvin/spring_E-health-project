package com.exam.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.exam.dao.DoctorRegistrationDaoImpl;

import com.exam.model.DoctorRegistration;

@Service
@Transactional
public class DoctorRegistrationServiceImpl implements CommonService<DoctorRegistration> {

	@Autowired
	DoctorRegistrationDaoImpl doctorRegistrationDaoImpl;

	@Override
	public DoctorRegistration update(DoctorRegistration entity) {

		return doctorRegistrationDaoImpl.update(entity);
	}

	@Override
	public boolean delete(long id) {

		return doctorRegistrationDaoImpl.delete(id);
	}

	@Override
	public DoctorRegistration getById(long id) {
		return doctorRegistrationDaoImpl.getById(id);
	}

	@Override
	public List<DoctorRegistration> getAll() {
		return doctorRegistrationDaoImpl.getAll();
	}

	@Override
	public DoctorRegistration save(DoctorRegistration entity) {
		// TODO Auto-generated method stub
		return doctorRegistrationDaoImpl.save(entity);
	}

}
