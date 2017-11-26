
package com.myapp.model;

import java.util.Set;

import java.util.HashSet;
import javax.persistence.*;
import org.springframework.stereotype.Component;

@Component
@Entity
@Table(name = "userspring")
public class User {

	private String name;
	@Id
	private Long mobileNo;
	private String password;
	private String pan;
	private Integer budget;
	@OneToMany(mappedBy = "user",fetch = FetchType.EAGER)
	private Set<UserGroups> userGroups = new HashSet<UserGroups>();

	public Integer getBudget() {
		return budget;
	}

	public void setBudget(Integer budget) {
		this.budget = budget;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Long getMobileNo() {
		return mobileNo;
	}

	public void setMobileNo(Long mobileNo) {
		this.mobileNo = mobileNo;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getPan() {
		return pan;
	}

	public void setPan(String pan) {
		this.pan = pan;
	}

	public Set<UserGroups> getUserGroups() {
		return userGroups;
	}

	public void setUserGroups(Set<UserGroups> userGroups) {
		this.userGroups = userGroups;
	}

	@Override
	public String toString() {
		return "User [name=" + name + ", mobileNo=" + mobileNo + ", password=" + password + ", pan=" + pan + ", budget="
				+ budget + "]";
	}

}