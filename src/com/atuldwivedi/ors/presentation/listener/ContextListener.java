package com.atuldwivedi.ors.presentation.listener;

import java.sql.SQLException;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

import com.atuldwivedi.ors.dao.impl.SchemaDaoImpl;
import com.atuldwivedi.ors.dao.util.ConnectionProvider;

import loadprop.LoadProperty;
import tablecreate.TableCreator;

/**
 * Application Lifecycle Listener implementation class ContextListener
 *
 */
@WebListener
public class ContextListener implements ServletContextListener {

	/**
	 * Default constructor. 
	 */
	public ContextListener() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see ServletContextListener#contextDestroyed(ServletContextEvent)
	 */
	public void contextDestroyed(ServletContextEvent arg0) {
		// TODO Auto-generated method stub
	}

	/**
	 * @see ServletContextListener#contextInitialized(ServletContextEvent)
	 */
	public void contextInitialized(ServletContextEvent arg0) {
		ServletContext contxt=arg0.getServletContext();
		String createSchema=contxt.getInitParameter("CreateSchema");


		if(createSchema.equalsIgnoreCase("yes"))
		{
			String dbPropPath=contxt.getRealPath("WEB-INF//properties//db.properties");
			System.out.println(dbPropPath);

			LoadProperty.load(dbPropPath);
			String getPath=contxt.getRealPath("WEB-INF//tables//h2.sql");
			SchemaDaoImpl sch = new SchemaDaoImpl();
			sch.createTables(getPath);
		}
	}

}
