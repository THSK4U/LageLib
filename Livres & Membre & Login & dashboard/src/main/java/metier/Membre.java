package metier;

public class Membre {
	private Long id_membre;
    private String nom_mb;
    private String ladresse;
    private int numérotéléphone;
    
    
	

	public Membre() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Membre(String nom_mb, String ladresse, int numérotéléphone) {
		super();
		this.nom_mb = nom_mb;
		this.ladresse = ladresse;
		this.numérotéléphone = numérotéléphone;
	}




	public Membre(Long id_membre, String nom_mb, String ladresse, int numérotéléphone) {
		super();
		this.id_membre = id_membre;
		this.nom_mb = nom_mb;
		this.ladresse = ladresse;
		this.numérotéléphone = numérotéléphone;
	}

	public Long getId_membre() {
		return id_membre;
	}


	public void setId_membre(Long id_membre) {
		this.id_membre = id_membre;
	}


	public String getNom_mb() {
		return nom_mb;
	}


	public void setNom_mb(String nom_mb) {
		this.nom_mb = nom_mb;
	}


	public String getLadresse() {
		return ladresse;
	}


	public void setLadresse(String ladresse) {
		this.ladresse = ladresse;
	}


	public int getNumérotéléphone() {
		return numérotéléphone;
	}


	public void setNumérotéléphone(int numérotéléphone) {
		this.numérotéléphone = numérotéléphone;
	}

	@Override
	public String toString() {
		return "Membre [id_membre=" + id_membre + ", nom_mb=" + nom_mb + ", ladresse=" + ladresse + ", numérotéléphone="
				+ numérotéléphone + "]";
	}
	
	
}
