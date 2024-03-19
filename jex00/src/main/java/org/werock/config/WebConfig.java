package org.werock.config;

import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

/** web.xml을 대신하는 클래스(Tomcat 설정 파일) */
public class WebConfig extends AbstractAnnotationConfigDispatcherServletInitializer{

	/** root-context.xml(스프링 설정 파일)을 대신하는 클래스 */
	@Override
	protected Class<?>[] getRootConfigClasses() {
		return new Class[] {RootConfig.class};
	}

	@Override
	protected Class<?>[] getServletConfigClasses() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	protected String[] getServletMappings() {
		// TODO Auto-generated method stub
		return null;
	}

	
}
