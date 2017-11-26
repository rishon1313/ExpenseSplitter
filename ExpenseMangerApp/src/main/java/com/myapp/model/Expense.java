package com.myapp.model;



import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Component;

@Component
@Entity
@Table(name="springexpenses")
public class Expense {
	@GeneratedValue(strategy=GenerationType.SEQUENCE,generator="expense_seq")
	@SequenceGenerator(name="expense_seq",sequenceName="expense_seq")
	@Id	
	private Integer expenseId;
	private Double expense;
	//private Doub expense;
	@OneToOne(cascade={CascadeType.ALL})
	private User user;
	private String category;
	@Column(name="expenseDate")
	@DateTimeFormat(pattern = "dd/mm/yyyy")  
    private Date date;
	public Integer getExpenseId() {
		return expenseId;
	}
	public void setExpenseId(Integer expenseId) {
		this.expenseId = expenseId;
	}
	public Double getExpense() {
		return expense;
	}
	public void setExpense(Double expense) {
		this.expense = expense;
	}
	
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	@Override
	public String toString() {
		return "Expense [expenseId=" + expenseId + ", expense=" + expense + ", user=" + user + ", category=" + category
				+ ", date=" + date + "]";
	}

	
}
