package Dao;

import java.util.List;

import Metier.Membre;

public class TestDaoM {

	public static void main(String[] args) {

		MembreDaoImpl mebDao = new MembreDaoImpl();

        List<Membre> list = mebDao.selectAllMembres();

        for(Membre liv: list) {
            System.out.println(liv.toString());
            }
	}

}
