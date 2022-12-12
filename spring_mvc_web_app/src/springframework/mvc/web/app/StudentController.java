package springframework.mvc.web.app;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/student")
public class StudentController {

	@RequestMapping("/showStudentForm")
	public String showStudentForm(Model model) {
		
		// create a student object
		Student theStudent = new Student();
		
		// add student object to the model
		model.addAttribute("student", theStudent);
		
		return "student-form";
	}
	
	@RequestMapping("/showStudentList")
	public String showStudentList(@ModelAttribute("student") Student theStudent) {
		
		// log the input data
		System.out.println("theStudent: " + theStudent.getFirstName()
							+ " " + theStudent.getLastName());
		
		return "student-list";
	}
	
}









