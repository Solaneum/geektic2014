package com.ninja_squad.geektic.domain;

import javax.persistence.Id;

public class Interet {

	@Id
	private long id;

	private String libelle;

	public String getLibelle() {
		return libelle;
	}

	public void setLibelle(String libelle) {
		this.libelle = libelle;
	}

}
