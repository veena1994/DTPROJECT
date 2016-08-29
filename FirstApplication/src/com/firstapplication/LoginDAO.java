package com.firstapplication;

public class LoginDAO {
	
	public boolean isvaliduser(String name, String password)
	{
		if(name.equals(password))
		{
			return true;
		
		}
		else
		{
			return false;
		}
	}

}
