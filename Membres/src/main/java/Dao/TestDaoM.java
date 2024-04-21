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
			
			//modifier 
			M2.setNom_mb("Nora");
			M2.setLadresse("10 lot hasaniai fes");
			M2.setNumérotéléphone(732097812);
			mebDao.update(M2);
			System.out.println(M2.toString());
			
			Membre M21 = mebDao.deletMembre(14);
	}

}
