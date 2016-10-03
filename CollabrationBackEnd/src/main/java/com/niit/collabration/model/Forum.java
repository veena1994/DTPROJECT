package com.niit.collabration.model;
import java.util.Date;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity
@Table(name = "FORUM")
@Component
public class Forum {
	
	@Id
	@GeneratedValue
	@Column(name="Id")
	private int Id;
	private String Title;
    private String Content;
   private String Usr;
    private Date Date;
	private String Category;
	
	
	public String getUsr() {
		return Usr;
	}
	public void setUsr(String usr) {
		Usr = usr;
	}
	public int getId() {
		return Id;
	}
	public void setId(int id) {
		Id = id;
	}

	public String getTitle() {
		return Title;
	}
	public void setTitle(String title) {
		Title = title;
	}
	public String getContent() {
		return Content;
	}
	public void setContent(String content) {
		Content = content;
	}

	public Date getDate() {
		return Date;
	}
	public void setDate(Date date) {
		Date = date;
	}
	public String getCategory() {
		return Category;
	}
	public void setCategory(String category) {
		Category = category;
	}
	
	

}
