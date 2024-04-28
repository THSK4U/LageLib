package metier;

import java.io.Serializable;

public class livers implements Serializable {

	private int id_livre;
	private String  titre;
	private String lauteur;
	private int  lannéepublication;
	
	public livers() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	//constructor
	public livers(int id_livre, String titre, String lauteur, int lannéepublication) {
		super();
		this.id_livre = id_livre;
		this.titre = titre;
		this.lauteur = lauteur;
		this.lannéepublication = lannéepublication;
	}

	public livers(String titre, String lauteur, int lannéepublication) {
		super();
		this.titre = titre;
		this.lauteur = lauteur;
		this.lannéepublication = lannéepublication;
	}
	
	
	public int getId_livre() {
		return id_livre;
	}
	public void setId_livre(int id_livre) {
		this.id_livre = id_livre;
	}
	public String getTitre() {
		return titre;
	}
	public void setTitre(String titre) {
		this.titre = titre;
	}
	public String getLauteur() {
		return lauteur;
	}
	public void setLauteur(String lauteur) {
		this.lauteur = lauteur;
	}
	public int getLannéepublication() {
		return lannéepublication;
	}
	public void setLannéepublication(int lannéepublication) {
		this.lannéepublication = lannéepublication;
	}
	@Override
	public String toString() {
		return "livers [id_livre=" + id_livre + ", titre=" + titre + ", lauteur=" + lauteur + ", lannéepublication="
				+ lannéepublication + "]";
	}
	 
}
