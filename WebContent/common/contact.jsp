<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<link rel="stylesheet" type="text/css" href="resources/css/form.css" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>ORS</title>
	
</head>
<body>
	<!-- Contact  -->
	<div class="div-main">
		<div class="div1">
			<div class="div1-1" >
				<label>Email ID</label>
			</div>
			<div class="div1-2">
				<input type="text" name="emailId" size="30" maxlength="30"
					value="<c:out value="${not empty requestScope.cand.name ? requestScope.cand.name : ''}" />" placeholder="<c:out value="${empty requestScope.cand.name ? 'Enter name' : 'dssdfs'}" />" />
			</div>
		</div>

		<div class="div1">
			<div class="div1-1">
				<label>Mobile Number</label>
			</div>
			<div class="div1-2">
				<input type="text" name="mobileNumber" placeholder="Mobile number" />
			</div>
		</div>

		<div class="div1">
			<div class="div1-1">
				<label>Telephone Number</label>
			</div>
			<div class="div1-2">
				<input type="text" name="landLineNumber"
					placeholder="Telephone number" /> <font size="2" color="#CC0000"
					face="arial">(STD-No.)</font>
			</div>
		</div>

	</div>
</body>
</html>