package support.config;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

@Configuration
@ComponentScan(basePackages={"kr.apfs"}, includeFilters={@org.springframework.context.annotation.ComponentScan.Filter(type=org.springframework.context.annotation.FilterType.REGEX, pattern={"kr.apfs.*.*ServiceImple"})})
public class AppConfig
{
	/*@Autowired ConfigurableWebApplicationContext servContext;
    
    private void setProfile(String newProfile) {
        ConfigurableWebApplicationContext rootContext  = (ConfigurableWebApplicationContext) servContext.getParent();
         
        rootContext.getEnvironment().setActiveProfiles(newProfile);
        rootContext.refresh();                
          
        // Refreshing Spring-servlet WebApplicationContext
        servContext.getEnvironment().setActiveProfiles(newProfile);
        servContext.refresh();
    }*/
	
}