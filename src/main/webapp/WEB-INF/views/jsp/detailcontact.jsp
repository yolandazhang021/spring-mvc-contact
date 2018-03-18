<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="./header.jsp" />
</head>
<body>
	<div class="container">
		<table class="table table-striped">
			<thead>
				<tr>
					<th>Attibute</th>
					<th>Value</th>
				</tr>
			</thead>
			<tbody>
					<tr>
						<td>Name</td>
						<td>${contact.name}</td>
					</tr>
					
					<tr>
						<td>Gender</td>
						<td>${contact.gender}</td>
					</tr>
					
					<tr>
						<td>Address</td>
						<td>${contact.address}</td>
					</tr>
					
					<tr>
						<td>Phone NO</td>
						<td>${contact.phoneNo}</td>
					</tr>
					
					<tr>
						<td>Create By</td>
						<td>${contact.createdBy}</td>
					</tr>
					
					<tr>
						<td>Create Date</td>
						<td>${contact.createdDate}</td>
					</tr>
					
					<tr>
						<td>Update By</td>
						<td>${contact.updateBy}</td>
					</tr>
					
					<tr>
						<td>Update Date</td>
						<td>${contact.updateDate}</td>
					</tr>

			</tbody>
		</table>
	</div>
</body>
</html>