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

	@RequestMapping(method = POST)
	public List<Geek> searchGeeks(@RequestBody Critere critere) {

		List<Geek> findByCriteria = dao.findByCriteria(critere);
		System.out.println(Arrays.toString(findByCriteria.toArray()));
		return findByCriteria;
	}

	@RequestMapping(method = GET, value = "/{id}")
	public Geek displayGeek(@PathVariable("id") long id) {
		return dao.findById(id);
	}

	@RequestMapping(method = GET)
	public List<Geek> displayAllGeeks() {
		// return dao.findByCriteria(new Critere());
		return dao.findAll();
	}

	@RequestMapping(method = GET, value = "/param/sexe")
	public Sexe[] getSexes() {
		return Sexe.values();
	}

	@RequestMapping(method = GET, value = "/param/interets")
	public List<Interet> getInterets() {
		return interetsDao.findAll();
	}

}
