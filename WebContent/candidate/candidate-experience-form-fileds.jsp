<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<link rel="stylesheet" type="text/css" href="resources/css/form.css" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>ORS</title>
</head>
<body>

	<!-- Candidate Experience -->
	
	
				
	
	
	<div class="div-main" id="exp">
		

		<div class="div1">
			<div class="div1-1">
				<label>Total Year of Experience</label>
			</div>
			<div class="div1-2">
				<input type="text" name="totalYearsOfExperience" id="expyears"
								size="30" maxlength="30" />
			</div>
		</div>

		
		<div class="div1">
			<div class="div1-1">
				<label>Company Name</label>
			</div>
			<div class="div1-2">
				<input type="text" name="companyName" id="companyName" size="30"
								maxlength="30" />
			</div>
		</div>

		<div class="div1">
			<div class="div1-1">
				<label>Designation</label>
			</div>
			<div class="div1-2">
				<input type="text" name="designation" id="designation"
								size="30" maxlength="30" />
			</div>
		</div>
		
		<div class="div1">
			<div class="div1-1">
				<label>Is present company</label>
			</div>
			<div class="div1-2">
				<input type="radio" name="presentCompany" value="true" onclick="hideExperienceFieldsStartAndEndYear()" />Yes &nbsp; <input type="radio" name="presentCompany" value="true"  onclick="showExperienceFieldsStartAndEndYear()" />No
			</div>
		</div>
		
		<div class="div1" id="presentCompany">
			<div class="div1-1">
				<label>Start and End Year</label>
			</div>
			<div class="div1-2">
				<input type="text" name="startYear" id="startYear" size="30"
								maxlength="30" />&nbsp;
								<input type="text" name="endYear" id="endYear" size="30"
								maxlength="30" />
			</div>
		</div>
		
		<div class="div1">
			<div class="div1-1">
				<label>Salary</label>
			</div>
			<div class="div1-2">
				<input type="text" name="salary" id="salary" size="30"
								maxlength="30" />
			</div>
		</div>
		
		
		
	</div>
</body>
</html>