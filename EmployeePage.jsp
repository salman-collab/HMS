<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script type="text/javascript" src="static/EMPLOYEE/doctor.js"></script>
<link href="static/css/employee.css" rel="stylesheet" type="text/css" />
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

#AddDoctor {
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
													<b>DOCTOR LIST</b>
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

												<div id="doctor-list">
												<table class="table table-bordered" id="table-HMS">
														<thead>
															<tr>
																<th>Doctor Id</th>
																<th>Doctor Name</th>
																<th>Department</th>
																<th>Location</th>
																
															</tr>
														</thead>
														<tbody>
															<c:if test="${!empty docList}">
																<c:forEach items="${docList}" var="task" varStatus="loop">
																	<tr id="${task.doctorid}">
																	<td align="center">${task.doctorid}</td>
																	<td>${task.name}</td>
																	<td>${task.departmentId}</td>
																	<td>${task.location}</td>
																	
																	</tr>
																</c:forEach>
															</c:if>
														</tbody>
													</table>
												</div>


												<div id="AddDoctor">
													<div class="row">
														<div class="col-md-6 col-sm-8">
															<div class="form-group clearfix">
																<label for="name" class="control-label col-xs-5">Doctor Name</label>
																<div class="col-xs-7">
																	<input type="text" name="name" class="form-control doctorname" id="name"></input>
																	<input type="hidden" id="doctorid" name="doctorid">
																	<input type="hidden" id="nameHidden" name="nameHidden">
																</div>
															</div>
															<div class="form-group clearfix">
																<label for="location" class="control-label col-xs-5">Location Name</label>
																<div class="col-xs-7">
																 	<select id="location" class="form-control locationId" name="location">
								       
								   									 </select>
        														</div>
															</div>
															
															<div class="form-group clearfix">
																<label for="location" class="control-label col-xs-5">Department Name</label>
																<div class="col-xs-7">
																 	<select id="departmentId" class="form-control departmentId" name="departmentId">
								       
								   									 </select>
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
		</div>
	</div>
</body>
</html>
