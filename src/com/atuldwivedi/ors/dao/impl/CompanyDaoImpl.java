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

	@Override
	public int updateCompany(Company company) {
		int updatedRecordCount = 0;
		try {
			con = ConnectionProvider.getConnection();
			PreparedStatement pstmt = con.prepareStatement("UPDATE COMPANYREGISTER SET NAME=?,ADDR=?,POST=?,CRITERIA=?,EMAIL=?,CONTACT=?,CUTOFF=? WHERE USERNAME=?");
			
			pstmt.setString(1, company.getCompName());
			pstmt.setString(2, company.getAddress());
			pstmt.setString(3, company.getPostInComp());
			pstmt.setString(4, company.getCriteria());
			pstmt.setString(5, company.getEmail());
			pstmt.setInt(6, company.getContact());
			pstmt.setInt(7, company.getCutOff());
			pstmt.setString(8, company.getUserName());
			
			updatedRecordCount = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return updatedRecordCount;
	}

}
