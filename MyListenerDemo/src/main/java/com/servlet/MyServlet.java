package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/MyServlet")
public class MyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    ServletContext contex;
    public void init(ServletConfig config) throws ServletException {
    	this.contex=config.getServletContext();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		
		int counter=1;
		if(contex.getAttribute("counter")!=null) {
			
			counter=Integer.parseInt(contex.getAttribute("counter").toString());
			counter++;
		}
		
		contex.setAttribute("counter",counter);
		out.println("your are visiting this page "+counter+"times");
	}

}
