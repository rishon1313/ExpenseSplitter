package com.myapp.model;


import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Component
@Entity
@Table(name = "user_groups")
public class UserGroups {
	  @Id
	  @GeneratedValue
	  @Column(name = "id")
	private long id;
	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "mobileNo")
	private User user;
	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "groupId")
	private Group group;
	private Double userDues;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Group getGroup() {
		return group;
	}

	public void setGroup(Group group) {
		this.group = group;
	}

	public Double getUserDues() {
		return userDues;
	}

	public void setUserDues(Double userDues) {
		this.userDues = userDues;
	}

	@Override
	public String toString() {
		return "UserGroups [id=" + id + ", user=" + user + ", userDues=" + userDues + "]";
	}

}
