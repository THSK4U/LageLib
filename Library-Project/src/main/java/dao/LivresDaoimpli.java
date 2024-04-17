package dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import metier.livers;

public class LivresDaoimpli implements ILiverdao{

	@Override
	public List<livers> ALLlist() {
		List<livers> list = new ArrayList<>();

	Connection connection = SConnection.getConnection();
				try {
					PreparedStatement preparedStatement = 
							connection.prepareStatement("SELECT * FROM Livres");
					ResultSet rs = preparedStatement.executeQuery();
					while (rs.next()) {
						int id = rs.getInt("id_livre");
						
						String  titre = rs.getString("titre");
						//System.out.println(titre);
						String lauteur = rs.getString("lauteur");
						int  lannéepublication = rs.getInt("lannéepublication");
						list.add(new livers(id,titre,lauteur,lannéepublication));
					}
					
					
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}

				return list;

	}


}
