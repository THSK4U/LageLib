package dao;

import metier.Livres;

public class TestDaoL {

	public static void main(String[] args) {
		LiverDaoImpl liv = new LiverDaoImpl();
		Livres L2 = liv.save(new Livres("Les Misérables","Victor Hugo", 1862));
		System.out.println(L2.toString());
     
		
		L2.setTitre("Le Parfum");
        L2.setLauteur(" Patrick Süskind");
        L2.setLannéepublication(1985);
        liv.update(L2);
        
        System.out.println("Livre mis à jour : " + L2.toString());
	}

}
