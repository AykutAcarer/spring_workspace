package springframework.mvc.web.app;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/*
 * @author Acarer Aykut
 * 
 *  */

@Controller
public class HomeController {

	@RequestMapping("/")
	public String homePage()			
	{
		return "home";
	}
	
}
