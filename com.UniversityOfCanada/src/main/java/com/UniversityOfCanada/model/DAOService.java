package com.UniversityOfCanada.model;

import java.sql.ResultSet;

// Data Access Object (DOA)
public interface DAOService {
	public void connectDB();
	public boolean verifyCredentials(String email, String password);
	public void saveRegistration(String name, String fathersName, String email, String address, String contact);
	public void deleteRegistration(String email);
	public void updateRegistration(String name, String fathersName, String email, String address, String contact);
	public ResultSet listReg();
}
