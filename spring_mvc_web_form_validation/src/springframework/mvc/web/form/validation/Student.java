package springframework.mvc.web.form.validation;

import java.util.LinkedHashMap;

import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

public class Student {

	@NotNull(message="is required")
	@Size(min=3, message="is required")
	private String firstName;
	
	@NotNull(message="is required")
	@Size(min=3, message="is required")
	private String lastName;
	
	@NotNull(message="is required")
	@Min(value=1001, message="invalid number")
	@Max(value=1999, message="invalid number")
	private Integer schoolNumber;
	
	@NotNull(message="is required")
	@Pattern(regexp="^(.+)@(\\S+)$", message="e.g. username@domain.com")
	private String email;
	
	@NotNull(message="is required")
	@StudentCode()
	private String studentCode;
	
	private String country;
	private String programmingLanguage;
	
	private LinkedHashMap<String, String> countryOptions;
	private LinkedHashMap<String, String> languageOptions;
	private String[] operatingSystems;
	
	public Student() {
		
		// populate country options: used ISO country code
		countryOptions = new LinkedHashMap<>();
		
		countryOptions.put("DE", "Germany");
		countryOptions.put("FR", "France");
		countryOptions.put("DE", "England");
		countryOptions.put("US", "United States of America");		
		
		languageOptions = new LinkedHashMap<>();
		languageOptions.put("Java", "Java");
		languageOptions.put("C++", "C++");
		languageOptions.put("PHP", "PHP");
		languageOptions.put("Ruby", "Ruby");

	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public LinkedHashMap<String, String> getCountryOptions() {
		return countryOptions;
	}

	public LinkedHashMap<String, String> getLanguageOptions() {
		return languageOptions;
	}

	public String getProgrammingLanguage() {
		return programmingLanguage;
	}

	public void setProgrammingLanguage(String programmingLanguage) {
		this.programmingLanguage = programmingLanguage;
	}

	public String[] getOperatingSystems() {
		return operatingSystems;
	}

	public void setOperatingSystems(String[] operatingSystems) {
		this.operatingSystems = operatingSystems;
	}

	public Integer getSchoolNumber() {
		return schoolNumber;
	}

	public void setSchoolNumber(Integer schoolNumber) {
		this.schoolNumber = schoolNumber;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getStudentCode() {
		return studentCode;
	}

	public void setStudentCode(String studentCode) {
		this.studentCode = studentCode;
	}
	
	
			
	
}
