package com.myapp.dao;

import java.util.Date;
import java.util.List;

import com.myapp.exceptions.PhoneNumberNotFoundException;
import com.myapp.model.Expense;
import com.myapp.model.User;

public interface UserDao {

	public void signUp(User user);

	public List<Expense> viewExpensebyCategory(String category);

	public List<Expense> viewExpensebyDate(Date startDate, Date endDate);

	public User getUserDetails(Long mobileno)throws Exception;

	boolean login(User user) throws PhoneNumberNotFoundException;

	boolean updateBudget(User user, Integer budget);

	List<Expense> viewExpense(Long mobileNo);

	int addExpense(Expense expense, User user) throws Exception;

	void updateBudgetbyNumber(Integer expenseId, User user);

	boolean removeExpense(Integer expenseId, User user);

	Double getDuesOfUser(Long mobileNo);
	
}

