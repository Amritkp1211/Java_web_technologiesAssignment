package com.util;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.bean.Employee;
import com.bean.EmployeePI;

public class EmployeeUtil {

	  public static Session createSession()
	  {
		  SessionFactory sf=new Configuration()
				                .addAnnotatedClass(EmployeePI.class)
				                .addAnnotatedClass(Employee.class)
				                .configure()
				                .buildSessionFactory();
		  
		  Session session=sf.openSession();
		  return session;
		  
		   }
}
