package com.ravin.myworkprofile.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ravin.myworkprofile.data.profile.ProfileDetails;

@Controller
public class HomeController {
	String message = "Welcome to Spring MVC!";
	
	@RequestMapping("/mylogin")
	public ModelAndView login(@RequestParam(value = "error", required = false, defaultValue = "n") String error) {

		System.out.println("in controller error: " +error);
		ModelAndView mv = new ModelAndView("mylogin");
		message = null;
		if(null!= error && "y".equalsIgnoreCase(error)) {
			message = "Invalid Username or Password. Please re-try.";
		}
		mv.addObject("message", message);
		return mv;
	}
	
	@RequestMapping("/mylogout")
	public ModelAndView logout() {

		System.out.println("in controller");
		ModelAndView mv = new ModelAndView("mylogin");
		
		
		return mv;
	}

	@RequestMapping("/helloz")
	public ModelAndView showMessage(
			@RequestParam(value = "name", required = false, defaultValue = "Ravindra") String name) {

		System.out.println("in controller");

		ModelAndView mv = new ModelAndView("helloworld");
		mv.addObject("message", message);
		mv.addObject("name", name);
		return mv;
	}

	@RequestMapping("/home")
	public ModelAndView home() {

		ModelAndView mv = new ModelAndView("home");
		mv.addObject("siteName", "MyWork");

		ProfileDetails ravinsProfile = new ProfileDetails();
		ravinsProfile.setAddressLine1("1611 Crtny Landing Dr");
		ravinsProfile.setAddressLine2("Apt 9306");
		ravinsProfile.setCity("Charlotte");
		ravinsProfile.setCountry("USA");
		ravinsProfile.setFirstName("Ravindra");
		ravinsProfile.setLastName("Kurundwadkar");
		ravinsProfile.setJobTitle("Sr. Java Developer");
		ravinsProfile.setProfileId("ravindra_k01");
		ravinsProfile.setProfileName("Ravin K");
		ravinsProfile.setStateCode("NC");
		ravinsProfile.setZip("28217");
		ravinsProfile.setProfileSummary(
				"High potential Sr. Developer bringing superior analysis, design, coding and"
				+ "testing capabilities, innovative problem solving skills and dedication to quality. "
				+ "Excels at Java/J2EE application development, including project coordination, estimations, "
				+ "planning, programming and implementation with 8 years of experience.");

		mv.addObject("profileDetails", ravinsProfile);

		return mv;

	}

}
