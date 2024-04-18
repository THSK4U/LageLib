package metier;

public class Livres {

	private Long id_livre;
	private String titre;
	private String  lauteur;
	private int lannéepublication;
	
	
	public Livres() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Livres(String titre, String lauteur, int lannéepublication) {
		super();
		this.titre = titre;
		this.lauteur = lauteur;
		this.lannéepublication = lannéepublication;
	}
	public Long getId_livre() {
		return id_livre;
	}
	public void setId_livre(Long id_livre) {
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
	    return "ID livre: " + id_livre + 
	           ", Titre: " + titre +
	           ", Auteur: " + lauteur +
	           ", Année de publication: " + lannéepublication;
	}
	
	
}
