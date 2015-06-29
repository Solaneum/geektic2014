package com.ninja_squad.geektic.dao;

import java.util.Arrays;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

import org.springframework.stereotype.Repository;

import com.ninja_squad.geektic.domain.Critere;
import com.ninja_squad.geektic.domain.Geek;
import com.ninja_squad.geektic.domain.Sexe;

@Repository
public class GeekDao {

	@PersistenceContext
	protected EntityManager em;

	public List<Geek> findAll() {
		String jpql = "select g from Geek g";
		TypedQuery<Geek> query = em.createQuery(jpql, Geek.class);
		List<Geek> listeGeeks = query.getResultList();
		return listeGeeks;
	}

	public Geek findById(Long id) {
		return em.find(Geek.class, id);
	}

	public List<Geek> findByCriteria(Critere critere) {
		TypedQuery<Geek> query = null;
		String hql = "Select distinct g from Geek as g left join g.interets i where 1=1 ";

		System.out.println(critere.getSexe() + " "
				+ Arrays.toString(critere.getInterets().toArray()));

		if (critere.getSexe() != Sexe.Indifférent) {
			hql += "and g.sexe = :sexe ";
		}

		if (critere.getInterets() != null && !critere.getInterets().isEmpty()) {
			hql += "and i.id in (:interets) ";
		}

		if (critere.getSexe() != Sexe.Indifférent) {
			if (critere.getInterets() != null
					&& !critere.getInterets().isEmpty()) {
				query = em.createQuery(hql, Geek.class)
						.setParameter("sexe", critere.getSexe())
						.setParameter("interets", critere.getInterets());
			} else {
				query = em.createQuery(hql, Geek.class).setParameter("sexe",
						critere.getSexe());
			}
		} else {
			if (critere.getInterets() != null
					&& !critere.getInterets().isEmpty()) {
				query = em.createQuery(hql, Geek.class).setParameter(
						"interets", critere.getInterets());
			} else {
				query = em.createQuery(hql, Geek.class);
			}
		}

		List<Geek> listeGeeks = query.getResultList();
		return listeGeeks;
	}
}
