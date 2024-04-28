package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import metier.Membre;
import metier.livers;

public class MembreDaoImpl implements MembreDao {
		
	//SELECT ALL users
	public List<Membre> selectAllMembres(){
		List<Membre> Membres = new ArrayList<>();
		Connection connection = SConnection.getConnection();
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
		Connection connection = SConnection.getConnection();
	    try {
	         PreparedStatement PreSt = connection.prepareStatement(
	        		 " INSERT INTO Membres (nom_mb, ladresse, numérotéléphone) VALUES (?,?, ?);");
	        
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
		Connection connection = SConnection.getConnection();
		Membre Membres = null;
        try {
            PreparedStatement preparedStatement =
                    connection.prepareStatement("select * from Membres WHERE id_membre = ?");
            preparedStatement.setLong(1, id);
            ResultSet rs = preparedStatement.executeQuery();
            if (rs.next()) {
            	long id_membre = rs.getLong("id_membre");
		    	String nom_mb = rs.getString("nom_mb");
		    	String ladresse = rs.getString("ladresse");
		    	int numérotéléphone = rs.getInt("numérotéléphone");
		    	Membres = new Membre(id_membre,nom_mb,ladresse,numérotéléphone);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return Membres;
	}

	@Override
	public Membre update(Membre L) {
		Connection connection = SConnection.getConnection();	       
		Membre updatedMembre = new Membre();
	        try {
	        	updatedMembre.setId_membre(L.getId_membre());
	        	updatedMembre.setNom_mb(L.getNom_mb());
	        	updatedMembre.setLadresse(L.getLadresse());
	        	updatedMembre.setNumérotéléphone(L.getNumérotéléphone());
	            
	            PreparedStatement ps = connection.prepareStatement(
	                "UPDATE Membres SET nom_mb=?, ladresse=?, numérotéléphone=? WHERE id_membre=?"
	            );
	            ps.setString(1, L.getNom_mb());
	            ps.setString(2, L.getLadresse());
	            ps.setInt(3, L.getNumérotéléphone());
	            ps.setLong(4, L.getId_membre());
	            ps.executeUpdate();
	            ps.close();
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	        return updatedMembre;
	}

	@Override
	public Membre deletMembre(int id) {
		Connection connection = SConnection.getConnection();	           	
    	try {
    		PreparedStatement ps = connection.prepareStatement(
    				"DELETE FROM Membres WHERE id_membre=?;");
    		ps.setLong(1, id);
    		int rowsDeleted = ps.executeUpdate();
            ps.close();

    		 if (rowsDeleted > 0) {
    			 PreparedStatement psUpdate = connection.prepareStatement(
                         "UPDATE Membres SET id_membre = id_membre - 1 WHERE id_membre > ?"
                 );
                 psUpdate.setLong(1, id);
                 psUpdate.executeUpdate();
                 psUpdate.close();
                 } else {
    	            System.out.println("The book with ID " + id + " was not found.");
    	        }
			
    		ps.close();
   
    	}catch (SQLException e) {
    		e.printStackTrace();
    	}		return null;
	}

}
