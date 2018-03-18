<%@ page session="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="en">

<jsp:include page="./header.jsp" />

<div class="container">

	<c:choose>
		<c:when test="${addIndicator}">
			<h1>Add Contact</h1>
		</c:when>
		<c:otherwise>
			<h1>Update Contact</h1>
		</c:otherwise>
	</c:choose>
	<br />

	<spring:url value="/addContact" var="userActionUrl" />

	<form:form class="form-horizontal" method="post"
		modelAttribute="contactForm" action="${userActionUrl}">

		<form:hidden path="id" />

		<spring:bind path="name">
			<div class="form-group ${status.error ? 'has-error' : ''}">
				<label class="col-sm-2 control-label">Name</label>
				<div class="col-sm-10">
					<form:input path="name" type="text" class="form-control " id="name"
						placeholder="Name" />
					<form:errors path="name" class="control-label" />
				</div>
			</div>
		</spring:bind>

		<spring:bind path="address">
			<div class="form-group ${status.error ? 'has-error' : ''}">
				<label class="col-sm-2 control-label">Address</label>
				<div class="col-sm-10">
					<form:textarea path="address" rows="5" class="form-control"
						id="address" placeholder="address" />
					<form:errors path="address" class="control-label" />
				</div>
			</div>
		</spring:bind>

		<spring:bind path="gender">
			<div class="form-group ${status.error ? 'has-error' : ''}">
				<label class="col-sm-2 control-label">Gender</label>
				<div class="col-sm-10">
					<label class="radio-inline"> <form:radiobutton
							path="gender" value="Male" /> Male
					</label> <label class="radio-inline"> <form:radiobutton
							path="gender" value="Female" /> Female
					</label> <br />
					<form:errors path="gender" class="control-label" />
				</div>
			</div>
		</spring:bind>

		<spring:bind path="phoneNo">
			<div class="form-group ${status.error ? 'has-error' : ''}">
				<label class="col-sm-2 control-label">Phone No</label>
				<div class="col-sm-10">
					<form:input path="phoneNo" type="text" class="form-control "
						id="phoneNo" placeholder="Phone No" />
					<form:errors path="phoneNo" class="control-label" />
				</div>
			</div>
		</spring:bind>

		<spring:bind path="createdBy">
			<div class="form-group ${status.error ? 'has-error' : ''}">
				<label class="col-sm-2 control-label">Create By</label>
				<div class="col-sm-10">
					<form:input path="createdBy" type="text" class="form-control "
						id="createdBy" placeholder="createdBy" />
					<form:errors path="createdBy" class="control-label" />
				</div>
			</div>
		</spring:bind>

		<spring:bind path="updateBy">
			<div class="form-group ${status.error ? 'has-error' : ''}">
				<label class="col-sm-2 control-label">Update By</label>
				<div class="col-sm-10">
					<form:input path="updateBy" type="text" class="form-control "
						id="updateBy" placeholder="UpdateBy" />
					<form:errors path="updateBy" class="control-label" />
				</div>
			</div>
		</spring:bind>

		<%-- 		<spring:bind path="framework">
			<div class="form-group ${status.error ? 'has-error' : ''}">
				<label class="col-sm-2 control-label">Web Frameworks</label>
				<div class="col-sm-10">
					<form:checkboxes path="framework" items="${frameworkList}"
						element="label class='checkbox-inline'" />
					<br />
					<form:errors path="framework" class="control-label" />
				</div>
			</div>
		</spring:bind> --%>

		<%-- 	<spring:bind path="country">
			<div class="form-group ${status.error ? 'has-error' : ''}">
				<label class="col-sm-2 control-label">Country</label>
				<div class="col-sm-5">
					<form:select path="country" class="form-control">
						<form:option value="NONE" label="--- Select ---" />
						<form:options items="${countryList}" />
					</form:select>
					<form:errors path="country" class="control-label" />
				</div>
				<div class="col-sm-5"></div>
			</div>
		</spring:bind> --%>

		<%-- 	<spring:bind path="skill">
			<div class="form-group ${status.error ? 'has-error' : ''}">
				<label class="col-sm-2 control-label">Java Skills</label>
				<div class="col-sm-5">
					<form:select path="skill" items="${javaSkillList}" multiple="true"
						size="5" class="form-control" />
					<form:errors path="skill" class="control-label" />
				</div>
				<div class="col-sm-5"></div>
			</div>
		</spring:bind> --%>

		<div class="form-group">
			<div class="col-sm-offset-2 col-sm-10">
				<c:choose>
					<c:when test="${addIndicator}">
						<button type="submit" class="btn-lg btn-primary pull-right">Add</button>
					</c:when>
					<c:otherwise>
						<button type="submit" class="btn-lg btn-primary pull-right">Update</button>
					</c:otherwise>
				</c:choose>
			</div>
		</div>
	</form:form>

</div>

</body>
</html>