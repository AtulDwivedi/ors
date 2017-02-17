package com.atuldwivedi.ors.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.atuldwivedi.ors.dao.service.CompanyDao;
import com.atuldwivedi.ors.dao.util.ConnectionProvider;
import com.atuldwivedi.ors.model.Company;

public class CompanyDaoImpl implements CompanyDao {

	Connection con;
	
	@Override
	public int registerCompany(Company company) {
		int retVal = 0;
		
		try {
			con = ConnectionProvider.getConnection();
			PreparedStatement pstmt = con.prepareStatement("INSERT INTO COMPANYREGISTER VALUES(?,?,?,?,?,?,?,?)");
			pstmt.setString(1, company.getUserName());
			pstmt.setString(2, company.getCompName());
			pstmt.setString(3, company.getAddress());
			pstmt.setString(4, company.getPostInComp());
			pstmt.setString(5, company.getCriteria());
			pstmt.setString(6, company.getEmail());
			pstmt.setInt(7, company.getContact());
			pstmt.setInt(8, company.getCutOff());
			
			retVal = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return retVal;
	}

}
