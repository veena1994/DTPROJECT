/*package com.niit.shoppingcart.util;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import javax.print.DocFlavor.INPUT_STREAM;

public class Util {


	public static void upload(String path, MultipartFile file,String fileName){
		if(!file.isEmpty()){
			InputStream inputStream =null;
			OutputStream outputStream =null;
			if(file.getSize() > 0)
			{
				try{
					inputStream = file.getInputStream();
					outputStream = new FileOutputStream(path+fileName);
					int readBytes  = 0;
					byte[] buffer = new byte[1024];
					while((readBytes = inputStream.read(buffer,0,1024))!= -1){
						outputStream.write(buffer, 0, readBytes);
					}
				}catch(IOException e){
					//TODO auto generated catch block
					e.printStackTrace();
				}
				finally
				{
					try{
						outputStream.close();
						inputStream.close();
						
					}catch(IOException e){
						//TODO auto generated catch block
						e.printStackTrace();
					}
				}
				
		}
		
	}
	}
}
*/