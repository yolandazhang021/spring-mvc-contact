<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<head>
<title>Spring MVC Form Handling Example</title>

<spring:url value="/resource/css/bootstrap.min.css"
	var="bootstrapCss" />
<link href="${bootstrapCss}" rel="stylesheet" />
</head>

<spring:url value="/displayAddForm" var="displayAddUrl"/>
<spring:url value="/listContact" var="listContact"/>

<nav class="navbar navbar-default" role="navigation">
    <div class="container-fluid">
    <div class="navbar-header">
        <a class="navbar-brand" href="#">Contact</a>
    </div>
    <div>
        <ul class="nav navbar-nav">
            <li><a href="${listContact}">List Contact</a></li>
            <li><a href="${displayAddUrl}">Add New Contact</a></li>
            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                    Help
                    <b class="caret"></b>
                </a>
                <ul class="dropdown-menu">
                    <li><a href="#">List</a></li>
                    <li><a href="#">Add New Contact</a></li>
                </ul>
            </li>
        </ul>
    </div>
    </div>
</nav>


