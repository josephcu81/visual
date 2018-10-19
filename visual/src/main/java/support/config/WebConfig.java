package support.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.Ordered;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;

@EnableWebMvc
@Configuration
@ComponentScan(basePackages={"kr.apfs"}, includeFilters={@org.springframework.context.annotation.ComponentScan.Filter(type=org.springframework.context.annotation.FilterType.REGEX, pattern={"kr.apfs.*.*Controller"})})
public class WebConfig extends WebMvcConfigurerAdapter
{
  public void addResourceHandlers(ResourceHandlerRegistry registry)
  {
    registry.addResourceHandler(new String[] { "/resources/**" }).addResourceLocations(new String[] { "/resources/" });
    registry.addResourceHandler(new String[] { "/plugins/**" }).addResourceLocations(new String[] { "/plugins/" });
    registry.addResourceHandler(new String[] { "/images/**" }).addResourceLocations(new String[] { "/images/" });
    registry.addResourceHandler(new String[] { "/css/**" }).addResourceLocations(new String[] { "/css/" });
  }
  
  @Override
  public void addViewControllers( ViewControllerRegistry registry ) 
  {
      registry.addViewController( "/" ).setViewName( "forward:/index" );
      registry.setOrder( Ordered.HIGHEST_PRECEDENCE );
      super.addViewControllers( registry );
  }

  @Bean
  public InternalResourceViewResolver viewResolver() {
    InternalResourceViewResolver viewResolver = new InternalResourceViewResolver();
    viewResolver.setViewClass(JstlView.class);
    viewResolver.setPrefix("/WEB-INF/views/");
    viewResolver.setSuffix(".jsp");
    return viewResolver;
  }
}