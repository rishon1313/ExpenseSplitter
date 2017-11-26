package com.myapp.dao;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import org.apache.log4j.BasicConfigurator;
import org.apache.log4j.Logger;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.myapp.exceptions.PhoneNumberNotFoundException;
import com.myapp.model.Expense;
import com.myapp.model.Group;
import com.myapp.model.User;
import com.myapp.model.UserGroups;

@Repository
public class UserDaoImpl implements UserDao {
	
	@Autowired
	SessionFactory factory;
	Logger logger = Logger.getLogger(UserDaoImpl.class);
	
	@Override
	public void signUp(User user) {
		// TODO Auto-generated method stub
		System.out.println("in userdao");
		BasicConfigurator.configure();
		Session session=factory.getCurrentSession();
		session.save(user);
	}
	@Override
	public void updateBudgetbyNumber(Integer expenseId,User user){
		Session session=factory.getCurrentSession();
		BasicConfigurator.configure();
		Expense expense=session.get(Expense.class, expenseId);
		Integer val = Integer.valueOf(expense.getExpense().intValue());
		user=session.get(User.class, user.getMobileNo());
		Integer newbudget=val+user.getBudget();
		Query query1=session.createQuery("update User set budget =:budget where mobileNo =:mobileno");
		query1.setParameter("budget", newbudget);
		query1.setParameter("mobileno", user.getMobileNo());
		query1.executeUpdate();
	}

	@Override
	public boolean login(User user) throws PhoneNumberNotFoundException {
		// TODO Auto-generated method stub
		boolean flag=false;
		Session session=factory.getCurrentSession();
		Query query=session.createQuery("select password from User u where u.mobileNo=:mobileno");
		query.setParameter("mobileno",user.getMobileNo());
		 List<String> password = query.list();
		 System.out.println("in user dao");
		 System.out.println(password.get(0));
		 System.out.println(user.getPassword());
		if(password.get(0).equals(user.getPassword()))
			flag=true;
		else
			throw new PhoneNumberNotFoundException("Username or password did not match");
		return flag;
	}

	@Override
	public int addExpense(Expense expense,User user) throws Exception {
		// TODO Auto-generated method stub
		Session session=factory.getCurrentSession();
		logger.info("in userdao add expense");
		System.out.println(user);
		
		session.save(expense);
		try {
			if(user.getBudget()<expense.getExpense())
			{
				throw new Exception("Expenditure cannot be more than budget");
			}
			else{
				Integer val = Integer.valueOf(expense.getExpense().intValue());
				user=session.get(User.class, user.getMobileNo());
				user.setBudget(user.getBudget()-val);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return expense.getExpenseId();
	}

	@Override
	public boolean removeExpense(Integer expenseId,User user) {
		// TODO Auto-generated method stub
		Session session=factory.getCurrentSession();
		BasicConfigurator.configure();
		Expense expense=session.get(Expense.class, expenseId);
		Integer val = Integer.valueOf(expense.getExpense().intValue());
		user=session.get(User.class, user.getMobileNo());
		Integer newbudget=val+user.getBudget();
		updateBudgetbyNumber(expenseId, user);
		Query query=session.createQuery("delete from Expense where expenseId =:expenseId");
		query.setParameter("expenseId",expenseId);
		query.executeUpdate();
		return true;
	}

	@Override
	public List<Expense> viewExpense(Long mobileNo) {
		// TODO Auto-generated method stub
		Session session=factory.getCurrentSession();
		Query query=session.createQuery("from Expense where user_mobileno like :mobileNo");
		query.setLong("mobileNo", mobileNo);
		List<Expense> expenseList=query.list();
		System.out.println("inside view expense");
		System.out.println(expenseList);
		return expenseList;
	}


	@Override
	public List<Expense> viewExpensebyCategory(String category) {
		// TODO Auto-generated method stub
		Session session=factory.getCurrentSession();
		Query query=session.createQuery("from Expense e where e.category like :mycategory");
		query.setString("mycategory",category);
		List<Expense> expenseList=query.list();
		return expenseList;
	}
	
/*	public List<Expense> viewExpensebyDate(String category) {
		// TODO Auto-generated method stub
		
		Session session=factory.getCurrentSession();
		Query query=session.createQuery("from Expense e where e.category like :mycategory");
		query.setString("mycategory",category);
		List<Expense> expenseList=query.list();
		return expenseList;
	}*/


	@Override
	public List<Expense>  viewExpensebyDate(Date startDate, Date endDate) {
		// TODO Auto-generated method stub
		BasicConfigurator.configure();
		SimpleDateFormat formatter = new SimpleDateFormat("dd/mm/yyyy");
		//String frmDate = formatter.format(startDate);
		//String enDate = formatter.format(endDate);
		Session session=factory.getCurrentSession();
		Query query=session.createQuery("from Expense as e where e.adate between :startDate AND :endDate ");
		query.setParameter("startDate", startDate);
		query.setParameter("endDate", endDate);
		List<Expense> expenseList=query.list();
		return expenseList;
	}


	@Override
	public User getUserDetails(Long mobileno)throws Exception {
		// TODO Auto-generated method stub
		Session session=factory.getCurrentSession();
		User user=session.get(User.class,mobileno);
		System.out.println(user);
		if(user!=null)
		{
			return user;
		}
		else
		{
			throw new Exception("mobile no not found");
		}
		
	}


	@Override
	public boolean updateBudget(User user, Integer budget) {
		// TODO Auto-generated method stub
		Session session=factory.getCurrentSession();
		user.setBudget(budget);
		session.update(user);
		return true;
	}
	@Override
	public Double getDuesOfUser(Long mobileNo) {
		// TODO Auto-generated method stub
		Session session=factory.getCurrentSession();
		Query query=session.createQuery("From UserGroups u where u.user.mobileNo like:mobileno");
		query.setParameter("mobileno",mobileNo);
		List<UserGroups>userDues=query.list();
		Double sum=0d;
		for(UserGroups u:userDues){
			
			sum=sum+(Double)u.getUserDues();
		}
		return sum;
	}

	

}