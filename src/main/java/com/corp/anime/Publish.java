package com.corp.anime;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class Publish {

	
	@GetMapping("anime")
	public String getAnime() {
		return "Naruto";
	}
	
}
