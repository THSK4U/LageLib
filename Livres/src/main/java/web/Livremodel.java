package web;

import java.util.ArrayList;
import java.util.List;

import metier.livers;

public class Livremodel {
	private List<livers> list = new ArrayList<livers>();

	public List<livers> getList() {
		return list;
	}

	public void setList(List<livers> list) {
		this.list = list;
	}

	/*
	 * public class empruntModel { private String motCle; private List<Emprunt>
	 * emprunts = new ArrayList<Emprunt>(); public String getMotCle() { return
	 * motCle; } public void setMotCle(String motCle) { this.motCle = motCle; }
	 * public List<Emprunt> getEmprunts() { return emprunts; } public void
	 * setEmprunts(List<Emprunt> Emprunts) { this.emprunts = Emprunts; }
	 */
}
