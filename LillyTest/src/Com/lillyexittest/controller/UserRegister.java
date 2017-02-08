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
 * Servlet implementation class UserRegister
 */
@WebServlet("/UserRegister")
public class UserRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserRegister() {
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

            String Status = jObj.getString("Status");
            String Lid = jObj.getString("LillyId");

            PrintWriter out = response.getWriter();
            //out.print(Status);
            Connection con = DBConnection.createConnection();
            PreparedStatement ps = null;
            ps = con.prepareStatement("insert into user_info(U_name,L_id) values(?,?)");
            ps.setString(1, Status);
            ps.setString(2, Lid);

            int i = ps.executeUpdate();

            response.setContentType("text/plain");
            response.setCharacterEncoding("UTF-8");

            if (i > 0) {
                   String prn = null;
                ps = con.prepareStatement("SELECT U_id FROM user_info where L_id=?");
                ps.setString(1,Lid);
                ResultSet rs = ps.executeQuery();
                while (rs.next()) {
                    prn=rs.getString("U_id");
                }
                
                response.getWriter().write(prn);
            } else {
                response.getWriter().write("Status has not been inserted");
            }

        } catch (Exception e) {
        }

		
		
	}

}
