package dao;

import metier.Livres;

public interface LivreDao {
    
	public Livres save(Livres p);
	public Livres getLivres(Long id);
	public Livres update(Livres p);
	public void deletLivres(Long id);
	
}
