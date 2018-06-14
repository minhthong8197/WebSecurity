package connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DBConnection {
	// tao ket noi
	public static Connection connect() {
		System.out.println("in connect of DBConnection");
		String url = "jdbc:mysql://35.198.251.138:3306/";
		String dbName = "websitehoithao?useUnicode=true&characterEncoding=UTF-8";
		String driver = "com.mysql.jdbc.Driver";
		String userName = "root";
		String password = "1234";
		Connection conn = null;
		try {
			Class.forName(driver).newInstance();
			conn = DriverManager.getConnection(url + dbName, userName, password);
		} catch (InstantiationException e) {
			System.out.println("error in connect of DBConnection\n" + e.getMessage());
			// e.printStackTrace();
		} catch (IllegalAccessException e) {
			System.out.println("error in connect of DBConnection\n" + e.getMessage());
			// e.printStackTrace();
		} catch (ClassNotFoundException e) {
			System.out.println("error in connect of DBConnection\n" + e.getMessage());
			// e.printStackTrace();
		} catch (SQLException e) {
			System.out.println("error in connect of DBConnection\n" + e.getMessage());
			// e.printStackTrace();
		}
		return conn;
	}

	// thuc thi cau truy van
	public static ResultSet executeQueryResultSet(String str) {
		System.out.println("in executeQueryResultSet of DBConnection");
		ResultSet rs = null;
		Statement stmt = null;
		Connection conn = connect();
		try {
			stmt = (Statement) conn.createStatement();
			rs = stmt.executeQuery(str);
		} catch (Exception e) {
			System.out.println("error in executeQueryResultSet of DBConnection\n" + e.getMessage());
		}
		return rs;
	}

	// tao post moi
	public static int newPost(String PostName, String PostContent, String Ptl, String Pdate) {
		System.out.println("in newPost of DBConnection");
		String str = "insert into post1(PostName,PostContent,Ptl,Pdate,P,P1) values (?,?,?,?,'chua duyet',3)";
		PreparedStatement pst;
		try {
			pst = DBConnection.connect().prepareStatement(str);
			pst.setString(1, PostName);
			pst.setString(2, PostContent);
			pst.setString(3, Ptl);
			pst.setString(4, Pdate);
			int i = pst.executeUpdate();
			return i;
		} catch (SQLException e) {
			System.out.println("error in newPost of DBConnection\n" + e.getMessage());
			// e.printStackTrace();
		}
		return 0;
	}

	// tao post moi voi quyen admin
	public static int newPostAd(String PostName, String PostContent, String Ptl, String Pdate) {
		System.out.println("in newPostAd of DBConnection");
		String str = "insert into post1(PostName,PostContent,Ptl,Pdate,P,P1) values (?,?,?,?,'chua duyet',1)";
		try {
			PreparedStatement pst = DBConnection.connect().prepareStatement(str);
			pst.setString(1, PostName);
			pst.setString(2, PostContent);
			pst.setString(3, Ptl);
			pst.setString(4, Pdate);
			int i = pst.executeUpdate();
			return i;
		} catch (Exception e) {
			System.out.println("error in newPostAd of DBConnection\n" + e.getMessage());
		}
		return 0;
	}

	// tao tai khoan moi
	public static int newAcount(String UserName, String Userpass, String FullName, String Gender, String PhoneNumber,
			String Quyen, String date) {
		System.out.println("in newAcount of DBConnection");
		String str = "insert into users(UserName,Userpass,FullName,Gender,PhoneNumber,Quyen,date) values (?,?,?,?,?,?,?)";
		try {
			PreparedStatement pst = DBConnection.connect().prepareStatement(str);
			pst.setString(1, UserName);
			pst.setString(2, Userpass);
			pst.setString(3, FullName);
			pst.setString(4, Gender);
			pst.setString(5, PhoneNumber);
			pst.setString(6, Quyen);
			pst.setString(7, date);
			int i = pst.executeUpdate();
			return i;
		} catch (SQLException e) {
			System.out.println("error in newAcount of DBConnection\n" + e.getMessage());
		}
		return 0;
	}
}
