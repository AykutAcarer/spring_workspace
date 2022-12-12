package spring.annotations.code;

public class SadFortuneService implements FortuneService {
	
	@Override
	public String getFortune() {
		return "Today is as sad day";
	}

}
