package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import metier.Livres;

public class LiverDaoImpl implements LivreDao {



    @Override
    public Livres getLivres(Long id) {
        // TODO: Implémenter la récupération d'un livre par son ID dans la base de données
        return null;
    }
    
    @Override
    public Livres update(Livres p) {
        Connection connection = connectionJDBC.getConnection();
        Livres updatedLivres = new Livres();
        try {
            // Copier les informations de l'objet passé en paramètre vers la nouvelle instance
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
    
    

    @Override
    public Livres deletLivres(int id) {
    	Connection connection = connectionJDBC.getConnection();
    	
    	try {
    		PreparedStatement ps = connection.prepareStatement(
    				"DELETE FROM Livres WHERE id_livre=?"
    				);
    		ps.setLong(1, id);
    		int rowsDeleted = ps.executeUpdate();
    		 if (rowsDeleted > 0) {
    	            System.out.println("The book with ID " + id + " was deleted successfully!");
    	        } else {
    	            System.out.println("The book with ID " + id + " was not found.");
    	        }
			
    		ps.close();
   
    	}catch (SQLException e) {
    		e.printStackTrace();
    	}
		return null;
      
    }

    @Override
    public Livres save(Livres L) {
         Connection connection = connectionJDBC.getConnection();
         try {
            PreparedStatement stmt = connection.prepareStatement(
                        "INSERT INTO Livres (titre, lauteur, lannéepublication) VALUES (?, ?, ?)"
                    );
              stmt.setString(1, L.getTitre());
              stmt.setString(2, L.getLauteur());
              stmt.setInt(3, L.getLannéepublication());
              stmt.executeUpdate();
<<<<<<< HEAD

             PreparedStatement stmt2 = connection.prepareStatement("SELECT LAST_INSERT_ID() AS last_id");
                ResultSet rs = stmt2.executeQuery();
                if (rs.next()) {
                     L.setId_livre(rs.getLong("last_id"));
                }
                stmt2.close();
                stmt.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return L;
    }
=======
>>>>>>> 4a085b08281f81d461d0d51616864158f4cc6e9f

             PreparedStatement stmt2 = connection.prepareStatement("SELECT lastval() AS last_id");
                ResultSet rs = stmt2.executeQuery();
                if (rs.next()) {
                     L.setId_livre(rs.getLong("last_id"));
                }
                stmt2.close();
                stmt.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return L;
    }

}