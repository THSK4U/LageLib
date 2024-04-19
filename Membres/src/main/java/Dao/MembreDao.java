package Dao;

import Metier.Membre;

public interface MembreDao {
  
	public Membre save(Membre M);
	public Membre getMembre(int id);
	public Membre update(Membre p);
	public Membre  deletMembre(int id);
}
