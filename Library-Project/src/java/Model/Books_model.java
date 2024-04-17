/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author user
 */
public class Books_model {

    private int id_livre;
    private String titre;
    private String lauteur;
    private double price;
    private int lannéepublication;

    public Books_model(int id_livre, String titre, String lauteur, double price, int lannéepublication) {
        this.id_livre = id_livre;
        this.titre = titre;
        this.lauteur = lauteur;
        this.price = price;
        this.lannéepublication = lannéepublication;
    }

    public int getId_livre() {
        return id_livre;
    }

    public String getTitre() {
        return titre;
    }

    public String getLauteur() {
        return lauteur;
    }

    public double getPrice() {
        return price;
    }

    public int getLannéepublication() {
        return lannéepublication;
    }

    public void setId_livre(int id_livre) {
        this.id_livre = id_livre;
    }

    public void setTitre(String titre) {
        this.titre = titre;
    }

    public void setLauteur(String lauteur) {
        this.lauteur = lauteur;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public void setLannéepublication(int lannéepublication) {
        this.lannéepublication = lannéepublication;
    }

    @Override
    public String toString() {
        return "Books_model{" + "id_livre=" + id_livre + ", titre=" + titre + ", lauteur=" + lauteur + ", price=" + price + ", lann\u00e9epublication=" + lannéepublication + '}';
    }
    
    

}
