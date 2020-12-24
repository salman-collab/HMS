<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="static/css/employee.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="static/EMPLOYEE/staff.js"></script>
<script type="text/javascript">
	function handle(e) {
		if (e.keyCode === 13) {
			e.preventDefault(); // Ensure it is only this code that runs
			SearchPatient();
		}
	}
</script>

<style>
#bt {
	line-height: 29px;
	margin-left: -59px;
}

#table-HMS tr:hover {
	background-color: #ccc;
	cursor: pointer;
}
#AddDoctor{
margin-top: 25px;
}
</style>
</head>
<body>
	<div id="div1">
		<div class="body-container">
			<div class="container">
				<div class="row">
					<div class="col-md-8" id="main">
						<div class="panel-group" id="accordion" role="tablist"
							aria-multiselectable="true">
							<div class="panel panel-default">
								<div class="panel-heading" id="headingOne">
									<div class="row">
										<div class="col-md-6 col-sm-6 col-xs-6">
											<div class="toggleHeadings">
												<h4 class="panel-title">
													<span class="glyphicon glyphicon-align-justify three-row"></span>&nbsp&nbsp
													<b>STAFF LIST</b>
												</h4>
											</div>
										</div>
										<div class="col-md-6 col-sm-6 col-xs-6">
											<div class="nav-bar">
												<span class="buttons" id="add">Add</span> <span
													class="buttons" id="save">Save</span> <span class="buttons"
													id="back">Back</span> <span class="buttons" id="edit">Edit</span>
												<span class="buttons" id="delete">Delete</span>
											</div>
										</div>
									</div>
								</div>
								<div id="collapseOne"
									class="panel-collapse collapse in toggleCollapse"
									role="tabpanel" aria-labelledby="headingOne">
									<div class="panel-body-first">

										<div class="body-filter">
											<div class="col-md-12"
												style="font-family: Open Sans Light; font-size: 11pt; color: #5d5d5d;">

												<div id="doctor-list"></div>


												<div id="AddDoctor">

													<div class="">
														<div class="contact-form new-registration-form">
															<h2>Personal Details</h2>
															<form name="reg" action="" method="post"
																enctype="multipart/form-data">

																<label class="half">First Name<input
																	name="fname" id="fname" placeholder="Your Name"
																	type="text" required=""></label> <label class="half">Last
																	Name<input name="lname" id="lname"
																	placeholder="Last Name" type="text" required="">
																</label>
																<div id="namemessage" style="color: #FF0000;"></div>
																<br> <label class="half">Gender<select
																	name="gender" id="gender">
																		<option value="1">Male</option>
																		<option value="2">Female</option>
																</select></label> <label class="half">Speciality Type <select
																	name="speciality" id="speciality" required="">
																		<option value="">Choose Speciality</option>

																		<option value="Allergy and immunology">
																			Allergy and immunology</option>
																		<option value="Anesthesiology">
																			Anesthesiology</option>
																		<option value="Cardiology (Disease)">
																			Cardiology (Disease)</option>
																		<option value="Cardiology (Interventional)">
																			Cardiology (Interventional)</option>
																		<option value="Child and Adolescent Psychiatry">
																			Child and Adolescent Psychiatry</option>
																		<option value="Chiropractic">Chiropractic</option>
																		<option value="Clinical Cardiac Electrophysiology">
																			Clinical Cardiac Electrophysiology</option>
																		<option value="Colon and Rectal Surgery">
																			Colon and Rectal Surgery</option>
																		<option value="Diagnostic Radiology">
																			Diagnostic Radiology</option>
																		<option value="Dermatology">Dermatology</option>
																		<option value="Emergency Medicine">Emergency
																			Medicine</option>
																		<option value="Endocrinology">Endocrinology</option>
																		<option value="Facial Plastic Surgery">
																			Facial Plastic Surgery</option>
																		<option value="Family Medicine">Family
																			Medicine</option>
																		<option value="Family Medicine">Family
																			Medicine</option>
																		<option value="Gastroenterology">
																			Gastroenterology</option>
																		<option value="General Practice">General
																			Practice</option>
																		<option value="General Surgery">General
																			Surgery</option>
																		<option value="Geriatric Medicine">Geriatric
																			Medicine</option>
																		<option value="Hematology">Hematology</option>
																		<option value="Hepatology">Hepatology</option>
																		<option value="Hospitalist">Hospitalist</option>
																		<option value="Infectious Disease">
																			Infectious Disease</option>
																		<option value="Internal Medicine">Internal
																			Medicine</option>
																		<option value="Medical Genetics">Medical
																			Genetics</option>
																		<option value="Naturopathy">Naturopathy</option>
																		<option value="Nephrology">Nephrology</option>
																		<option value="Neurology">Neurology</option>
																		<option value="Neurosurgeon">Neurosurgeon</option>
																		<option value="Nuclear Medicine">Nuclear
																			Medicine</option>
																		<option value="Nutritionist">Nutritionist</option>
																		<option value="Obstetrics / Gynecology (OBGYN)">
																			Obstetrics / Gynecology (OBGYN)</option>
																		<option value="Occupational Medicine">
																			Occupational Medicine</option>
																		<option value="Ophthalmology">Ophthalmology</option>
																		<option value="Optometry">Optometry</option>
																		<option value="Oncology">Oncology</option>
																		<option value="Orthopedic Surgery">
																			Orthopedic Surgery</option>
																		<option value="Osteopathic Medicine">
																			Osteopathic Medicine</option>
																		<option value="Osteopathic Medicine">
																			Osteopathic Medicine</option>
																		<option value="Otolaryngology / ENT">
																			Otolaryngology / ENT</option>
																		<option value="Pain Medicine">Pain Medicine</option>
																		<option value="Pathology (Anatomic/Clinical)">
																			Pathology (Anatomic/Clinical)</option>
																		<option value="Pediatrics">Pediatrics</option>
																		<option value="Physical Medicine and Rehabilitation">
																			Physical Medicine and Rehabilitation</option>
																		<option value="Plastic and Reconstructive Surgery">
																			Plastic and Reconstructive Surgery</option>
																		<option value="Podiatry">Podiatry</option>
																		<option value="Primary Care">Primary Care</option>
																		<option value="Psychiatry">Psychiatry</option>
																		<option value="Psychology">Psychology</option>
																		<option value="Pulmonary Disease">Pulmonary
																			Disease</option>
																		<option value="Radiology">Radiology</option>
																		<option value="Rheumatology">Rheumatology</option>
																		<option value="Thoracic Surgery">Thoracic
																			Surgery</option>
																		<option value="Transplant Surgery">
																			Transplant Surgery</option>




																</select></label> <label>Credentials<input name="credentials"
																	id="credentials"
																	placeholder="medical education, residency, fellowship, board certification"
																	type="text" required=""></label>
																<div id="dgmessage" style="color: #FF0000;"></div>
																<br> <label>Language1 <select
																	name="langpreffered" id="langpreffered" required="">
																		<option value="">Choose a Language other than
																			English</option>

																		<option value="Punjabi">Punjabi</option>
																		<option value="Marathi">Marathi</option>
																		<option value="Tamil">Tamil</option>
																		<option value="Telugu">Telugu</option>
																		<option value="Malayalam">Malayalam</option>
																		<option value="Kannada">Kannada</option>
																		<option value="Gujarati">Gujarati</option>
																		<option value="Spanish">Spanish</option>
																		<option value="Afrikanns">Afrikanns</option>
																		<option value="Albanian">Albanian</option>
																		<option value="Arabic">Arabic</option>
																		<option value="Armenian">Armenian</option>
																		<option value="Basque">Basque</option>
																		<option value="Bengali">Bengali</option>
																		<option value="Bulgarian">Bulgarian</option>
																		<option value="Catalan">Catalan</option>
																		<option value="Cambodian">Cambodian</option>
																		<option value="Chinese (Mandarin)">Chinese
																			(Mandarin)</option>
																		<option value="Croation">Croation</option>
																		<option value="Czech">Czech</option>
																		<option value="Danish">Danish</option>
																		<option value="Dutch">Dutch</option>
																		<option value="Estonian">Estonian</option>
																		<option value="Fiji">Fiji</option>
																		<option value="Finnish">Finnish</option>
																		<option value="French">French</option>
																		<option value="Georgian">Georgian</option>
																		<option value="German">German</option>
																		<option value="Greek">Greek</option>
																		<option value="Gujarati">Gujarati</option>
																		<option value="Hebrew">Hebrew</option>
																		<option value="Hindi">Hindi</option>
																		<option value="Hungarian">Hungarian</option>
																		<option value="Icelandic">Icelandic</option>
																		<option value="Indonesian">Indonesian</option>
																		<option value="Irish">Irish</option>
																		<option value="Italian">Italian</option>
																		<option value="Japanese">Japanese</option>
																		<option value="Javanese">Javanese</option>
																		<option value="Korean">Korean</option>
																		<option value="Latin">Latin</option>
																		<option value="Latvian">Latvian</option>
																		<option value="Lithuanian">Lithuanian</option>
																		<option value="Macedonian">Macedonian</option>

																</select></label> <label>Language2 <select name="langpreffered2"
																	id="langpreffered2">
																		<option value="">Choose a Language other than
																			English</option>
																		<option value="Punjabi">Punjabi</option>
																		<option value="Marathi">Marathi</option>
																		<option value="Tamil">Tamil</option>
																		<option value="Telugu">Telugu</option>
																		<option value="Malayalam">Malayalam</option>
																		<option value="Kannada">Kannada</option>
																		<option value="Gujarati">Gujarati</option>
																		<option value="Spanish">Spanish</option>
																		<option value="Afrikanns">Afrikanns</option>
																		<option value="Albanian">Albanian</option>
																		<option value="Arabic">Arabic</option>
																		<option value="Armenian">Armenian</option>
																		<option value="Basque">Basque</option>
																		<option value="Bengali">Bengali</option>
																		<option value="Bulgarian">Bulgarian</option>
																		<option value="Catalan">Catalan</option>
																		<option value="Cambodian">Cambodian</option>
																		<option value="Chinese (Mandarin)">Chinese
																			(Mandarin)</option>
																		<option value="Croation">Croation</option>
																		<option value="Czech">Czech</option>
																		<option value="Danish">Danish</option>
																		<option value="Dutch">Dutch</option>
																		<option value="Estonian">Estonian</option>
																		<option value="Fiji">Fiji</option>
																		<option value="Finnish">Finnish</option>
																		<option value="French">French</option>
																		<option value="Georgian">Georgian</option>
																		<option value="German">German</option>
																		<option value="Greek">Greek</option>
																		<option value="Gujarati">Gujarati</option>
																		<option value="Hebrew">Hebrew</option>
																		<option value="Hindi">Hindi</option>
																		<option value="Hungarian">Hungarian</option>
																		<option value="Icelandic">Icelandic</option>
																		<option value="Indonesian">Indonesian</option>
																		<option value="Irish">Irish</option>
																		<option value="Italian">Italian</option>
																		<option value="Japanese">Japanese</option>
																		<option value="Javanese">Javanese</option>
																		<option value="Korean">Korean</option>
																		<option value="Latin">Latin</option>
																		<option value="Latvian">Latvian</option>
																		<option value="Lithuanian">Lithuanian</option>
																		<option value="Macedonian">Macedonian</option>

																</select></label>

																<div id="lmessage" style="color: #FF0000;"></div>
																<br> <label class="half">Email ID/User Name<input
																	name="email" id="email"
																	placeholder="Enter Your Valid Email" type="email"
																	required=""></label> <label class="half">Password<input
																	name="password" id="password" placeholder="Password"
																	type="password" required="">
																</label> <label class="half">Contact Number<input
																	name="cnumber" id="cnumber"
																	placeholder="Primary numbers to receive calls from patience"
																	type="number"></label> <label class="half">Alternate
																	Contact Number<input name="acnumber" id="acnumber"
																	placeholder="Secondary number in case primary is not reachable"
																	type="number">
																</label> <label class="half">Upload Profile Image<input
																	name="profileimage" id="profileimage"
																	placeholder="Professional high definition picture displayed to the patients"
																	type="file"></label> <label class="half">Upload
																	a copy of valid Medical Licenses<input
																	name="lisenseimage" id="lisenseimage"
																	placeholder="Upload a copy of valid Medical Licenses"
																	type="file">
																</label>

																<div id="upmessage" style="color: #FF0000;"></div>
																<br>
																<h2>Education and Trainning</h2>

																<label>Medical School<input name="medicalschool"
																	id="medicalschool" placeholder="Name of Medical school"></label>
																<div id="spmessage" style="color: #FF0000;"></div>
																<br> <label>Internship<input
																	name="internship" id="internship"
																	placeholder="Name of the hospital"></label>
																<div id="edumessage" style="color: #FF0000;"></div>
																<br> <label>Residency<input
																	name="residency" id="residency"
																	placeholder="Name of the hospital"></label> <label>Fellowship<input
																	name="fellowship" id="fellowship"
																	placeholder="Name of the hospital"></label>

																<!-- <h2>Certificate and Lisences</h2>

																<label class="half">Certification Title 1<input
																	name="lisenses1" id="lisenses1"
																	placeholder="Title of the certification" type="text"></label>
																<label class="half">The expiration dates of
																	license<input name="expdate1" id="expdate1"
																	placeholder="MM/DD/YYYY" type="text"
																	class="hasDatepicker">
																</label> <label class="half">Certification Title 2<input
																	name="lisenses2" id="lisenses2"
																	placeholder="Title of the certification" type="text"></label>
																<label class="half">The expiration dates of
																	license<input name="expdate2" id="expdate2"
																	placeholder="MM/DD/YYYY" type="text"
																	class="hasDatepicker">
																</label> <label class="half">Certification Title 3<input
																	name="lisenses3" id="lisenses3"
																	placeholder="Title of the certification" type="text"></label>
																<label class="half">The expiration dates of
																	license<input name="expdate3" id="expdate3"
																	placeholder="MM/DD/YYYY" type="text"
																	class="hasDatepicker">
																</label> <label class="half">Certification Title 4<input
																	name="lisenses4" id="lisenses4"
																	placeholder="Title of the certification" type="text"></label>
																<label class="half">The expiration dates of
																	license<input name="expdate4" id="expdate4"
																	placeholder="MM/DD/YYYY" type="text"
																	class="hasDatepicker">
																</label> <label class="half">Years of experience<select
																	name="exp" id="exp">
																		<option value="1">1</option>
																		<option value="2">2</option>
																		<option value="3">3</option>
																		<option value="4">4</option>
																		<option value="5">5</option>
																		<option value="6">6</option>
																		<option value="7">7</option>
																		<option value="8">8</option>
																		<option value="9">9</option>
																		<option value="10">10</option>
																		<option value="11">11</option>
																		<option value="12">12</option>
																		<option value="13">13</option>
																		<option value="14">14</option>
																		<option value="15">15</option>
																		<option value="16">16</option>
																		<option value="17">17</option>
																		<option value="18">18</option>
																		<option value="19">19</option>
																		<option value="20">20</option>
																		<option value="21">21</option>
																		<option value="22">22</option>
																		<option value="23">23</option>
																		<option value="24">24</option>
																		<option value="25">25</option>
																		<option value="26">26</option>
																		<option value="27">27</option>
																		<option value="28">28</option>
																		<option value="29">29</option>
																		<option value="30">30</option>
																		<option value="31">31</option>
																		<option value="32">32</option>
																		<option value="33">33</option>
																		<option value="34">34</option>
																		<option value="35">35</option>
																		<option value="36">36</option>
																		<option value="37">37</option>
																		<option value="38">38</option>
																		<option value="39">39</option>
																		<option value="40">40</option>
																		<option value="41">41</option>
																		<option value="42">42</option>
																		<option value="43">43</option>
																		<option value="44">44</option>
																		<option value="45">45</option>
																		<option value="46">46</option>
																		<option value="47">47</option>
																		<option value="48">48</option>
																		<option value="49">49</option>
																		<option value="50">50</option>
																</select></label> <label class="half">National Provider
																	Identifier<input name="nationalPidentifier"
																	id="nationalPidentifier"
																	placeholder="National Provider Identifier" type="text">
																</label> <label class="half">Awards, Honors<input
																	name="awards" id="awards"
																	placeholder="Name of the award/recognition" type="text"></label>
																<label class="half">Recognition<input
																	name="recognition" id="recognition"
																	placeholder="MM/DD/YYYY" type="text"
																	class="hasDatepicker"></label> <label>Professional
																	Statement<textarea name="aboutme" id="aboutme"
																		cols="35" rows="3"
																		placeholder="Professional background covering the reason why I chose medicine and this specialization, practices worked at, achievements"></textarea>
																</label> <label>Publications and Presentations<textarea
																		name="publications" id="publications" cols="35"
																		rows="3" placeholder="doctors to  provide hyperlink"></textarea></label>-->


																<button class="btn submit-btn" name="submit"
																	onclick="return loadDoctorReg();">Submit</button>
															</form>
														</div>


													</div>
												</div>


											</div>
										</div>
									</div>
								</div>

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
