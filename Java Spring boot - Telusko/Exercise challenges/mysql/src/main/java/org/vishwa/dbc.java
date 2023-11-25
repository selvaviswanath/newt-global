package org.vishwa;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

import javax.sql.DataSource;

import jakarta.annotation.Resource;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemIterator;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

@WebServlet(name = "FileUploadServlet", urlPatterns = { "/fileuploadservlet" })
@MultipartConfig(
		  fileSizeThreshold = 1024 * 1024 * 1, // 1 MB
		  maxFileSize = 1024 * 1024 * 10,      // 10 MB
		  maxRequestSize = 1024 * 1024 * 100   // 100 MB
		)
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
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<Part> fileParts = (List<Part>)request.getParts();
	    for (Part part : fileParts) {
		    String fileName = part.getSubmittedFileName();
	      part.write(fileName);
	    }
	    response.getWriter().print("The file uploaded sucessfully.");
	}
}








