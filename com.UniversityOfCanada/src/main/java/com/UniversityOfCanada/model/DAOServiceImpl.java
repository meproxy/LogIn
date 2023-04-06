package com.UniversityOfCanada.model;

import java.sql.*;

public class DAOServiceImpl implements DAOService {
	private Connection con;
	private Statement stmnt;

	@Override
	public void connectDB() { // when this method is called it will connect to db
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/students", "root", "test");
			stmnt = con.createStatement();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public boolean verifyCredentials(String email, String password) {
		try {
			ResultSet result = stmnt.executeQuery("SELECT * FROM logIn WHERE email='"+email+"' AND password='"+password+"'");
			return result.next();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public void saveRegistration(String name, String fathersName, String email, String address, String contact) {
		try {
			stmnt.executeUpdate("INSERT INTO registration VALUES ('"+name+"','"+fathersName+"', '"+email+"', '"+address+"', '"+contact+"')");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public void deleteRegistration(String email) {
		try {
			stmnt.executeUpdate("DELETE FROM registration WHERE email='"+email+"'");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public void updateRegistration(String name, String fathersName, String email, String address, String contact) {
		try {
			stmnt.executeUpdate("UPDATE registration SET name='"+name+"', fathersName='"+fathersName+"', address='"+address+"', contact='"+contact+"' WHERE email='"+email+"'");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public ResultSet listReg() {
		try {
			ResultSet result = stmnt.executeQuery("select * from registration");
			return result;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

}
