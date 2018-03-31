<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<link rel="stylesheet" type="text/css" href="resources/css/form.css" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>ORS</title>
</head>
<body>

	<!-- Candidate Education -->





	<div class="div-main">
		<div class="div1">
			<div class="div1-1">
				<label>College in which studying</label>
			</div>
			<div class="div1-2">
				<input type="text" name="collegeName" size="30" maxlength="30" />
			</div>
		</div>

		<div class="div1">
			<div class="div1-1">
				<label>Branch</label>
			</div>
			<div class="div1-2">
				<select name="branch">
					<option value="">------Select---------</option>
					<option value="Applied Electro            ">Applied
						Electronics</option>
					<option value="Applied Physics            ">Applied
						Physics</option>
					<option value="B C A                      ">B C A</option>
					<option value="Bioinformatics              ">Bioinformatics
					</option>
					<option value="Biotechnology              ">Biotechnology
					</option>
					<option value="Chemistry                  ">Chemistry</option>
					<option value="Comp and Networking        ">Computer and
						Networking</option>
					<option value="Comp Application           ">Computer
						Application</option>
					<option value="Comp Application &amp; IT      ">Computer
						Application &amp; IT</option>
					<option value="Comp Hardware Maintenance  ">Computer
						Hardware Maintenance</option>
					<option value="Comp Information Systems   ">Computer
						Information Systems</option>
					<option value="Comp Maintenance           ">Computer
						Maintenance</option>
					<option value="Comp Maintenance &amp; Electro ">Computer
						Maintenance &amp; Electronics</option>
					<option value="Comp Science               ">Computer
						Science</option>
					<option value="Comp Science &amp; Information ">Computer
						Science &amp; Information</option>
					<option value="Comp Technology            ">Computer
						Technology</option>
					<option value="Electro                    ">Electronics</option>
					<option value="Electro &amp; Communication    ">Electronics
						&amp; Communication</option>
					<option value="Electro &amp; Comp Hardware    ">Electronics
						&amp; Computer Hardware</option>
					<option value="Electro &amp; Comp Maintenance ">Electronics
						&amp; Computer Maintenance</option>
					<option value="Industrial Chemistry       ">Industrial
						Chemistry</option>
					<option value="Information Technology     ">Information
						Technology</option>
					<option value="Instrumentation            ">Instrumentation
					</option>
					<option value="Mathematics                ">Mathematics</option>
					<option value="Optical Instrumentation    ">Optical
						Instrumentation</option>
					<option value="Physics                    ">Physics</option>
					<option value="Physics &amp; Electro          ">Physics
						&amp; Electronics</option>
					<option value="Physics Instrumentation    ">Physics
						Instrumentation</option>
					<option value="Physics with Comp App      ">Physics with
						Comp Applications</option>
					<option value="Software Systems           ">Software
						Systems</option>
					<option value="Software Technology        ">Software
						Technology</option>
					<option value="Statistics                 ">Statistics</option>
				</select>
			</div>
		</div>
		<div class="div1">
			<div class="div1-1">
				<label>% of Marks</label>
			</div>
			<div class="div1-2">
				<input type="text" name="marks" size="5" maxlength="5" value=''
					onblur="checkDec('markBSC')" />
			</div>
		</div>
		<div class="div1">
			<div class="div1-1">
				<label>Degree</label>
			</div>
			<div class="div1-2">
				<select name="educationLevel">
					<option value="BTech">BTech</option>
					<option value="MTech">MTech</option>
					<option value="MCA">MCA</option>
					<option value="BCA">BCA</option>
					<option value="BSc">BSC</option>
					<option value="MSc">MSc</option>
				</select>
			</div>
		</div>

		<div class="div1">
			<div class="div1-1">
				<label>Start Year</label>
			</div>
			<div class="div1-2">
				<input type="number" name="startYear" value="" />
			</div>
		</div>

		<div class="div1">
			<div class="div1-1">
				<label>End Year</label>
			</div>
			<div class="div1-2">
				<input type="number" name="endYear" value="" />
			</div>
		</div>
	</div>
</body>
</html>