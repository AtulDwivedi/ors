<%@ taglib uri="/WEB-INF/c.tld" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<link rel="stylesheet" type="text/css" href="resources/css/form.css" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>ORS</title>
</head>
<body>

	<!-- Candidate -->
	<div class="div-main">
		<div class="div1">
			<div class="div1-1">
				<label>Name</label>
			</div>
			<div class="div1-2">
				<input type="text" name="name" size="30" maxlength="30" value="<c:out value="${not empty requestScope.cand.name ? requestScope.cand.name : ''}" />" placeholer="<c:out value="${empty requestScope.cand.name ? 'Enter name' : 'dssdfs'}" />" />
			</div>
		</div>

		<div class="div1">
			<div class="div1-1">
				<label>Username</label>
			</div>
			<div class="div1-2">
				<input type="text" name="userName" size="30" maxlength="30" value='' />
			</div>
		</div>

		<div class="div1">
			<div class="div1-1">
				<label>Password</label>
			</div>
			<div class="div1-2">
				<input type="password" name="password" size="30" maxlength="30"
					value='' />
			</div>
		</div>
		<div class="div1">
			<div class="div1-1">
				<label>Gender</label>
			</div>
			<div class="div1-2">
				<select name="gender">
				<option value="">--Select--</option>
					<option value="Female">Female</option>
					<option value="Male">Male</option>
				</select>
			</div>
		</div>

		<div class="div1">
			<div class="div1-1">
				<label>Date of Birth&nbsp;</font><font color="blue">(dd/mm/yy)</font></label>
			</div>
			<div class="div1-2">
				<jsp:include page="datePicker.html" />
			</div>
		</div>
		<div class="div1">
			<div class="div1-1">
				<label>Experienced</label>
			</div>
			<div class="div1-2">
			<input type="radio" name="experienced" value="true" onclick="showExperienceFields()" />Yes &nbsp; <input type="radio" name="experienced" value="false" onclick="hideExperienceFields()" />No
			</div>
		</div>
	</div>
</body>
</html>