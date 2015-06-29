package com.ninja_squad.geektic.service;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.ninja_squad.geektic.domain.Critere;
import com.ninja_squad.geektic.domain.Geek;

@RestController
@Transactional
@RequestMapping("/api/geek")
public class GeekRest {

	@RequestMapping(method = POST)
	public List<Geek> searchGeeks(Critere critere) {
		List<Geek> geeks = new ArrayList<Geek>();
		return geeks;
	}

	@RequestMapping(method = GET)
	public Geek displayGeek() {
		Geek geek = new Geek();
		return geek;
	}

}
