package com.myapp.service;

import java.util.List;
import java.util.Set;

import com.myapp.exceptions.GroupLimitExceededException;
import com.myapp.exceptions.IdNotFoundException;
import com.myapp.exceptions.PhoneNumberNotFoundException;
import com.myapp.model.Group;
import com.myapp.model.GroupExpenses;
import com.myapp.model.User;
import com.myapp.model.UserGroups;

public interface GroupService {
	public List<Group> viewGroup(Long mobileNo);

	public List<User> viewMembers(int groupId);


	boolean addMember(UserGroups userGroup) throws PhoneNumberNotFoundException, GroupLimitExceededException;

	boolean leaveGroup(UserGroups userGroups);

	boolean addExpense(GroupExpenses expense);



	int createGroup(Group group, UserGroups usergroups) throws PhoneNumberNotFoundException;

	Group viewGroupbyId(Integer groupId);

	List<GroupExpenses> viewGroupExpenses(Integer groupId);

	Group getGroupbyId(Integer groupId) throws IdNotFoundException;
	List<UserGroups> getGroupDues(Integer groupId) throws IdNotFoundException;
	boolean settleInGroup(Long reciever,Long sender,Integer groupId,double amount);
}
