package com.ecommers.dbhandler;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class DataInjector {
	@SuppressWarnings("finally")
	public static String addCustomer(String uname,String mail,String pass, String gender, String address) {
		String status="";
		String user="root";
		String password="tiger";
		String url="jdbc:mysql://localhost:3306/ecommers";
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection(url, user, password);
			String sql="insert into customers values(?,?,?,?,?)";
			
			PreparedStatement ps=con.prepareStatement(sql);
			
			ps.setString(1, uname);
			ps.setString(2, mail);
			ps.setString(3, pass);
			ps.setString(4, gender);
			ps.setString(5, address );
			
			ps.executeUpdate();
			status="success";
		}catch(Exception e) {
			System.out.println("Problem in adding customer...");
			e.printStackTrace();
			status="fail";
		}
		finally{
			return status;
		}
	}
	@SuppressWarnings("finally")
	public static boolean addProduct(int pid,String pname,String pdec,int pprice,String pimg) {
		boolean status=false;
		String user="root";
		String password="tiger";
		String url="jdbc:mysql://localhost:3306/ecommers";
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection(url, user, password);
			String sql="insert into products values(?,?,?,?,?)";
			
			PreparedStatement ps=con.prepareStatement(sql);
			
			ps.setInt(1, pid);
			ps.setString(2, pname);
			ps.setString(3, pdec);
			ps.setInt(4, pprice);
			ps.setString(5, pimg );
			
			ps.executeUpdate();
			status=true;
		}catch(Exception e) {
			System.out.println("Problem in adding customer...");
			e.printStackTrace();
			status=false;
		}
		finally{
			return status;
		}
	}
}
