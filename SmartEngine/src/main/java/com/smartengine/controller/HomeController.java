package com.smartengine.controller;

import java.io.IOException;

import com.smartengine.pojo.Sentence;
import com.smartengine.pojo.SentenceList;
import com.smartengine.pojo.Word;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping(value="/")
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */

	@RequestMapping(value = "", method = RequestMethod.GET)
	public String main() {
		return "index";
	}

	@RequestMapping(value = "file_upload", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public SentenceList getSentenceInJSON() throws IOException {

		Word w1 = new Word();
		w1.setWord("This");
		w1.setTag("N");

		Word w2 = new Word();
		w2.setWord("is");
		w2.setTag("V");

		Word w3 = new Word();
		w3.setWord("good");
		w3.setTag("Adj");

		Sentence s = new Sentence();
		s.addWord(w1);
		s.addWord(w2);
		s.addWord(w3);

		SentenceList sl = new SentenceList();
		sl.addSentence(s);
		return sl;
	}
}
