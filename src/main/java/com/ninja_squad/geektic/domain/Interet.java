package com.ninja_squad.geektic.domain;

import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;

public class Interet {

	@Id
	@SequenceGenerator(name = "interet_gen", sequenceName = "interet_seq")
	@GeneratedValue(generator = "interet_gen")
	private long id;

	private String libelle;

	public String getLibelle() {
		return libelle;
	}

	public void setLibelle(String libelle) {
		this.libelle = libelle;
	}

}
