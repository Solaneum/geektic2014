package com.ninja_squad.geektic.service;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

import java.util.Arrays;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.ninja_squad.geektic.dao.GeekDao;
import com.ninja_squad.geektic.dao.InteretDao;
import com.ninja_squad.geektic.domain.Critere;
import com.ninja_squad.geektic.domain.Geek;
import com.ninja_squad.geektic.domain.Interet;
import com.ninja_squad.geektic.domain.Sexe;

/**
 * Classe qui se charge de l'écoute et de la réponse.
 * 
 * @author Lisa
 *
 */
@RestController
@Transactional
@RequestMapping("/api/geek")
public class GeekService {

	@Autowired
	private GeekDao dao;

	@Autowired
	private InteretDao interetsDao;

	/**
	 * Recherche et renvoie tous les geeks qui tombent sous le critère fourni
	 * 
	 * @param critere
	 * @return List<Geek>
	 */
	@RequestMapping(method = POST)
	public List<Geek> searchGeeks(@RequestBody Critere critere) {

		List<Geek> findByCriteria = dao.findByCriteria(critere);
		System.out.println(Arrays.toString(findByCriteria.toArray()));
		return findByCriteria;
	}

	/**
	 * Renvoie un geek cherché par son ID en base.
	 * 
	 * @param id
	 * @return Geek
	 */
	@RequestMapping(method = GET, value = "/{id}")
	public Geek displayGeek(@PathVariable("id") long id) {
		return dao.findById(id);
	}

	/**
	 * Renvoie tous les geeks à l'application Angular.
	 * 
	 * @return List<Geek>
	 */
	@RequestMapping(method = GET)
	public List<Geek> displayAllGeeks() {
		// return dao.findByCriteria(new Critere());
		return dao.findAll();
	}

	/**
	 * Cette méthode fournit à l'application Angular la liste des sexes
	 * enregistrés dans l'énumération.
	 * 
	 * @return Sexe[]
	 */
	@RequestMapping(method = GET, value = "/param/sexe")
	public Sexe[] getSexes() {
		return Sexe.values();
	}

	/**
	 * Cette méthode fournit à l'application Angular la liste des intérêts
	 * présents en base.
	 * 
	 * @return List<Interet>
	 */
	@RequestMapping(method = GET, value = "/param/interets")
	public List<Interet> getInterets() {
		return interetsDao.findAll();
	}

}
