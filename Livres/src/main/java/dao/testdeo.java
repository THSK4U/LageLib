package dao;

import java.util.List;

import metier.livers;

public class testdeo {

	public static void main(String[] args) {
		LivresDaoimpli deo = new LivresDaoimpli();
	
		List<livers> list =  deo.ALLlist();
		
		for(livers liv: list) {
			System.out.println(liv.toString());
			}
		
		livers L2 = list.getFirst();
		System.out.println(L2.toString());
     
		/*
		 * L2.setTitre("Le parfum"); L2.setLauteur(" Patrick Süskind");
		 * L2.setLannéepublication(1985); deo.update(L2);
		 * 
		 * System.out.println("Livre mis à jour : " + L2.toString());
		 * 
		 * 
		 * 
		 * livers L3 = deo.save(new livers("Les Misérables","Victor Hugo", 1862));
		 * livers L4 = deo.save(new
		 * livers("Le Petit Prince"," Antoine de Saint-Exupéry",1943));
		 */
        livers L5 = deo.deletLivres(44);
		System.out.println(L5.toString());
	}

}
