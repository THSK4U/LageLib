package dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import metier.livers;

public class LivresDaoimpli implements ILiverdao{

	
	//select All
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
					e.printStackTrace();
				}

				return list;

	}
	

	//select by id
    @Override
    public livers getLivres(long id) {
    	Connection connection = SConnection.getConnection();
        livers livre = null;
        try {
            PreparedStatement preparedStatement =
                    connection.prepareStatement("SELECT * FROM Livres WHERE id_livre = ?");
            preparedStatement.setLong(1, id);
            ResultSet rs = preparedStatement.executeQuery();
            if (rs.next()) {
                int livreId = rs.getInt("id_livre");
                String titre = rs.getString("titre");
                String lauteur = rs.getString("lauteur");
                int lanneepublication = rs.getInt("lannéepublication");
                livre = new livers(livreId, titre, lauteur, lanneepublication);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return livre;
    }
    
    
    //update
    @Override
    public livers update(livers p) {
    	Connection connection = SConnection.getConnection();
        livers updatedLivres = new livers();
        try {
            updatedLivres.setId_livre(p.getId_livre());
            updatedLivres.setTitre(p.getTitre());
            updatedLivres.setLauteur(p.getLauteur());
            updatedLivres.setLannéepublication(p.getLannéepublication());
            
            PreparedStatement ps = connection.prepareStatement(
                "UPDATE Livres SET titre=?, lauteur=?, lannéepublication=? WHERE id_livre=?"
            );
            ps.setString(1, p.getTitre());
            ps.setString(2, p.getLauteur());
            ps.setInt(3, p.getLannéepublication());
            ps.setLong(4, p.getId_livre());
            ps.executeUpdate();
            ps.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return updatedLivres;
    }

    
    //delete
    @Override
    public livers deletLivres(long id) {
        Connection connection = SConnection.getConnection();

        try {
            PreparedStatement psDelete = connection.prepareStatement(
                    "DELETE FROM Livres WHERE id_livre=?"
            );
            psDelete.setLong(1, id);
            int rowsDeleted = psDelete.executeUpdate();
            psDelete.close();

            if (rowsDeleted > 0) {
                PreparedStatement psUpdate = connection.prepareStatement(
                        "UPDATE Livres SET id_livre = id_livre - 1 WHERE id_livre > ?"
                );
                psUpdate.setLong(1, id);
                psUpdate.executeUpdate();
                psUpdate.close();
            } else {
                System.out.println("The book with ID " + id + " was not found.");
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }


    
    //insert
	@Override
	public livers save(livers p) {
    	Connection connection = SConnection.getConnection();
		 try {
	            PreparedStatement stmt = connection.prepareStatement(
	                        "INSERT INTO Livres (titre, lauteur, lannéepublication) VALUES (?, ?, ?)"
	                    );
	              stmt.setString(1, p.getTitre());
	              stmt.setString(2, p.getLauteur());
	              stmt.setInt(3, p.getLannéepublication());
	              stmt.executeUpdate();


	             PreparedStatement stmt2 = connection.prepareStatement("SELECT LAST_INSERT_ID() AS last_id");
	                ResultSet rs = stmt2.executeQuery();
	                if (rs.next()) {
	                     p.setId_livre(rs.getInt("last_id"));
	                }
	                stmt2.close();
	                stmt.close();
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	        return p;
	    }


		/*
		 * PreparedStatement stmt2 =
		 * connection.prepareStatement("SELECT lastval() AS last_id"); ResultSet rs =
		 * stmt2.executeQuery(); if (rs.next()) { L.setId_livre(rs.getLong("last_id"));
		 * } stmt2.close(); stmt.close(); } catch (SQLException e) {
		 * e.printStackTrace(); } return p; }
		 */


}
