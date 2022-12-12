package spring.annotations.code;

public class RestFortuneService implements FortuneService{

	@Override
	public String getFortune() {
		
		return "Today is a rest day";
	}
	
	

}
