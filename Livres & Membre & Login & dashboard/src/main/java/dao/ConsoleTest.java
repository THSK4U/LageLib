package dao;

import metier.livers;
import metier.livers;
import java.util.List;

public class ConsoleTest {

    public static void main(String[] args) {
        LivresDaoimpli dao = new LivresDaoimpli();

        // Testing select All
        System.out.println("Testing select All:");
        List<livers> allLivres = dao.ALLlist();
        for (livers livre : allLivres) {
            System.out.println(livre);
        }

        // Testing select by id
        System.out.println("\nTesting select by id:");
        long idToFind = 1; 
        livers foundLivre = dao.getLivres(idToFind);
        if (foundLivre != null) {
            System.out.println(foundLivre);
        } else {
            System.out.println("No book found with id " + idToFind);
        }

        // Testing update
        System.out.println("\nTesting update:");
        livers livreToUpdate = new livers(1, "Updated Title", "Updated Author", 2022);
        livers updatedLivre = dao.update(livreToUpdate);
        System.out.println("Updated book details: " + updatedLivre);

        // Testing delete
        System.out.println("\nTesting delete:");
        long idToDelete = 2; 
        livers deletedLivre = dao.deletLivres(idToDelete);
        System.out.println("Deleted book details: " + deletedLivre);

        // Testing insert
        System.out.println("\nTesting insert:");
        livers livreToInsert = new livers("New Book", "New Author", 2024); 
        livers insertedLivre = dao.save(livreToInsert);
        System.out.println("Inserted book details: " + insertedLivre);
    }
}
