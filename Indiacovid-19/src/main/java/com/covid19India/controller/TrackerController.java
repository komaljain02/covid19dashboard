package com.covid19India.controller;


import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.covid19India.model.IndiaVO;
import com.covid19India.model.StateVO;
import com.covid19India.model.TotalVO;
import com.covid19India.service.MapService;



@Controller
public class TrackerController {

	@Autowired
	private MapService mapservice;
	
	@RequestMapping("/")
	public ModelAndView index(Model model)
	{
		IndiaVO indvo = mapservice.convert();
		TotalVO totalvo = indvo.getTotal_values();
		model.addAttribute("total",totalvo);
		Map<String,StateVO> ls= indvo.getState_wise();
		model.addAttribute("liststate",ls);
		return new ModelAndView("tracker");
	}

}
