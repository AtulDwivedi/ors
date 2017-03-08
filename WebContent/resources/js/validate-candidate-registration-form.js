/**
 * This JavaScrip file provides scripts to validate candidate registration form. 
 */
function setVal(sval)
{

	if(sval=="Fresher")
	{
		document.getElementById("expyears").disabled=true;
		document.getElementById("company").disabled=true;
		document.getElementById("designation").disabled=true;
		document.getElementById("salary").disabled=true;
		document.getElementById("comAddress").disabled=true;
	}
	else{
		document.getElementById("expyears").disabled=false;
		document.getElementById("company").disabled=false;
		document.getElementById("designation").disabled=false;
		document.getElementById("salary").disabled=false;
		document.getElementById("comAddress").disabled=false;
	}
}

function check()
{
	var a=document.form1.collphone.value;
	var b=document.form1.mark10.value;
	var c=document.form1.mark12.value;
	var d=document.form1.markDegree.value;
	var e=document.form1.telephone.value;
	var f=document.form1.pincode.value;
	var x=document.form1.name.value;
	var y=document.form1.collname.value;
	var z=document.form1.password.value;

	if(document.form1.name.value=="")
	{
		alert("Enter Your Name");
		document.form1.name.focus();
		return false;
	}
	else if(parseInt(x))
	{
		alert("Enter name Correctly");
		document.form1.name.focus();
		return false;

	}
	if(document.form1.gender.value=="")
	{
		alert("Enter your gender");
		document.form1.gender.focus();
		return false;
	}
	if(document.form1.dob.value=="")
	{
		alert("Enter Date of Birth");
		document.form1.dob.focus();
		return false;
	}
	if(document.form1.collname.value=="")
	{
		alert("Enter College Name ");
		document.form1.college.focus();
		return false;
	}
	else if(parseInt(y))
	{
		alert("Enter College Name correctly");
		document.form1.collname.focus();
		return false;
	}
	if(document.form1.collphone.value=="")
	{
		alert("Enter collegephone number ");
		document.form1.collphone.focus();
		return false;
	}
	else if(!parseInt(a))
	{
		alert("Enter CollegePhone Integer");
		document.form1.collphone.focus();

		return false;
	}
	else if(((document.form1.collphone.value.length)<6) || ((document.form1.collphone.value.length)>11))
	{
		alert("Phone no: should contain atleast 6 integers ");
		document.form1.collphone.focus();
		return false;
	}
	if(document.form1.email.value=="")
	{
		alert("Enter College email ");
		document.form1.email.focus();
		return false;
	}
	else if(document.form1.email.value.indexOf('@')==-1)
	{
		alert("Use @ email correctly");
		document.form1.email.focus();
		return false;
	}
	else if(document.form1.email.value.indexOf('.')==-1)
	{
		alert("Use . email correctly");
		document.form1.email.focus();
		return false;
	}
	if(document.form1.branch.value=="")
	{
		alert("Specify Branch");
		document.form1.branch.focus();
		return false;
	}
	if(document.form1.mark10.value=="")
	{
		alert("Enter your 10th %mark")
		document.form1.mark10.focus();
		return false;
	}
	else if(!parseInt(b))
	{
		alert("Not Integers used");
		document.form1.mark10.focus();
		return false;
	}
	else if(parseInt(b)<0||parseInt(b)>100)
	{
		alert("Enter 10th % mark correctly  ");
		document.form1.mark10.focus();
		return false();
	}

	if(document.form1.mark12.value=="")
	{
		alert("Enter 12th mark")
		document.form1.mark12.focus();
		return false;
	}
	else if(!parseInt(c))
	{
		alert("Not Integers used");
		document.form1.mark12.focus();
		return false;
	}
	else if(parseInt(c)<0||parseInt(c)>100)
	{
		alert("Enter 12th %mark correctly  ");
		document.form1.mark12.focus();
		return false();
	}

	if(document.form1.markDegree.value=="")
	{
		alert("Enter Degree mark");
		document.form1.markDegree.focus();
		return false;
	}
	else if(!parseInt(d))
	{
		alert("Enter Integer");
		document.form1.markDegree.focus();
		return false;
	}
	else if(parseInt(d).length<0||parseInt(d).length>100)
	{
		alert("Enter Degree % mark correctly  ");
		document.form1.markDegree.focus();
		return false;
	}
	if(document.form1.degree.value=="")
	{
		alert("Enter Degree");
		document.form1.degree.focus();
		return false;
	}
	if(document.form1.username.value=="")
	{
		alert("Enter  Username");
		document.form1.username.focus();
		return false;
	}

	if(document.form1.password.value=="")
	{
		alert("Enter Password");
		document.form1.password.focus();
		return false;
	}
	if(z.length<1)
	{
		alert("Password should be minimum 8 characters");
		document.form1.password.focus();
		return false;
	}
	if(document.form1.emailid.value=="")
	{
		alert("Enter email ");
		document.form1.emailid.focus();
		return false;
	}
	else if(document.form1.emailid.value.indexOf('@')==-1)
	{
		alert("Use @ email correctly");
		document.form1.emailid.focus();
		return false;
	}
	else if(document.form1.emailid.value.indexOf('.')==-1)
	{
		alert("Use . email correctly");
		document.form1.emailid.focus();
		return false;
	}
	if(document.form1.telephone.value=="")
	{
		alert("Enter phone number ");
		document.form1.telephone.focus();
		return false;
	}
	else if(!parseInt(e))
	{
		alert("Enter Ph Integer");
		return false;
	}
	else if(((document.form1.telephone.value.length)<6) || ((document.form1.telephone.value.length)>11))
	{
		alert("Phone no should contain atleast 6 integers ");

		document.form1.telephone.focus();
		return false;
	}
	if(document.form1.addr.value=="")
	{
		alert("Enter Address");
		document.form1.addr.focus();
		return false;
	}
	if(document.form1.states.value=="")
	{
		alert("Specify State");
		document.form1.addr.focus();
		return false;
	}
	if(document.form1.pincode.value=="")
	{
		alert("Enter pin number ");
		document.form1.pincode.focus();
		return false;
	}
	else if(!parseInt(f))
	{
		alert("Enter Integer");
		document.form1.pincode.focus();
		return false;
	}
	else if((document.form1.pincode.value.length)<6)
	{
		alert("Pin no: should contain 6 integers ");
		document.form1.pincode.focus();
		return false;
	}
	if(document.form1.sel_cat.value=="")
	{
		alert("Specify Category");
		document.form1.sel_cat.focus();
		return false;
	}

	return true;
}
