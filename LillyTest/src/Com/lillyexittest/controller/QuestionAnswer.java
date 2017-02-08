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
 * Servlet implementation class QuestionAnswer
 */
@WebServlet("/QuestionAnswer")
public class QuestionAnswer extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public QuestionAnswer() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
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

            String Status = jObj.getString("Answer");
            String Lid = jObj.getString("UserId");
            String QuestionVal = jObj.getString("Question");
            

            PrintWriter out = response.getWriter();
            //out.print(Status);
            Connection con = DBConnection.createConnection();
            PreparedStatement ps = null;
            ps = con.prepareStatement("insert into question(Question,Answer,U_id) values(?,?,?)");
            ps.setString(1, QuestionVal);
            ps.setString(2, Status);
            ps.setString(3, Lid);
            

            int i = ps.executeUpdate();

            response.setContentType("text/plain");
            response.setCharacterEncoding("UTF-8");

            if (i > 0) {
            	//response.getWriter().write(QuestionVal);
                response.getWriter().write("Your answer has been submitted");
            } 
            
            else {
                response.getWriter().write("Answer has not been submited");
            }

        } catch (Exception e) {
        }

      
	}

}
