package com.jutubao.configurer;

import java.util.HashMap;
import java.util.Map;
import java.util.Properties;

import org.springframework.beans.BeansException;
import org.springframework.beans.factory.config.ConfigurableListableBeanFactory;
import org.springframework.beans.factory.config.PropertyPlaceholderConfigurer;

public class CustomizedPropertyConfigurer extends PropertyPlaceholderConfigurer{
	 private static Map<String, Object> ctxPropertiesMap;
	 public static Object getContextProperty(String name) { return ctxPropertiesMap.get(name);  }
	 @Override
	protected void processProperties(
			ConfigurableListableBeanFactory beanFactoryToProcess,
			Properties props) throws BeansException {
		// TODO Auto-generated method stub
		super.processProperties(beanFactoryToProcess, props);
		ctxPropertiesMap = new HashMap<String, Object>();  
		for (Object key : props.keySet()) {  
            String keyStr = key.toString();  
            String value = props.getProperty(keyStr);  
            ctxPropertiesMap.put(keyStr, value);
        }  
	}
}
