package com.ninja_squad.geektic.domain;

import java.util.List;

/**
 * Cette classe correspond aux critères définis par l'utilisteur dans l'IHM. Tri
 * possible sur le sexe (obligatoirement défini mais peut être ignoré) et / ou
 * sur les intérêts (non exclusifs lorsque plusieurs choisis).
 * 
 * @author Lisa
 */
public class Critere {

	private Sexe sexe;
	private List<Long> interets;

	public Sexe getSexe() {
		return sexe;
	}

	public void setSexe(Sexe sexe) {
		this.sexe = sexe;
	}

	public List<Long> getInterets() {
		return interets;
	}

	public void setInterets(List<Long> interets) {
		this.interets = interets;
	}

}
