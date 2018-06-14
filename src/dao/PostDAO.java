package dao;

import java.sql.PreparedStatement;

import connection.DBConnection;

public class PostDAO {
	public static int add(String PostName, String PostContent) {
		System.out.println("in add of PostDAO");
		String str = "insert into post(PostName,PostContent) values (?,?)";
		try {
			PreparedStatement pst = DBConnection.connect().prepareStatement(str);
			pst.setString(1, PostName);
			pst.setString(2, PostContent);
			int i = pst.executeUpdate();
			return i;
		} catch (Exception e) {
			System.out.println("error in add of PostDAO\n" + e.getMessage());
		}
		return 0;
	}
}
