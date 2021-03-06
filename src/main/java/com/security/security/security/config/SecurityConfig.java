package com.security.security.security.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http
			.authorizeRequests()
				.antMatchers("/","/css/**", "/index").permitAll();		
				
		http.authorizeRequests().anyRequest().fullyAuthenticated().and().httpBasic().and().csrf().disable();
				http.formLogin()
				.loginPage("/login").loginProcessingUrl("/login").usernameParameter("userName").passwordParameter("pass").failureUrl("/login").successForwardUrl("/dashboard");
				
				http.logout().logoutUrl("/logout").logoutSuccessUrl("/");
	}

	@Autowired
	public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
		auth
			.inMemoryAuthentication()
				.withUser("user").password("password").roles("USER");
	}
}