package com.serv.web.dao;

import com.serv.web.modal.data;

public class dataDAO {
	public data getData(int id)
	{
		data d = new data();
		d.setId(101);
		d.setName("Veronica");
		d.setTech("Java");
		
		return d;
	}

}
