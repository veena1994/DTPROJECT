import java.util.*;

public class ArrayList1 {
	public static void main(String args[]){
		ArrayList<String> obj= new ArrayList<String>();
		obj.add("xyz");
		obj.add("abc");
		obj.add("asd");
	System.out.println("array list has some elements:"+obj);
	
	obj.add(0,"veena");
	obj.add(1,"ghjj");
	obj.add(2,"naveena");
	
	 obj.remove("abc");
	 System.out.println("Current array list is:"+obj);

	
	 obj.remove(2);

	  System.out.println("Current array list is:"+obj);
  }
	}


