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
		
	}

}
