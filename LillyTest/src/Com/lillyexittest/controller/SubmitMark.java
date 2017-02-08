package Com.lillyexittest.controller;


import java.io.IOException;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.json.JSONObject;

import Com.lillyexittest.util.DBConnection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SubmitMark
 */
@WebServlet("/SubmitMark")
public class SubmitMark extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SubmitMark() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		


		try {

            StringBuilder sb = new StringBuilder();
            BufferedReader br = request.getReader();
            String str = null;
            while ((str = br.readLine()) != null) {
                sb.append(str);
            }
            JSONObject jObj = new JSONObject(sb.toString());

            String Question = jObj.getString("Question");
            String Uid = jObj.getString("UserId");
            String mark = jObj.getString("Mark");
            

            PrintWriter out = response.getWriter();
            //out.print(Status);
            Connection con = DBConnection.createConnection();
            PreparedStatement ps = null;
            ps = con.prepareStatement("update question set Mark=? where Question=? and U_id=?");
            ps.setString(1, mark);
            ps.setString(2, Question);
            ps.setString(3, Uid);
            
            int i = ps.executeUpdate();

            response.setContentType("text/plain");
            response.setCharacterEncoding("UTF-8");

            if (i > 0) {
            	//response.getWriter().write(QuestionVal);
                response.getWriter().write("Your answer has been submitted");
            } else {
                response.getWriter().write("Error");
            }

        } catch (Exception e) {
        }
	}

}
