package dao;

import java.util.List;

import metier.livers;

public interface ILiverdao {
	public List<livers> ALLlist();
	public livers save(livers p);
	public livers getLivres(long id);
	public livers update(livers p);
	public livers deletLivres(long id);

	
}
