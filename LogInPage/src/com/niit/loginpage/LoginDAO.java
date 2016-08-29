package com.niit.loginpage;

public class LoginDAO {
	
	public boolean isvaliduser(String userid, String password)
	{
		if(userid.equals(password))
		{
			return true;
		
		}
		else
		{
			return false;
		}
	}
	

}
