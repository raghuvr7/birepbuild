

import java.io.FileWriter;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/NumberOfBills")
public class NumberOfBills extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	try
	{
		

		Class.forName ("oracle.jdbc.driver.OracleDriver");
		Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@192.168.0.16:1521:orcl","scott","tiger");

		String filename = "C:\\Users\\admin\\Desktop\\localrep\\reports\\WebContent\\NumberOfBills.csv";
		FileWriter fw = new FileWriter(filename);
		PreparedStatement pst;
		String querry=" select to_char(bill_gen_date,'month'),count(cust_id) from payment where to_char(bill_gen_date,'year')=? group by to_char(bill_gen_date,'month')";
		pst=conn.prepareStatement(querry);
		pst.setString(1,request.getParameter("Year"));
		 
		fw.append("month");
		fw.append(',');
		fw.append("noOfBills");
	
		fw.append('\n');

		ResultSet rset = pst.executeQuery(); 
		while (rset.next()) 
		{ 
			System.out.println(rset.getString(1));
		fw.append(rset.getString(1));
		fw.append(',');
		fw.append(""+rset.getInt(2));
		  fw.append('\n');
		System.out.println("CSV Created Succesfully");

		}
		fw.close();
		conn.close();
		}
		catch (Exception e)
		{ 
		System.out.println("Exception : " + e);
		}
	RequestDispatcher r =request.getRequestDispatcher("NumberOfBillsD3.jsp");
	r.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

}
