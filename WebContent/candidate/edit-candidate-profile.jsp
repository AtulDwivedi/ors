<%@ page contentType="text/html; charset=utf-8" language="java"
	import="java.sql.*" errorPage=""%>
<%@ page import="com.atuldwivedi.ors.model.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Online Recruitment System</title>
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
</head>

<body>
<body>

	<div style="float: left; width: 100%">
		<div style="float: left; width: 100%"><jsp:include page="CandidateHeader.jsp" /></div>
		<div style="float: left; width: 100%">
			<div style="float: left; width: 20%"><jsp:include page="Candidatemenu.jsp" /></div>
			<div style="float: left; width: 60%">
				<form action="candidate/rcd.jsp" method="post" name="form1"
					id="form1" onsubmit="return check()">
					<%@ include file="candidate-info-form-fileds.jsp"%>
					<jsp:include page="${request.contextPath}/common/contact.jsp" />
					<jsp:include page="${request.contextPath}/common/address.jsp" />
					<%@ include file="candidate-education-form-fileds.jsp"%>
					<%@ include file="candidate-experience-form-fileds.jsp"%>
					<jsp:include page="${request.contextPath}/common/form-buttons.jsp" />
				</form>
			</div>
			<div style="float: left; width: 20%;"><jsp:include page="Candidatemenu.jsp" /></div>
		</div>
	</div>
	</body>
</html>
