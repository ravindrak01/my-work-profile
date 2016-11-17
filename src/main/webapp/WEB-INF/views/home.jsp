<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ page isELIgnored="false"%>
<title>${siteName}: ${profileDetails.profileName}</title>
<spring:url value="/resources/js/jquery-3.1.1.min.js" var="jqueryJs" />
<spring:url value="/resources/jquery-ui-1.12.1/jquery-ui.min.js"
	var="jqueryUIJs" />
<spring:url
	value="/resources/images/${profileDetails.profileId}/profilePic.jpg"
	var="profilePicSrc" />
<spring:url value="/resources/css/styles.css" var="stylesCss" />
<spring:url value="/resources/jquery-ui-1.12.1/jquery-ui.css"
	var="jqueryCSS" />
<spring:url value="/resources/css/headerStyles.css"
	var="headerCSS" />
<script src="${jqueryJs}"></script>
<script src="${jqueryUIJs}"></script>
<link rel="stylesheet" href="${stylesCss}">
<link rel="stylesheet" href="${jqueryCSS}">
<link rel="stylesheet" href="${headerCSS}">

<link href='http://fonts.googleapis.com/css?family=Raleway:400,600,900' rel='stylesheet' type='text/css'>
<link href="//netdna.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
  

<script type="text/javascript">
	$(document)
			.ready(
					function() {
						$("#headerCont").addClass("header-cont");
						$("#header").addClass("header");
						$("#profilePic")
								.append(
										"<img id='theProfilePic' src='${profilePicSrc}' height='180px' width='180px'/>");
						$("#profilePic").addClass("profile-pic");
						$("#profileName").addClass("profileName");
						$("#profileTitle").addClass("profileTitle");
						$("#profileAddress").addClass("profileAddress");
						$("#profileAddress").addClass("profileAddress");
						$("#profileAddress")
								.wrap(
										"<a target='_blank' href='http://maps.google.com/?q=${profileDetails.addressLine1}'/>");
						$("#profilePic").click(function() {
							$("#bigpic").dialog({
								resizable : false,
								height : "auto",
								width : "auto",
								modal : true,
								title : "Profile Picture"
							});
						});

						$("#summary").addClass("summary");
						$("#summary")
								.append("${profileDetails.profileSummary}");
						$("#summary").animate({
							opacity : 1,
							left : "-=100",
						}, 1000, function() {
							// Animation complete.
						});
					});
</script>



</head>
<body>
	<div id="parent">
		<div id="profileName">${profileDetails.firstName}&nbsp;${profileDetails.lastName}
			<div id="profileTitle">${profileDetails.jobTitle}</div>
			<div id="profileAddress">${profileDetails.addressLine1}&nbsp;${profileDetails.city}&nbsp;${profileDetails.stateCode}&nbsp;${profileDetails.zip}</div>
		</div>


		<div id="headerCont">
			<div id="header">
				
					<header> 
					<nav id="nav" class="ry">
						<ul id="main-menu">
							<li><a href="#"><i class="fa fa-home"></i> Home</a></li>
							<li><a href="#"><i class="fa fa-user"></i> Experience <i
									class="fa fa-caret-down"></i></a>
								<ul class="submenu">
									<li><a href="#0">Current</a></li>
									<li><a href="#0">Infosys</a></li>
									<li><a href="#0">Bank of America<i class="fa fa-caret-right"></i></a></li>
								</ul>
							</li>
							<li>
								<a href="#"><i class="fa fa-briefcase"></i>Achievements<i
									class="fa fa-caret-down"></i></a>
								<ul class="submenu">
									<li>
										<a href="#0">Awards</a>
										<ul class="submenu">
								            <li><a href="#0">MVP 2011</a></li>
								            <li><a href="#0">BofA Spot 2010</a></li>
								            <li><a href="#0">BofA Spot 2011</a></li>
								            <li><a href="#0">BofA Insta 2015</a></li>
          								</ul>
									</li>
									<li><a href="#0">Projects</a>
										<ul class="submenu">
								            <li><a href="#0">Card Solutions</a></li>
								            <li><a href="#0">Forms Engine</a></li>
								            <li><a href="#0">ABC</a></li>
								            <li><a href="#0">XYZ</a></li>
          								</ul>
									</li>
									<li><a href="#0">Tools</a>
											<ul class="submenu">
								            <li><a href="#0">MVP 2011</a></li>
								            <li><a href="#0">BofA Spot 2010</a></li>
								            <li><a href="#0">BofA Spot 2011</a></li>
								            <li><a href="#0">BofA Insta 2015</a></li>
          								</ul>
									
									</li>
								</ul>
							</li>
							<li>
								<a href="#"><i class="fa fa-comment"></i> Contact Us</a></li>
						</ul>
					</nav>
				</header>
				<div id="profilePic"></div>
			</div>
			
			
			
			
		</div>

		<div id="bigpic" class="myImage">
			<img src="${profilePicSrc}" alt="myimage" />
		</div>

		<div id="summary"></div>

	</div>
	
	<form action="<c:url value='logout'/>" method="post">
		<div id="logout"><input class="logoutbutton" type="submit" value="Log out" /></div>
	</form>
</body>
</html>