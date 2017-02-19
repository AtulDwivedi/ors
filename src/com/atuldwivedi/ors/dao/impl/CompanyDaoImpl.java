package com.atuldwivedi.ors.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.atuldwivedi.ors.dao.service.CompanyDao;
import com.atuldwivedi.ors.dao.util.ConnectionProvider;
import com.atuldwivedi.ors.model.Company;
import com.atuldwivedi.ors.model.Job;

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

	@Override
	public int createJob(Job job) {
		int retVal = 0;
		try{
			con = ConnectionProvider.getConnection();

			con.setAutoCommit(false);
			PreparedStatement pst1=con.prepareStatement("INSERT INTO JOBDETAIL VALUES(?,?,?,?,?,?,?)");
			pst1.setLong(1,job.getJobId());
			pst1.setString(2,job.getPost());
			pst1.setString(3,job.getCriteria());
			pst1.setInt(4,job.getVacancies());
			pst1.setLong(5,job.getSalary());
			pst1.setString(6,job.getExpiryDate());
			pst1.setString(7,job.getCompanyId());
			int jobInsert = pst1.executeUpdate();

			PreparedStatement pst2=con.prepareStatement("INSERT INTO EXAM VALUES(?,?,?,?,?,?)");
			pst2.setLong(1,job.getJobId());
			pst2.setString(2,job.getPost());
			pst2.setString(3,null);
			pst2.setString(4,null);
			pst2.setString(5,null);
			pst2.setString(6,job.getCompanyId());
			int examInsert  = pst2.executeUpdate();

			if(jobInsert == 1 && examInsert == 1){
				con.commit();
				retVal = 1;
			}
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return retVal;
	}

	@Override
	public int deletJobById(long jobId, String companyId) {
		int deletedRecordCount = 0;
		try {
			con = ConnectionProvider.getConnection();
			PreparedStatement pstmt = con.prepareStatement("DELETE FROM JOBDETAIL WHERE JOB_ID=? AND NAME=?");

			pstmt.setLong(1, jobId);
			pstmt.setString(2, companyId);

			deletedRecordCount = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return deletedRecordCount;
	}

	@Override
	public int updateJobById(Job job) {
		int updatedRecordCount = 0;
		try{
			con = ConnectionProvider.getConnection();
			PreparedStatement pstmt = con.prepareStatement("UPDATE JOBDETAIL SET POST=?, CRITERIA=?, VACANCIES=?, SALARY=?, LAST_DATE=? WHERE NAME=? AND JOB_ID=?");
			pstmt.setString(1, job.getPost());
			pstmt.setString(2, job.getCriteria());
			pstmt.setInt(3, job.getVacancies());
			pstmt.setLong(4, job.getSalary());
			pstmt.setString(5, job.getExpiryDate());
			pstmt.setString(6, job.getCompanyId());
			pstmt.setLong(7, job.getJobId());
			
			updatedRecordCount = pstmt.executeUpdate();
			
	} catch (SQLException e) {
		e.printStackTrace();
	}
	return updatedRecordCount;
}

}
