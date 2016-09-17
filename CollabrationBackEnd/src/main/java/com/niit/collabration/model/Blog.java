package com.niit.collabration.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;

import javax.persistence.Table;
import javax.persistence.Id;


import org.springframework.stereotype.Component;

@Entity
@Table(name = "BLOG")
@Component
public class Blog {

	@Id
	
	@Column(name="BLOGID")
	private String Id;
	private Date BlogDate;
	private String UserId;
	private String BlogName;
	private String Contents;
	private char Status;
	private String Reason;
	
	public String getId() {
		return Id;
	}
	public void setId(String id) {
		Id = id;
	}
	public Date getBlogDate() {
		return BlogDate;
	}
	public void setBlogDate(Date blogDate) {
		BlogDate = blogDate;
	}
	public String getUserId() {
		return UserId;
	}
	public void setUserId(String userId) {
		UserId = userId;
	}
	public String getBlogName() {
		return BlogName;
	}
	public void setBlogName(String blogName) {
		BlogName = blogName;
	}
	public String getContents() {
		return Contents;
	}
	public void setContents(String contents) {
		Contents = contents;
	}
	public char getStatus() {
		return Status;
	}
	public void setStatus(char status) {
		Status = status;
	}
	public String getReason() {
		return Reason;
	}
	public void setReason(String reason) {
		Reason = reason;
	}

}
