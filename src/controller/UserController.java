package controller;

import java.sql.ResultSet;
import java.sql.SQLException;

import model.ConnectDatabase;
import model.UserModel;
import utils.Constracts;

public class UserController {
	public UserModel login(String email, String password) throws Exception {
		UserModel model = refactor(ConnectDatabase.selectData(Constracts.sqlLogin(email, password)));
		return model;
	}
	
	public boolean register(String email, String name, String password, String rePassword) throws Exception {
		if (password.equals(rePassword)) {
			return !ConnectDatabase.excuteSQL(Constracts.sqlRegister(email, name, password));
		}
		return false;
	}
	
	private UserModel refactor(ResultSet resultSet) throws SQLException {
		UserModel model = null;
		resultSet.next();
		if (resultSet != null) {
			model = new UserModel(resultSet.getInt(1), resultSet.getString(2), resultSet.getString(3), resultSet.getString(4));
		}
		
		return model;
	}
	
	public static void main(String[] args) throws Exception{
		UserController usercontroller = new UserController();
		System.out.print(usercontroller.login("tung@gmail.com", "1").getEmail());
	}
}
