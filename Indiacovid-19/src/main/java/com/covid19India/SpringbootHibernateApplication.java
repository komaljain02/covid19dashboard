package com.covid19India;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;
import org.springframework.boot.autoconfigure.jdbc.DataSourceTransactionManagerAutoConfiguration;
import org.springframework.boot.autoconfigure.orm.jpa.HibernateJpaAutoConfiguration;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.support.SpringBootServletInitializer;

@SpringBootApplication(exclude = {
		    DataSourceAutoConfiguration.class, 
		    DataSourceTransactionManagerAutoConfiguration.class, 
		    HibernateJpaAutoConfiguration.class})
public class SpringbootHibernateApplication extends SpringBootServletInitializer
	{
		@Override
		protected SpringApplicationBuilder configure(SpringApplicationBuilder application)
		{
			return application.sources(SpringbootHibernateApplication.class);
		}

		public static void main(String args[])
		{
			SpringApplication.run(SpringbootHibernateApplication.class, args);
		}
	}
