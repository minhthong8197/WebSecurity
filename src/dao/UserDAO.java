package dao;

import java.sql.ResultSet;

import connection.DBConnection;

public class UserDAO {
	public static String loadUserPower(String userName, String userPass) {
		System.out.println("\t.UserDAO.loadUserPower()");
		String str = "select * from users";
		ResultSet rs = DBConnection.executeQueryResultSet(str);
		try {
			while (rs.next()) {
				if (userName.equals(rs.getString("userName")) && userPass.equals(rs.getString("userPass"))) {
					return rs.getString("Quyen");
				}
			}
		} catch (Exception e) {
			System.out.println("\t.UserDAO.loadUserPower() error");
		}
		return "";
	}
}
