package org.werock.config;

import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

/** web.xml�� ����ϴ� Ŭ����(Tomcat ���� ����) */
public class WebConfig extends AbstractAnnotationConfigDispatcherServletInitializer{

	/** root-context.xml(������ ���� ����)�� ����ϴ� Ŭ���� */
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
