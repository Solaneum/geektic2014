package com.ninja_squad.geektic.domain;

import java.util.List;

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
