package spring.annotations.code;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Component;

@Component
public class TennisCoach implements Coach{
	
	@Autowired
	@Qualifier("randomFortuneService")
	private FortuneService fortuneService;
	
	
	public TennisCoach()
	{
		System.out.println(">>> TennisCoach: inside default Constructor");
	}
	
//	@PostConstruct
	public void doMyStartupStuff()
	{
		System.out.println(">>> TennisCoach: inside of doMyStartupStuff()");
	}
//	@PreDestroy
	public void doMyCleanupStuff()
	{
		System.out.println(">>> TennisCoach: inside of doMyCleanupStuff()");
	}
	
	@Override
	public String getDailyWorkout() {
		
		return "Practice your backhand volley";
	}

	@Override
	public String getDailyFortune() {
		
		return fortuneService.getFortune();
		
	}

}
