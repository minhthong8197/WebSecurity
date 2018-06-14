package dao;

import java.sql.ResultSet;

import connection.DBConnection;

public class UserDAO {
	public static String loadUser(String userName, String userPass) {
		System.out.println("in loadUser of UserDAO");
		String str = "select * from users";
		ResultSet rs = DBConnection.executeQueryResultSet(str);
		try {
			while (rs.next()) {
				if (userName.equals(rs.getString("userName")) && userPass.equals(rs.getString("userPass"))) {
					return rs.getString("Quyen");
				}
			}
		} catch (Exception e) {
			System.out.println("error in loadUser of UserDAO\n" + e.getMessage());
		}
		return "";
	}
}
