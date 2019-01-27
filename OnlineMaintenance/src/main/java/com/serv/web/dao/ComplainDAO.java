package com.serv.web.dao;

import java.util.List;

import com.serv.web.modal.Complain;

public interface ComplainDAO {

	public void addComplain(Complain complain);

	public List<Complain> getAllComplains();

}
