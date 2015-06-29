package com.ninja_squad.geektic.domain;

import java.util.List;

public class Critere {

	private List<Sexe> sexVoulu;
	private List<Interet> interetsVoulus;

	public List<Sexe> getSexVoulu() {
		return sexVoulu;
	}

	public void setSexVoulu(List<Sexe> sexVoulu) {
		this.sexVoulu = sexVoulu;
	}

	public List<Interet> getInteretsVoulus() {
		return interetsVoulus;
	}

	public void setInteretsVoulus(List<Interet> interetsVoulus) {
		this.interetsVoulus = interetsVoulus;
	}

}
