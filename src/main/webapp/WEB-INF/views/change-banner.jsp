<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ page isELIgnored = "false" %>
<!DOCTYPE html>
<html>
<head>
<%@ include file="../components/header.jsp" %>
<link href="css/change-banner.css" rel="stylesheet" />
<link>
</head>
<body>
	<div class="root">
      <%@ include file="../components/navbar.jsp" %>

	  <main>
        <div class="container mt-3">
          <div class="row justify-content-center">
            <div class="change-banner col-11 col-md-8">
              <h5 class="text-center fw-semibold">Choose your banner by clicking the image</h5>
              <div class="row">
              	<c:forEach items="${listBanner}" var="banner">
	              	<div class="col-image col-3 col-md-4">
	                  <a href="changeBanner?banner=${banner}">
	                    <img src="images/banner/${banner}.jpg" alt="" class="img-thumbnail" />
	                  </a>
	                </div>
              	</c:forEach>
              </div>
            </div>
          </div>
        </div>
      </main>

      <%@ include file="../components/footer.jsp" %>
   	</div>
</body>
</html>