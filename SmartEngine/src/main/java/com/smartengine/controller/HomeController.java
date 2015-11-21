package com.smartengine.controller;

import java.io.IOException;
import java.io.StringWriter;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import com.smartengine.pojo.Shop;
import org.json.simple.JSONObject;
import org.omg.CORBA.Request;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
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
	public Shop getShopInJSON() throws IOException {

//		List<String> list = new ArrayList();
//		list.add("1");
//		list.add("2");
//		list.add("3");
//
//		JSONObject obj = new JSONObject();
//		obj.put("name", "testname");
//		obj.put("info", list);
//		StringWriter out = new StringWriter();
//		obj.writeJSONString(out);
//		String jsonTxt = out.toString();
//		System.out.println(jsonTxt);

		Shop shop = new Shop();
		shop.setName("test");
		shop.setNames(new String[] {"1", "2", "3"});

		return shop;
	}

	@RequestMapping(value = "test", method = RequestMethod.POST)
	@ResponseBody
	public String getText() {
		System.out.println("test method");
		return "\"{ 'name' : 'person', 'id': '123'}\"";
	}
}
