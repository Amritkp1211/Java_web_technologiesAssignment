package com.listener;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;


@WebListener
public class MyListener implements ServletContextListener {

        public void contextDestroyed(ServletContextEvent sce)  { 
         System.out.println("Application Destroyed");
         sce.getServletContext().getAttribute("counter");
        }
        
       public void contextInitialized(ServletContextEvent sce)  { 
    	   System.out.println("Application Initialized");
           sce.getServletContext().getAttribute("counter");
          
        }
	
}
