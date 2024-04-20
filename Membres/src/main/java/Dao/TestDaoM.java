package Dao;

import java.util.List;

import Metier.Membre;

public class TestDaoM {

	public static void main(String[] args) {

		MembreDaoImpl mebDao = new MembreDaoImpl();

		
		  List<Membre> list = mebDao.selectAllMembres();
		  
		  for(Membre Meb: list) { System.out.println(Meb.toString()); }
		 
		//add Member
	        Membre M2 = mebDao.save(new Membre("foaa ahbala","39  Mohamadia", 623981032));
			System.out.println(M2.toString());
	}

}
