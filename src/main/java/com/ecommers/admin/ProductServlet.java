package com.ecommers.admin;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ecommers.dbhandler.DataInjector;
@WebServlet("/addp")
public class ProductServlet extends HttpServlet{
	public void doPost(HttpServletRequest req,HttpServletResponse resp) throws IOException {
		int pid=Integer.parseInt(req.getParameter("pid"));
		String pname=req.getParameter("pname");
		String pdec=req.getParameter("pdec");
		int pprice=Integer.parseInt(req.getParameter("pprice"));
		String pimg=req.getParameter("pimg");
		DataInjector.addProduct(pid,pname,pdec,pprice,pimg);
		resp.sendRedirect("admin.jsp");
	}
}
