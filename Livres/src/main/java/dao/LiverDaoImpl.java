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
    public void deletLivres(Long id) {
      
    }

	@Override
	public Livres save(Livres p) {
		// TODO Auto-generated method stub
		return null;
	}

}
