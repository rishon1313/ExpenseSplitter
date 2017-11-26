package com.myapp.service;

import java.util.Date;
import java.util.List;

import org.apache.log4j.BasicConfigurator;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.myapp.dao.UserDao;
import com.myapp.model.Expense;
import com.myapp.model.User;


@Service
@Transactional
public class UserServiceImpl implements UserService {

	@Autowired
	UserDao userDao;
	Logger logger = Logger.getLogger(UserServiceImpl.class);
	@Override
	public void signUp(User user) {
		BasicConfigurator.configure();
		userDao.signUp(user);
		
	}

	@Override
	public boolean login(User user)  {
		// TODO Auto-generated method stub
		boolean val=false;
		try {
			val = userDao.login(user);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return val;
	}

	


	@Override
	public List<Expense> viewExpense(Long mobileNo) {
		// TODO Auto-generated method stub
		return userDao.viewExpense(mobileNo);
	}

	@Override
	public List<Expense> viewExpensebyCategory(String category) {
		// TODO Auto-generated method stub
		return userDao.viewExpensebyCategory(category);
	}

	@Override
	public List<Expense> viewExpensebyDate(Date startDate, Date endDate) {
		// TODO Auto-generated method stub
		return userDao.viewExpensebyDate(startDate,endDate);
	}


	@Override
	public User getUserDetails(Long mobileno)throws Exception {
		// TODO Auto-generated method stub
		return userDao.getUserDetails(mobileno);
	}

	@Override
	public boolean updateBudget(User user, Integer budget) {
		// TODO Auto-generated method stub
		return userDao.updateBudget(user, budget);
	}

	@Override
	public int addExpense(Expense expense, User user) throws Exception {
		// TODO Auto-generated method stub
		return userDao.addExpense(expense, user);
	}

	@Override
	public void updateBudgetbyNumber(Integer expenseId, User user) {
		// TODO Auto-generated method stub
		userDao.updateBudgetbyNumber(expenseId, user);
	}

	@Override
	public boolean removeExpense(Integer expenseId, User user) {
		// TODO Auto-generated method stub
		return userDao.removeExpense(expenseId, user);
	}

	@Override
	public Double getDuesOfUser(Long mobileNo) {
		// TODO Auto-generated method stub
		return userDao.getDuesOfUser(mobileNo);
	}
}