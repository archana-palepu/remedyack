package com.remedyack.remedyack.Controllers;

import java.util.Optional;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.remedyack.remedyack.dao.Userdao;
import com.remedyack.remedyack.models.User;
import com.remedyack.remedyack.models.UserLogin;

@Controller
public class Usercontroller {
	@Autowired
  private Userdao dao;
	@GetMapping(value="/user")
	public String user(Model model) {
		model.addAttribute("user",new User());
		return "User";
	}
	@PostMapping(value="/userreg")
	public String userreg(@ModelAttribute("user") User userreg,Model model) {
		User u= dao.save(userreg);
		if(u!=null) 
		{
		model.addAttribute("message","Your details are submitted successfully.");
		return "User";
		}
		else 
		{
			model.addAttribute("message","Something went wrong.");
			return "failure";
		}
	}
	@GetMapping(value="/userlogin")
	public String userlogin(Model model) {
		model.addAttribute("userlogin", new UserLogin());
		return "UserLogin";
	}
	@PostMapping(value="/userloginverify")
	public String userloginverify(@ModelAttribute("userlogin") UserLogin userlogin,Model model,HttpSession session) 
	{
		Optional<User> ul=dao.findById(userlogin.getUserId());
		if(ul.isPresent()) 
		{
			User u1=ul.get();
			if(u1.getPassword().equals(userlogin.getPassword())) 
			{
				session.setAttribute("username",u1.getId());
				return "UserHome";
			}
			else
			{
				model.addAttribute("message", "Invalid userid or password");
				return "UserLogin";
			}
			
		}	
		else
		{
			model.addAttribute("message", "Not Registered");
			return "UserLogin";
		}
	 }
	@GetMapping(value="/userlogout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}

	@GetMapping("/userLogout")
	public String userLogOut(HttpSession session)
	{
		session.invalidate();
		
		return "redirect:/";
	}
	}
