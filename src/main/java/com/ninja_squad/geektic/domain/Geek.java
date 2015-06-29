package com.ninja_squad.geektic.domain;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.SequenceGenerator;

@Entity
public class Geek {

	@Id
	@SequenceGenerator(name = "geek_gen", sequenceName = "geek_seq")
	@GeneratedValue(generator = "geek_gen")
	private Long id;

	private String nom;

	private String prenom;

	private String mail;

	@Enumerated(EnumType.STRING)
	private Sexe sexe;

	@ManyToMany
	@JoinTable(name = "Geek_Interet", joinColumns = { @JoinColumn(name = "id_geek", referencedColumnName = "id") }, inverseJoinColumns = { @JoinColumn(name = "id_interet", referencedColumnName = "id") })
	private List<Interet> interets;

	// Methodes

	public String getNom() {
		return nom;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getPrenom() {
		return prenom;
	}

	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}

	public Sexe getSexe() {
		return sexe;
	}

	public void setSexe(Sexe sex) {
		this.sexe = sex;
	}

	public String getMail() {
		return mail;
	}

	public void setMail(String mail) {
		this.mail = mail;
	}

	public List<Interet> getInterets() {
		return interets;
	}

	public void setInterets(List<Interet> interets) {
		this.interets = interets;
	}

}
