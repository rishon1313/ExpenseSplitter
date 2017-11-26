package com.myapp.model;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;
import javax.persistence.*;

import org.springframework.stereotype.Component;

@Component
@Entity
@Table(name = "groupspring")
public class Group {
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "group_seq")
	@SequenceGenerator(name = "group_seq", sequenceName = "group_seq")
	@Id
	private Integer groupId;
	private String groupName;
	private Integer numMembers;
	@OneToMany(mappedBy = "group",fetch = FetchType.EAGER)
	private Set<UserGroups> userGroups = new HashSet<UserGroups>();

	public Integer getGroupId() {
		return groupId;
	}

	public void setGroupId(Integer groupId) {
		this.groupId = groupId;
	}

	public String getGroupName() {
		return groupName;
	}

	public void setGroupName(String groupName) {
		this.groupName = groupName;
	}

	public Integer getNumMembers() {
		return numMembers;
	}

	public void setNumMembers(Integer numMembers) {
		this.numMembers = numMembers;
	}

	public Set<UserGroups> getUserGroups() {
		return userGroups;
	}

	public void setUserGroups(Set<UserGroups> userGroups) {
		this.userGroups = userGroups;
	}

	@Override
	public String toString() {
		return "Group [groupId=" + groupId + ", groupName=" + groupName + ", numMembers=" + numMembers + ", userGroups="
				+ userGroups + "]";
	}

}
