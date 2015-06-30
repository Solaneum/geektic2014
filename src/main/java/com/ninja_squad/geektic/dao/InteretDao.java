package com.ninja_squad.geektic.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

import org.springframework.stereotype.Repository;

import com.ninja_squad.geektic.domain.Interet;

@Repository
public class InteretDao {

	@PersistenceContext
	protected EntityManager em;

	/**
	 * Renvoie tous les intérêts de la base.
	 * 
	 * @return List<Interet>
	 */
	public List<Interet> findAll() {
		String jpql = "select i from Interet i";
		TypedQuery<Interet> query = em.createQuery(jpql, Interet.class);
		List<Interet> listeInterets = query.getResultList();
		return listeInterets;
	}

}
