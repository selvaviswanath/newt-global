package org.vishwa;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.sql.DataSource;


import jakarta.annotation.Resource;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/dbc")
public class dbc extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@Resource(name = "jdbc/hiber")
	private DataSource dataSource;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		   PrintWriter out = response.getWriter();
           Connection connect = null;
           Statement stmt = null;
           ResultSet rs = null;
           try {
			connect = dataSource.getConnection();
			String query = "Select * from users";
			stmt = connect.createStatement();
            rs = stmt.executeQuery(query);
            
			while(rs.next()){
				out.print("<br/>"+rs.getString("email"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		

	}

}








