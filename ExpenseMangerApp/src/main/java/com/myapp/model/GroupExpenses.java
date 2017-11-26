package com.myapp.model;

import java.sql.Date;

import javax.persistence.CascadeType;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Component;

@Component
@Entity
@Table(name="groupexpenses")
public class GroupExpenses {
       @GeneratedValue(strategy=GenerationType.SEQUENCE,generator="group_expense_seq")
       @SequenceGenerator(name="group_expense_seq",sequenceName="group_expense_seq")
       @Id    
       private Integer expenseId;
       private Double expense;
       @OneToOne(cascade={CascadeType.ALL})
       private User user;
       private String category;
       @Column(name="expenseDate")
       //@DateTimeFormat(pattern = "dd/mm/yyyy")  
       @javax.persistence.Transient
       private Date date;
       @ManyToOne(cascade = CascadeType.ALL)
       private Group group;
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

       public Group getGroup() {
              return group;
       }
       public void setGroup(Group group) {
              this.group = group;
       }
       public User getUser() {
              return user;
       }
       
       
       public void setUser(User user) {
              this.user = user;
       }
	@Override
	public String toString() {
		return "GroupExpenses [expenseId=" + expenseId + ", expense=" + expense + ", user=" + user + ", category="
				+ category + ", date=" + date + ", group=" + group + "]";
	}

       
       
}
