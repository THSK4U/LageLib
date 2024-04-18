package dao;


import metier.Livres;

public class TestDaoL {

	public static void main(String[] args) {
		LiverDaoImpl liv = new LiverDaoImpl();
<<<<<<< HEAD
=======
		Livres L2 = liv.save(new Livres("Les Misérables","Victor Hugo", 1862));
		Livres L3 = liv.save(new Livres("Le Petit Prince"," Antoine de Saint-Exupéry",1943));
		
		System.out.println(L3.toString());
     
>>>>>>> 4a085b08281f81d461d0d51616864158f4cc6e9f
		
		/*
		 * Livres L3 = liv.save(new Livres("grhdfb", "behfd", 2222));
		 */	
		
		Livres L4 = liv.deletLivres(2);
		
	}

}
