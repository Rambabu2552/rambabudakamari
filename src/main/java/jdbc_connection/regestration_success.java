package jdbc_connection;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse
;


@WebServlet("/Registrationform")
public class regestration_success extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    String htnumber = request.getParameter("htnumber");
	String fname = request.getParameter("fname");
	String gender = request.getParameter("gender");
	String branch = request.getParameter("branch");
	String section = request.getParameter("section");
	String phone = request.getParameter("phone");
	String email = request.getParameter("email");
	String myfiles = request.getParameter("myfiles");
	String address = request.getParameter("address");
	String password = request.getParameter("password");
	Connection con = null;
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		con= DriverManager.getConnection("jdbc:mysql://localhost:3306/Registrationform", "root", "ram123@");
		Statement st = con.createStatement();
	
		int a = st.executeUpdate("insert into student(htnumber,fname,gender,branch,section, phone,email,myfiles,address,password) values('"
		+(htnumber) + "','" +(fname)+ "','" +(gender)+ "','" + (branch) + "','" + (section) + "','"+(phone)+"','"+(email)+"','"+(myfiles)+"','"+(address)+"','"+(password)+"')");
		response.sendRedirect("message.jsp?Message=Registered Successfully");
		} catch (Exception e) {
		System.out.println(e);
		//response.sendRedirect("fail_msg.jsp?Message=Failed Registered");
	}


	}

}
