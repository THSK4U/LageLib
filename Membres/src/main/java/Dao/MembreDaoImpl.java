package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Metier.Membre;

public class MembreDaoImpl implements MembreDao {
		
	//SELECT ALL users
	public List<Membre> selectAllMembres(){
		List<Membre> Membres = new ArrayList<>();
		try(Connection connection = Connection_JDBC.getConnection();
				PreparedStatement preparedStatement = connection.prepareStatement("select * from Membres");){
			    System.out.println(preparedStatement);
			    ResultSet rs = preparedStatement.executeQuery();
			    
			    while(rs.next()) {
			    	int id_membre = rs.getInt("id_membre");
			    	String nom_mb = rs.getString("nom_mb");
			    	String ladresse = rs.getString("ladresse");
			    	int numérotéléphone = rs.getInt("numérotéléphone");
			    	Membres.add(new Membre(id_membre,nom_mb,ladresse,numérotéléphone));
			    }
		}catch (SQLException e) {
            e.printStackTrace();
		}
		return Membres;
		
	}

	@Override
	public Membre save(Membre M) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Membre getMembre(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Membre update(Membre p) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Membre deletMembre(int id) {
		// TODO Auto-generated method stub
		return null;
	}

}
