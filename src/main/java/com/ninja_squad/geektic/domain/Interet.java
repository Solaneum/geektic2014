package com.ninja_squad.geektic.domain;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;

@Entity
public class Interet {

	@Id
	@SequenceGenerator(name = "interet_gen", sequenceName = "interet_seq")
	@GeneratedValue(generator = "interet_gen")
	private long id;

	private String libelle;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getLibelle() {
		return libelle;
	}

	public void setLibelle(String libelle) {
		this.libelle = libelle;
	}

}
