package com.ecommers.dbhandler;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import com.ecommers.product.*;
public class DataFetcher {
	public static String fetchPassword(String uname) {
		String dbpass="";
		String user="root";
		String password="tiger";
		String url="jdbc:mysql://localhost:3306/ecommers";
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection(url, user, password);
			String sql="select password from customers where uname=?";
			
			PreparedStatement ps=con.prepareStatement(sql);
			
			ps.setString(1, uname);
			
			ResultSet rs=ps.executeQuery();
			rs.next();
			dbpass=rs.getString(1);
		}catch(Exception e) {
			System.out.println("Problem in validating customer...");
			e.printStackTrace();
		}
		return dbpass;
	}
	public static List fetchUsersInfo() {
		String user="root";
		String password="tiger";
		String url="jdbc:mysql://localhost:3306/ecommers";
		String sql="select uname,mail,gender,address from customers";
		List ulist=new ArrayList();
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection(url, user, password);
			Statement st=con.createStatement();
			ResultSet rs=st.executeQuery(sql);
			while(rs.next()) {
				String temp=rs.getString(1)+":"+rs.getString(2)+":"+rs.getString(3)+":"+rs.getString(4);
				ulist.add(temp);
			}
		}catch(Exception e) {
			System.out.println("Problem in fetching Customers...");
			e.printStackTrace();
		}
		return ulist;
	}
	public static List fetchProductsInfo() {
		String user="root";
		String password="tiger";
		String url="jdbc:mysql://localhost:3306/ecommers";
		String sql="select pid,pname,pdesc,pprice,pimg from products";
		List plist=new ArrayList();
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection(url, user, password);
			Statement st=con.createStatement();
			ResultSet rs=st.executeQuery(sql);
			while(rs.next()) {
				String temp=rs.getInt(1)+":"+rs.getString(2)+":"+rs.getString(3)+":"+rs.getInt(4)+":"+rs.getString(5);
				plist.add(temp);
			}
		}catch(Exception e) {
			System.out.println("Problem in fetching Products...");
			e.printStackTrace();
		}
		return plist;
	}
	@SuppressWarnings("finally")
	public static Product getProductById(int pid) {
		String user="root";
		String password="tiger";
		String url="jdbc:mysql://localhost:3306/ecommers";
		String sql="select pname,pprice,pdesc from products where pid=?;";
		Product p = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection(url, user, password);
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setInt(1, pid);
			ResultSet rs=ps.executeQuery();
			rs.next();
			String pname=rs.getString(1);
			int pprice=rs.getInt(2);
			String pdesc=rs.getString(3);
			p=new Product(pid,pdesc,pname,pprice);
			
		}
		catch(Exception e) {
			System.out.println("Problem in fetching productttttttttt");
			e.printStackTrace();
		}
		finally {
			if(p==null) {
				p=new Product(pid,"xxxxxx","xxxxxx",0);
			}
			return p;
		}
	}
	
}
