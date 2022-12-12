package springframework.mvc.web.form.validation;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

public class SchoolCodeConstraintValidator implements ConstraintValidator<StudentCode, String>{

	private String codePrefix;
	
	@Override
	public void initialize(StudentCode theStudentCode) {
		
		codePrefix = theStudentCode.value();
	}

	@Override
	public boolean isValid(String theUserInputCode, ConstraintValidatorContext constraintValidatorContext) {
		
		boolean result;
		
		if(theUserInputCode != null){
			
			result = theUserInputCode.startsWith(codePrefix);
		}
		else{
			result = true;
		}

		return result;
	}

	
	
}
