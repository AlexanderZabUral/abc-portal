package com.example.demo.register;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.email_sender.EmailSenderService;
import com.example.demo.entity.Job;
import com.example.demo.entity.User;
import com.example.demo.entity.UserProfile;
import com.example.demo.login.LoginService;

import jakarta.servlet.http.HttpSession;

@Controller
public class RegisterController {

	@Autowired
	RegisterService registerService;

	@Autowired
	LoginService loginService;

	@Autowired
	EmailSenderService senderService;

	@RequestMapping("/register")
	public ModelAndView registerPage(HttpSession session) {
		ModelAndView mv = new ModelAndView();

		if (loginService.getCurrentUser(session) != null) {
			mv.setViewName("redirect:/");
			return mv;
		} else {
			User user = new User();
			UserProfile profile = new UserProfile();
			Job job = new Job();
			user.setProfile(profile);
			user.getProfile().setJob(job);
			mv.addObject("register", user);
		}

		List<Job> listJob = registerService.listJob();
		mv.addObject("listJob", listJob);
		mv.setViewName("register");

		return mv;
	}

	@RequestMapping(value = "/saveRegister", method = { RequestMethod.GET, RequestMethod.PUT, RequestMethod.POST})
	public String saveRegister(@ModelAttribute("register") User user, Model model) {
		User logUser = loginService.loadUserByEmail(user.getEmail());

		if (logUser != null) {
			if (user.getEmail().equals(logUser.getEmail())) {
				model.addAttribute("message", "This email address is already registered");
				model.addAttribute("error", "border: 1px solid #b02a37;");
				return "register";
			}
		}

		registerService.saveRegister(user);

		senderService.sendEmail(user.getEmail(),
				"Account Activation",
				"localhost:8080/abcportal/register-confirmation?id="
						+ loginService.loadUserByEmail(user.getEmail()).getId_user());

		String email = user.getEmail();
		model.addAttribute("email", email);
		return "thank-you";
	}

	@RequestMapping(value = "/register-confirmation", method = { RequestMethod.GET, RequestMethod.PUT, RequestMethod.POST})
	public String registerConfirmation(@RequestParam("id") int id) {
		User user = registerService.findUser(id);
		
		registerService.userActivation(user);

		return "register-confirmation";
	}

}
