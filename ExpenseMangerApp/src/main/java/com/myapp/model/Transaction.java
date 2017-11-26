package com.myapp.model;




import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

import org.springframework.stereotype.Component;


@Component
@Entity
@Table(name="springtransaction")
public class Transaction {
	
	long sender;
	long receiver;
	
	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE ,generator="tseq")
	@SequenceGenerator(name="tseq",sequenceName="tseq")
	int transId;
	double amount;
	
	@Column(columnDefinition = "DATE")
	Date localDate;
	
	
	public long getSender() {
		return sender;
	}
	public void setSender(long sender) {
		this.sender = sender;
	}
	public long getReceiver() {
		return receiver;
	}
	public void setReceiver(long receiver) {
		this.receiver = receiver;
	}
	public int getTransId() {
		return transId;
	}
	public void setTransId(int transId) {
		this.transId = transId;
	}
	public double getAmount() {
		return amount;
	}
	public void setAmount(double price) {
		this.amount = price;
	}
	
	public Date getLocalDate() {
		return localDate;
	}
	public void setLocalDate(Date date) {
		this.localDate = (Date) date;
	}
	@Override
	public String toString() {
		return "Transaction [sender=" + sender + ", receiver=" + receiver + ", transId=" + transId + ", amount="
				+ amount + ", localDate=" + localDate + "]";
	}
	
	
	
	
	
	

}
