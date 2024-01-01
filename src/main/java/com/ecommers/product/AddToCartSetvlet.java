package com.ecommers.product;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ecommers.dbhandler.DataFetcher;

@WebServlet("/add-to-cart")
public class AddToCartSetvlet extends HttpServlet {
	protected void doPost(HttpServletRequest req,HttpServletResponse res) throws IOException{
		int pid=Integer.parseInt(req.getParameter("productId"));
		Product p=DataFetcher.getProductById(pid);
		HttpSession session=req.getSession();
		Cart cart=(Cart)session.getAttribute("cart");
		if(cart==null) {
			cart=new Cart();
			session.setAttribute("cart", cart);
		}
		Cart.addItem(p);
		res.sendRedirect("home.jsp");
	}
}
