package com.billherry.demo;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DataBase")
public class DataBase extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
		DBConn conn = new DBConn();
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
	    out.print("<script src='http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js'></script>");
	    out.print("<script src='"+request.getContextPath()+"/functions.js'></script>");
	    out.print("<link rel='stylesheet' type='text/css'  href='"+request.getContextPath()+"/bootstrap.min.css'>");
	    out.print("<link rel='stylesheet' type='text/css'  href='"+request.getContextPath()+"/table.css'>");
	    out.print("<link rel='stylesheet' type='text/css'  href='"+request.getContextPath()+"/form.css'>");
	    out.print(conn.getTableData());		
		out.print("<input type='submit' value='Add new row'  onClick='addNew()';>");		
		out.print("<p>Legmagasabb fizetés: "+conn.getMaxSal()+"<p>");
		out.print("<p>Legalacsonyabb fizetés: "+conn.getMinSal()+"<p>");
		out.print("<p>Alkalmazottak átlag fizetése: "+conn.getAvgSal()+"<p>");
		out.print("<p> A CLERK dolgozók fizetés növelése: <input type='submit' value='+10%'  onClick='addSalClerk()';><p>");
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
