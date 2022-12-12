package springframework.mvc.web.form.validation;

import javax.validation.Valid;

import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/student")
public class StudentController {

	
	@InitBinder
	public void initBinder(WebDataBinder dataBinder) 
	{
		StringTrimmerEditor stringTrimmerEditor = new StringTrimmerEditor(true);
		dataBinder.registerCustomEditor(String.class, stringTrimmerEditor);
	}
	
	@RequestMapping("/showStudentForm")
	public String showStudentForm(Model model) {
		
		// create a student object
		Student theStudent = new Student();
		
		// add student object to the model
		model.addAttribute("student", theStudent);
		
		return "student-form";
	}
	
	@RequestMapping("/showStudentList")
	public String showStudentList(
			@Valid @ModelAttribute("student") Student theStudent,
			BindingResult theBindingResult) {
		
		if(theBindingResult.hasErrors())
		{
			return "student-form";
		}
		else
		{
			// log the input data
			System.out.println("theStudent: " + theStudent.getFirstName()
								+ " " + theStudent.getLastName());
			return "student-list";
		}
		
	}
	
}









