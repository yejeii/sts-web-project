
package org.werock.config;

import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

import com.zaxxer.hikari.HikariConfig;
import com.zaxxer.hikari.HikariDataSource;

@Configuration
@ComponentScan(basePackages = {"com.zerock.sample"})
@MapperScan(basePackages = {"com.zerock.mapper"})
public class RootConfig {

	@Bean
	public DataSource dataSource() {
		
		HikariConfig config = new HikariConfig();
		//config.setDriverClassName("oracle.jdbc.driver.OracleDriver");
		//config.setJdbcUrl("jdbc:oracle:thin:@localhost:1521:ORCL");
		config.setDriverClassName("net.sf.log4jdbc.sql.jdbcapi.DriverSpy");
		config.setJdbcUrl("jdbc:log4jdbc:oracle:thin:@localhost:1521:ORCL");
		config.setUsername("book_ex");
		config.setPassword("book_ex");

		HikariDataSource ds = new HikariDataSource(config);
		
		return ds;
	}
	
	@Bean
	public SqlSessionFactory sqlSessionFactory() throws Exception {
		
		SqlSessionFactoryBean  sqlSessionFactoryBean = new SqlSessionFactoryBean();
		sqlSessionFactoryBean.setDataSource(dataSource());
		
		return sqlSessionFactoryBean.getObject();
	}
	
}


