package dao;

import java.util.List;

import metier.Membre;

public interface statisticDao {
	
	public statistic  save(statistic  M);
	public 	List<statistic > selectAllMembres();
}
