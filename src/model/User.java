package model;

import java.util.Date;

public class User {
	private int UserID;
	// UserName vs UserPass la tai khoan dang nhap
	private String UserName;
	private String UserPass;
	private String FullName;
	private Date DateOfBirth;
	private String PhoneNumber;
	private String Email;
	// Ma quyen co the la 1:admin | 2:editer | 3:writer
	private int MaQuyen;

	// Constructor
	public User(int userID, String userName, String userPass, String fullName, Date dateOfBirth, String phoneNumber,
			String email, int maQuyen) {
		super();
		UserID = userID;
		UserName = userName;
		UserPass = userPass;
		FullName = fullName;
		DateOfBirth = dateOfBirth;
		PhoneNumber = phoneNumber;
		Email = email;
		MaQuyen = maQuyen;
	}

	// getter - setter
	public int getUserID() {
		return UserID;
	}

	public void setUserID(int userID) {
		UserID = userID;
	}

	public String getUserName() {
		return UserName;
	}

	public void setUserName(String userName) {
		UserName = userName;
	}

	public String getUserPass() {
		return UserPass;
	}

	public void setUserPass(String userPass) {
		UserPass = userPass;
	}

	public String getFullName() {
		return FullName;
	}

	public void setFullName(String fullName) {
		FullName = fullName;
	}

	public Date getDateOfBirth() {
		return DateOfBirth;
	}

	public void setDateOfBirth(Date dateOfBirth) {
		DateOfBirth = dateOfBirth;
	}

	public String getPhoneNumber() {
		return PhoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		PhoneNumber = phoneNumber;
	}

	public String getEmail() {
		return Email;
	}

	public void setEmail(String email) {
		Email = email;
	}

	public int getMaQuyen() {
		return MaQuyen;
	}

	public void setMaQuyen(int maQuyen) {
		MaQuyen = maQuyen;
	}
}
