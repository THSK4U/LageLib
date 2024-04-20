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
		Connection connection = Connection_JDBC.getConnection();
		try {
				PreparedStatement preparedStatement = connection.prepareStatement("select * from Membres");
			    ResultSet rs = preparedStatement.executeQuery();
			    
			    while(rs.next()) {
			    	long id_membre = rs.getLong("id_membre");
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
		Connection connection = Connection_JDBC.getConnection();
	    try {
	         PreparedStatement PreSt = connection.prepareStatement(
	        		 " INSERT INTO Membres (nom_mb, ladresse, numérotéléphone) VALUES (?,?, ?)");
	        
	        PreSt.setString(1, M.getNom_mb());
	        PreSt.setString(2, M.getLadresse());
	        PreSt.setInt(3, M.getNumérotéléphone());
	        PreSt.executeUpdate();
	        PreparedStatement PreSt2 = connection.prepareStatement("SELECT LAST_INSERT_ID() AS last_id");
	        ResultSet rs = PreSt2.executeQuery();
	        if (rs.next()) {
	            M.setId_membre(rs.getLong("last_id"));
	        }
	        PreSt2.close();
	        PreSt.close();
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	    return M;
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
