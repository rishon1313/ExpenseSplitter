package com.myapp.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;


import org.apache.log4j.BasicConfigurator;
import org.apache.log4j.Logger;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import org.hibernate.Transaction;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.myapp.exceptions.GroupLimitExceededException;
import com.myapp.exceptions.IdNotFoundException;
import com.myapp.exceptions.PhoneNumberNotFoundException;
import com.myapp.model.Group;
import com.myapp.model.GroupExpenses;
import com.myapp.model.User;
import com.myapp.model.UserGroups;
import com.myapp.service.GroupServiceImpl;
import com.myapp.service.UserService;
import com.myapp.service.UserServiceImpl;
import com.sun.org.apache.xalan.internal.xsltc.compiler.sym;

@Repository
public class GroupDaoImpl implements GroupDao {
	@Autowired
	SessionFactory factory;
	Logger logger = Logger.getLogger(GroupServiceImpl.class);

	@Override
	public int createGroup(Group group, UserGroups usergroups)
			throws PhoneNumberNotFoundException {
		usergroups.setUserDues(0d);
		Session session = factory.getCurrentSession();
		
		int groupId = (Integer) session.save(group);
		BasicConfigurator.configure();
		logger.info("In DAO - create group ");
		session.save(usergroups);
		return groupId;
	}

	@Override
	public boolean addMember(UserGroups userGroup) throws PhoneNumberNotFoundException, GroupLimitExceededException {

		BasicConfigurator.configure();
		Session session = factory.getCurrentSession();
		userGroup.setUserDues(0d);
		Group group = userGroup.getGroup();
		User user = userGroup.getUser();
		Set<UserGroups> ugs = group.getUserGroups();
		ugs.add(userGroup);
		group.setUserGroups(ugs);
		group.setNumMembers(ugs.size());
		
		session.saveOrUpdate(group);
		ugs = user.getUserGroups();
		ugs.add(userGroup);
		user.setUserGroups(ugs);
		session.saveOrUpdate(user);
		BasicConfigurator.configure();
		logger.info("In DAO - adding member to a group ");
		
		session.save(userGroup);
		return true;
	}

	@Override
	public boolean leaveGroup(UserGroups userGroups) {
		Session session = factory.getCurrentSession();
		session.delete(userGroups);
		User user = userGroups.getUser();
		Group group = userGroups.getGroup();
		Set<UserGroups> ugs = user.getUserGroups();
		ugs.remove(userGroups);
		user.setUserGroups(ugs);
		session.save(user);
		Set<UserGroups> ugs1 = group.getUserGroups();
		ugs1.remove(userGroups);
		group.setUserGroups(ugs1);
		group.setNumMembers(ugs1.size());
		session.save(group);
		BasicConfigurator.configure();
		logger.info("In DAO - deleting member from a  group ");
		session.delete(userGroups);

		return true;
	}

	public boolean addExpense(GroupExpenses expense) {

		Session session = factory.getCurrentSession();
		session.save(expense);
		Set<UserGroups> ugs = expense.getGroup().getUserGroups();
		double balance = expense.getExpense() / expense.getGroup().getNumMembers();
		for (UserGroups userGroups : ugs) {
		User user = userGroups.getUser();
		User user1 = expense.getUser();
		System.out.println("inside expense addition printing users");
		System.out.println(user);
		System.out.println(user1);
			if (user.getMobileNo() != user1.getMobileNo()) {
				
				double temp = userGroups.getUserDues() - balance;
				userGroups.setUserDues(temp);
				
				BasicConfigurator.configure();
				logger.info("In DAO  if block - adding expense in group  ");
				session.update(userGroups);
			} else {
				userGroups.setUser(user1);
				double temp = userGroups.getUserDues() + expense.getExpense() - balance;
				userGroups.setUserDues(temp);
				logger.info("In DAO else block - adding expense in group ");
				session.update(userGroups);
			}
			

			
		}
	
		return true;
	}

	@Override
	public List<Group> viewGroup(Long mobileNo) {

		BasicConfigurator.configure();
		Session session = factory.getCurrentSession();
		Query query = (Query) session.createQuery("from UserGroups u where u.user.mobileNo like :mobileno ");
		query.setLong("mobileno", mobileNo);
		List<UserGroups> groupList = query.list();
		List<Group> groups = new ArrayList<Group>();
		BasicConfigurator.configure();
		logger.info("In DAO - view group ");
		for (UserGroups g : groupList) {

			groups.add(g.getGroup());
		}
		return groups;
	}
	@Override
	public List<GroupExpenses> viewGroupExpenses(Integer groupId) {
		Session session = factory.getCurrentSession();
		Query query = (Query) session.createQuery("from GroupExpenses where group_groupid like :groupid");
		query.setParameter("groupid",groupId);
		List<GroupExpenses> expenseList=query.list();
		System.out.println("inside view group expense");
		return expenseList;
	}
	@Override
	public Group getGroupbyId(Integer groupId) throws IdNotFoundException{
		Session session = factory.getCurrentSession();
		Group group = session.get(Group.class,groupId);
		return group;
	}
	
	@Override
	public List<User> viewMembers(int groupId) {
		BasicConfigurator.configure();
		Session session = factory.getCurrentSession();
		Query query = (Query) session.createQuery("from UserGroups u where u.group.groupId like :id ");
		query.setLong("id", groupId);
		List<UserGroups> userList = query.list();
		List<User> users = new ArrayList<User>();
		BasicConfigurator.configure();
		logger.info("In DAO - view members in group");
		for (UserGroups g : userList) {
			users.add(g.getUser());
		}
		return users;
	}
	@Override
	public Group viewGroupbyId(Integer groupId) {
		// TODO Auto-generated method stub
		Session session = factory.getCurrentSession();
		Group group=session.get(Group.class, groupId);
		return group;
	}

	@Override
	public List<UserGroups> getGroupDues(Integer groupId) throws IdNotFoundException {
		BasicConfigurator.configure();
		Session session = factory.getCurrentSession();
		Query query = (Query) session.createQuery("from UserGroups u where u.group.groupId like :id ");
		query.setLong("id", groupId);
		List<UserGroups> userGroupsList = query.list();
		return userGroupsList;
	}

	@Override
	public boolean settleInGroup(Long reciever, Long sender, Integer groupId, double amount) {
		BasicConfigurator.configure();
		Session session = factory.getCurrentSession();
		try {
			Group group=getGroupbyId(groupId);
			UserService userService=new UserServiceImpl();
			Query query = (Query) session.createQuery("from UserGroups u where u.group.groupId like :id and u.user.mobileNo like :reciever");
			query.setInteger("id", groupId);
			query.setLong("reciever", reciever);
			List<UserGroups> userGroups=query.list();
			UserGroups userGroup=userGroups.get(0);
			userGroup.setUserDues(userGroup.getUserDues()-amount);
			session.save(userGroup);
			System.out.println("added amount in settling");
			Query query1 = (Query) session.createQuery("from UserGroups u where u.group.groupId like :id and u.user.mobileNo like :sender");
			query1.setInteger("id", groupId);
			query1.setLong("sender", sender);
			List<UserGroups> userGroups1=query1.list();
			System.out.println("deducting  amount in settling query started");
			UserGroups userGroup1=userGroups1.get(0);
			userGroup1.setUserDues(userGroup1.getUserDues()+amount);
			session.save(userGroup1);
			System.out.println("deducting  amount in settling query finidhsed");
		} catch (IdNotFoundException e) {
			e.printStackTrace();
		}
		return true;
	}
}