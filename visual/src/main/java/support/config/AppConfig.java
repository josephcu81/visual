package support.config;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

@Configuration
@ComponentScan(basePackages={"kr.apfs"}, includeFilters={@org.springframework.context.annotation.ComponentScan.Filter(type=org.springframework.context.annotation.FilterType.REGEX, pattern={"kr.apfs.*.*ServiceImple"})})
public class AppConfig
{
}