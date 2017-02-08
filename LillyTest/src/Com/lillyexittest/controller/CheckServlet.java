package Com.lillyexittest.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;

import Com.lillyexittest.util.DBConnection;

/**
 * Servlet implementation class CheckServlet
 */
@WebServlet("/CheckServlet")
public class CheckServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public CheckServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		try {

			StringBuilder sb = new StringBuilder();
			BufferedReader br = request.getReader();
			String str = null;
			while ((str = br.readLine()) != null) {
				sb.append(str);
			}

			JSONObject jo = new JSONObject(sb.toString());

			String uid =jo.getString("Uid");

			Connection con = DBConnection.createConnection();
			Statement statement = null;
			ResultSet resultSet = null;
			PreparedStatement ps = null;
			statement = con.createStatement();

			PrintWriter out = response.getWriter();
			Map Status = new HashMap();

			JSONArray arr = new JSONArray();
			JSONObject obj1 = new JSONObject();
			JSONObject obj2 = new JSONObject();
			JSONObject obj4 = new JSONObject();
			JSONObject obj5 = new JSONObject();
			JSONObject obj6 = new JSONObject();

			ArrayList<String> Question = new ArrayList<String>();
			ArrayList<String> Answer = new ArrayList<String>();
			ArrayList<String> User_Id = new ArrayList<String>();
			ArrayList<String> Sum = new ArrayList<String>();
			ArrayList<String> Count = new ArrayList<String>();

			
			ps = con.prepareStatement("select * from question where U_id=?");
			ps.setString(1, uid);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {

				Question.add(rs.getString("Question"));
				Answer.add(rs.getString("Answer"));
				User_Id.add(rs.getString("U_id"));
			}

			ps = con.prepareStatement("select sum(Mark),count(Mark) from question where U_id=?");
			ps.setString(1, uid);
			ResultSet rs1 = ps.executeQuery();
			while (rs1.next()) {

				Sum.add(rs1.getString(1));
				Count.add(rs1.getString(2));
				
			}
			
			
			obj1.put("Question", Question);
			obj1.put("Answer", Answer);
			obj1.put("User_Id", User_Id);
			obj1.put("Count", Count);
			obj1.put("Sum", Sum);
			
			

			arr.put(obj1);
			obj2.put("items", obj1);
			response.getWriter().write(obj2.toString());
			response.setContentType("application/json");

		} catch (Exception e) {
			// TODO: handle exception
		}

		// TODO Auto-generated method stub
	}

}
