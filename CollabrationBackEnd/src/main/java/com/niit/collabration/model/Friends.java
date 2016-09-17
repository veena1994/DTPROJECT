package com.niit.collabration.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity
@Table(name = "FRIENDS")
@Component
public class Friends {

	@Id
	private String UserId;
	private String FriendId;
	
	public String getUserId() {
		return UserId;
	}
	public void setUserId(String userId) {
		UserId = userId;
	}
	public String getFriendId() {
		return FriendId;
	}
	public void setFriendId(String friendId) {
		FriendId = friendId;
	}
	
}
