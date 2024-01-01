package com.ecommers.product;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/display-cart")
public class Displaycart extends HttpServlet{
	public void doPost(HttpServletRequest req,HttpServletResponse resp) throws IOException {
		
		resp.sendRedirect("cart.jsp");
	}
}
