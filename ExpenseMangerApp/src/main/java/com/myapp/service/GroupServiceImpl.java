package com.myapp.service;

import java.util.List;
import java.util.Set;

import org.apache.log4j.BasicConfigurator;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.myapp.dao.GroupDao;
import com.myapp.exceptions.GroupLimitExceededException;
import com.myapp.exceptions.IdNotFoundException;
import com.myapp.exceptions.PhoneNumberNotFoundException;
import com.myapp.model.Group;
import com.myapp.model.GroupExpenses;
import com.myapp.model.User;
import com.myapp.model.UserGroups;

@Service
@Transactional
public class GroupServiceImpl implements GroupService {
	@Autowired
	GroupDao groupDAO;
	Logger logger = Logger.getLogger(GroupServiceImpl.class);

	@Override
	public List<Group> viewGroup(Long mobileNo) {
		// TODO Auto-generated method stub
		BasicConfigurator.configure();
		logger.info("In Service - view group ");
		return groupDAO.viewGroup(mobileNo);
	}

	@Override
	public List<User> viewMembers(int groupId) {
		// TODO Auto-generated method stub

		BasicConfigurator.configure();
		logger.info("In Service - view group members");

		return groupDAO.viewMembers(groupId);
	}

	@Override
	public int createGroup(Group group,UserGroups userGroup)
			throws PhoneNumberNotFoundException {
		// TODO Auto-generated method stub
		BasicConfigurator.configure();
		logger.info("In Service - creating group  ");
		return groupDAO.createGroup(group, userGroup);
	}

	@Override
	public boolean addMember(UserGroups userGroup) throws PhoneNumberNotFoundException, GroupLimitExceededException {
		// TODO Auto-generated method stub
		BasicConfigurator.configure();
		logger.info("In Service - add group member");
		return groupDAO.addMember(userGroup);
	}

	@Override
	public boolean leaveGroup(UserGroups userGroups) {
		// TODO Auto-generated method stub
		BasicConfigurator.configure();
		logger.info("In Service - leaving group");
		return groupDAO.leaveGroup(userGroups);
	}

	@Override
	public boolean addExpense(GroupExpenses expense) {
		// TODO Auto-generated method stub
		BasicConfigurator.configure();
		logger.info("In Service - adding group expense");
		return groupDAO.addExpense(expense);
	}

	@Override
	public Group viewGroupbyId(Integer groupId) {
		// TODO Auto-generated method stub
		return groupDAO.viewGroupbyId(groupId);
	}

	@Override
	public List<GroupExpenses> viewGroupExpenses(Integer groupId) {
		// TODO Auto-generated method stub
		return groupDAO.viewGroupExpenses(groupId);
	}

	@Override
	public Group getGroupbyId(Integer groupId) throws IdNotFoundException {
		// TODO Auto-generated method stub
		return groupDAO.getGroupbyId(groupId);
	}

	@Override
	public List<UserGroups> getGroupDues(Integer groupId) throws IdNotFoundException {
		// TODO Auto-generated method stub
		return groupDAO.getGroupDues(groupId);
	}

	@Override
	public boolean settleInGroup(Long reciever, Long sender, Integer groupId, double amount) {
		// TODO Auto-generated method stub
		return groupDAO.settleInGroup(reciever, sender, groupId, amount);
	}

}
