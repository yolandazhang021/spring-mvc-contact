<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="./header.jsp" />
</head>
<body>
	<div class="container">
		<c:if test="${not empty message}">
			<div class="alert alert-${css}">${message}</div>
		</c:if>
		<table class="table table-striped">
			<thead>
				<tr>
					<th>ID</th>
					<th>Name</th>
					<th>Gender</th>
					<th>Phone No</th>
					<th>Address</th>
					<th>Create By</th>
					<th>Create Date</th>
					<th>Update By</th>
					<th>Update Date</th>
					<th>Operation</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="contact" items="${contacts}">
					<tr>
						<td>${contact.id}</td>
						<td>${contact.name}</td>
						<td>${contact.gender}</td>
						<td>${contact.phoneNo}</td>
						<td>${contact.address}</td>
						<td>${contact.createdBy}</td>
						<td>${contact.createdDate}</td>
						<td>${contact.updateBy}</td>
						<td>${contact.updateDate}</td>
						<td><spring:url value="/delete/${contact.id}" var="deleteUrl"></spring:url>
						    <spring:url value="/detail/${contact.id}" var="detailUrl"></spring:url>
							<a href="${deleteUrl}" class="btn btn-info">Delete</a>
							<a href="${detailUrl}" class="btn btn-info">Detail</a>
							</td>
					</tr>

				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>