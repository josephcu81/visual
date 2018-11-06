package support.config;
import java.io.IOException;

import javax.sql.DataSource;

import org.apache.ibatis.session.ExecutorType;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.SqlSessionTemplate;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Primary;
import org.springframework.core.io.support.PathMatchingResourcePatternResolver;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.jdbc.datasource.lookup.JndiDataSourceLookup;

import egovframework.rte.psl.dataaccess.mapper.Mapper;

@Configuration
@MapperScan(annotationClass = Mapper.class, basePackages={ "kr.apfs" }, sqlSessionTemplateRef="sqlSessionSimple")
public class DataConfig{
	
	private final String jndiname = "jdbc/orcl";
	
	@Bean(name="DefaultDataSource")
	public DataSource datasource() {
		JndiDataSourceLookup jndi =  new JndiDataSourceLookup();
		jndi.setResourceRef(true);
		DataSource dataSource =  jndi.getDataSource(jndiname);
		
		return dataSource;
	}

    @Bean
    public DataSourceTransactionManager transactionManager(@Qualifier("DefaultDataSource") DataSource datasource) {
        return new DataSourceTransactionManager(datasource);
    }
    
    @Bean
	public SqlSessionFactoryBean sqlSession(@Qualifier("DefaultDataSource") DataSource datasource) throws IOException {
		SqlSessionFactoryBean sqlSession = new SqlSessionFactoryBean();
		PathMatchingResourcePatternResolver pmrpr =  new PathMatchingResourcePatternResolver();
		
		sqlSession.setDataSource(datasource);
		sqlSession.setConfigLocation(pmrpr.getResource("classpath:/sqlmap/mapper-config.xml"));
		//sqlSession.setMapperLocations(pmrpr.getResources("classpath:/sqlmap/mapper/*.xml"));
		sqlSession.setMapperLocations(pmrpr.getResources("classpath:/sqlmap/mapper/**/*.xml"));
		//sqlSession.setMapperLocations(pmrpr.getResources("classpath:/sqlmap/mapper/**/**/*.xml"));
		return sqlSession;
	}
    
    @Primary
	@Bean(name="sqlSessionSimple")
	public SqlSessionTemplate sqlSessionSimple(@Qualifier("DefaultDataSource") DataSource dataSource) throws Exception {
		return new SqlSessionTemplate(sqlSession(dataSource).getObject(), ExecutorType.SIMPLE);
	}
    
    @Bean(name="sqlSessionBatch")
	public SqlSessionTemplate sqlSessionBatch(@Qualifier("DefaultDataSource") DataSource dataSource) throws Exception {
		return new SqlSessionTemplate(sqlSession(dataSource).getObject(), ExecutorType.BATCH);
	}
	
}

