package dao;

import java.util.List;

import metier.Membre;

public interface MembreDao {
  
	public Membre save(Membre M);
	public Membre getMembre(int id);
	public Membre update(Membre p);
	public Membre  deletMembre(int id);
	public 	List<Membre> selectAllMembres();
}
