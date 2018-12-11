package controller;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.ConnectDatabase;
import model.ProduceModel;
import utils.Constracts;

public class ProduceController {
	public List<ProduceModel> index() throws Exception{
		return refactors(ConnectDatabase.selectData(Constracts.sqlProduce()));
	}
	
	public ProduceModel get(int id) throws Exception{
		return refactor(ConnectDatabase.selectData(Constracts.sqlGetProduce(id)));
	}
	
	private List<ProduceModel> refactors(ResultSet resultSet) throws SQLException{
		List<ProduceModel> produces = new ArrayList<>();
		while(resultSet.next()) {
			ProduceModel model = new ProduceModel(resultSet.getInt(1), resultSet.getString(2), resultSet.getString(3), resultSet.getInt(4), resultSet.getString(5));
			produces.add(model);
		}
		return produces;
	}
	
	private ProduceModel refactor(ResultSet resultSet) throws SQLException{
		ProduceModel model = null;
		while(resultSet.next()) {
			model = new ProduceModel(resultSet.getInt(1), resultSet.getString(2), resultSet.getString(3), resultSet.getInt(4), resultSet.getString(5));
		}
		return model;
	}
	
	public static void main(String[] args) throws Exception{
		ProduceController controller = new ProduceController();
		List<ProduceModel> models = controller.index();
		for(ProduceModel model : models) {
			System.out.println(model.getName() + "--" + model.getPrice());
		}
	}
}
