package metier;

import java.io.Serializable;

public class admin implements Serializable{
	private int id_admin;
	private String  name_ad;
	private String password;
	
	@Override
	public String toString() {
		return "admin [id_admin=" + id_admin + ", name_ad=" + name_ad + ", password=" + password + "]";
	}
	
	public int getId_admin() {
		return id_admin;
	}
	public void setId_admin(int id_admin) {
		this.id_admin = id_admin;
	}
	public String getName_ad() {
		return name_ad;
	}
	public void setName_ad(String name_ad) {
		this.name_ad = name_ad;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	public admin(int id_admin, String name_ad, String password) {
		super();
		this.id_admin = id_admin;
		this.name_ad = name_ad;
		this.password = password;
	}
	
	
	
	
}
