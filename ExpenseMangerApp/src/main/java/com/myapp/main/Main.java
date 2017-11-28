package com.myapp.main;

import com.myapp.dao.GroupDao;
import com.myapp.dao.GroupDaoImpl;
import com.myapp.model.Group;
import com.myapp.service.GroupService;
import com.myapp.service.GroupServiceImpl;

public class Main {

	public static void main(String[] args) {
		GroupDao a=new GroupDaoImpl();
		Integer g=100;
		boolean flag=a.settleInGroup(1l, 2l, g, 1166.5);
		System.out.println(flag);

	}

}
