package springframework.mvc.demo;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/*
 * @author Acarer Aykut
 * 
 *  */

@Controller
@RequestMapping("admin")
public class UserController {

	@RequestMapping("/registrationForm")
	public String registartion()
	{
		return "registration";
	}
	
	
	@RequestMapping("/loginForm")
	public String login()
	{
		return "login";
	}
	
	@RequestMapping("/users")
	public String getUsers()
	{
		return "users";
	}
	
	// Using this version -- HttpServletRequest --
	@RequestMapping("/usersFromModel")
	public String getUsersFromModel(HttpServletRequest request, Model model)
	{
		String user_name = request.getParameter("user_name");
		String user_mail = request.getParameter("user_mail");
		String user_password = request.getParameter("user_password");
		
		user_name = user_name.toUpperCase();
		user_mail = user_mail.toUpperCase();
		user_password = user_password.toUpperCase();
		
		model.addAttribute("userName", user_name);
		model.addAttribute("userMail", user_mail);
		model.addAttribute("userPassword", user_password);
		
		return "users";
	}
	
	// Using this version -- @RequestParam --
	@RequestMapping("usersFromModelVersionTwo")
	public String getUsersFromModelUseRequestParam(
			@RequestParam("user_name") String user_name, 
			@RequestParam("user_mail") String user_mail,
			@RequestParam("user_password") String user_password,
			Model model)
	{
				
		user_name = user_name.toUpperCase() + "_v.3";
		user_mail = user_mail.toUpperCase()+ "_v.3";
		user_password = user_password.toUpperCase()+ "_v.3";
		
		model.addAttribute("userName", user_name);
		model.addAttribute("userMail", user_mail);
		model.addAttribute("userPassword", user_password);
		
		return "users";
	}
}
