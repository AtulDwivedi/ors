<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ taglib uri="/WEB-INF/c.tld" prefix="c" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<script type="text/javascript"
	src="<%=request.getContextPath()+"/resources/js/validate-candidate-registration-form.js"%>"></script>
<script language="javascript">
            function hideExperienceFields()
            {
            	document.getElementById("exp").style.display = 'none';              
            }
            function showExperienceFields()
            {
            	document.getElementById("exp").style.display = 'block';              
            }
            window.onload = function() {
            	  hideExperienceFieldsStartAndEndYear();
            	};
            	function hideExperienceFieldsStartAndEndYear(){
            		document.getElementById("presentCompany").style.display = 'none';
            	}
            	function showExperienceFieldsStartAndEndYear(){
            		document.getElementById("presentCompany").style.display = 'block';
            	}
            </script>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Online Recruitment System</title>
	
</head>
<body bgcolor="#624631">

	<div style="float: left; width: 100%">
		<div style="float: left; width: 100%"><jsp:include page="Header.jsp" /></div>
		<div style="float: left; width: 100%">
			<div style="float: left; width: 20%"><jsp:include page="menu.html" /></div>
			<div style="float: left; width: 60%">
				<form action="candidate/rcd.jsp" method="post" name="form1"
					id="form1" onsubmit="return check()">
					<%@ include file="candidate/candidate-info-form-fileds.jsp"%>
					<%@ include file="common/contact.jsp"%>
					<%@ include file="common/address.jsp"%>
					<%@ include file="candidate/candidate-education-form-fileds.jsp"%>
					<%@ include file="candidate/candidate-experience-form-fileds.jsp"%>
					<%@ include file="common/form-buttons.jsp"%>
				</form>
			</div>
			<div style="float: left; width: 20%;"><jsp:include page="menu.jsp" /></div>
		</div>
	</div>
</body>
</html>