package com.irctc;

	import java.sql.Connection;
	import java.sql.DriverManager;

	public class DBConnection {

	    public static void main(String[] args) {

	        try {
	           
	        	String url = "jdbc:postgresql://192.168.1.17:5432/cse_db24";
	            String user = "24bcsf09";
	            String password = "24bcsf09";
	            
	            Class.forName("org.postgresql.Driver");

	            
	            Connection con = DriverManager.getConnection(url, user, password);

	            if (con != null) 
	            {
	                System.out.println("Connected successfully..");
	            }
	      
	        }
	        catch(Exception e) {
	            System.out.println("Error: " + e.getMessage());
	        }
	    }
	}

