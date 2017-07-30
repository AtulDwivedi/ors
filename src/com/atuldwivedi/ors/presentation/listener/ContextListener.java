package com.atuldwivedi.ors.presentation.listener;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

import com.atuldwivedi.ors.dao.impl.SchemaDaoImpl;
import com.atuldwivedi.ors.dao.service.SchemaDao;

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
		ServletContext contxt = arg0.getServletContext();

		String createSchema = contxt.getInitParameter("CreateSchema");
		String dropExistingTables = contxt
				.getInitParameter("DropExistingTables");

		String dbPropPath = contxt
				.getRealPath("WEB-INF//properties//db.properties");
		LoadProperty.load(dbPropPath);

		String getPath = contxt.getRealPath("WEB-INF//tables//h2.sql");

		SchemaDao sch = new SchemaDaoImpl();

		if (dropExistingTables != null
				&& dropExistingTables.equalsIgnoreCase("yes"))
			sch.dropTables(getPath);

		if (createSchema != null && createSchema.equalsIgnoreCase("yes"))
			sch.createTables(getPath);
	}

}
