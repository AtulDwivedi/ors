<%@ page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<link rel="stylesheet" type="text/css" href="resources/css/form.css" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>ORS</title>
</head>
<body>
	<jsp:useBean id="formData"
		class="com.atuldwivedi.ors.constant.FormData" />
	<!-- Address  -->
	<div class="div-main">
		<div class="div1">
			<div class="div1-1">
				<label>Address Line 1</label>
			</div>
			<div class="div1-2">
				<input maxlength="30" name="addressLine1" size="40"
					placeholder="Address Line 1" />
			</div>
		</div>

		<div class="div1">
			<div class="div1-1">
				<label>Address Line 2</label>
			</div>
			<div class="div1-2">
				<input maxlength="30" name="addressLine2" size="40"
					placeholder="Address Line 2" />
			</div>
		</div>

		<div class="div1">
			<div class="div1-1">
				<label>City</label>
			</div>
			<div class="div1-2">
				<input maxlength="30" name="city" size="40" placeholder="City" />
			</div>
		</div>

		<div class="div1">
			<div class="div1-1">
				<label>State</label>
			</div>
			<div class="div1-2">
				<select name="state">
					<option selected="selected" value="">--Select State--</option>
					<%
						List<String> states = formData.getStates();
						for (int i = 0; i < states.size(); i++) {
					%><option value="<%=states.get(i)%>"><%=states.get(i)%></option>
					<%
						}
					%>
				</select>
			</div>
		</div>

		<div class="div1">
			<div class="div1-1">
				<label>Pincode</label>
			</div>
			<div class="div1-2">
				<input maxlength="6" name="pinCode" size="6" placeholder="PIN Code" />
			</div>
		</div>

		<div class="div1">
			<div class="div1-1">
				<label>Country</label>
			</div>
			<div class="div1-2">
				<input type="text" maxlength="20" name="country"
					placeholder="Country" />
			</div>
		</div>

		<div class="div1">
			<div class="div1-1">
				<label>Land Mark</label>
			</div>
			<div class="div1-2">
				<input type="text" maxlength="50" name="landMark"
					placeholder="Land Mark" />
			</div>
		</div>
	</div>

</body>
</html>