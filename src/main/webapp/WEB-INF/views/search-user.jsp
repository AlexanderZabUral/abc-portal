<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isELIgnored = "false" %>
<!DOCTYPE html>
<html>
<head>
<%@ include file="../components/header.jsp" %>
<link href="css/search-user.css" rel="stylesheet" />
<link>
</head>
<body>
	<div class="root">
      <%@ include file="../components/navbar.jsp" %>

      <main>
        <section id="search-users">
          <div class="container d-flex flex-column">
            <div class="heading mt-4">
              <h2 class="fw-semibold">Search User</h2>
            </div>
            
            <form:form action="search" method="get" modelAttribute="searchUser" class="search-user-form d-flex">
              <form:input path="keyword" type="text" id="search-user" placeholder="Search" />
              <button type="submit" class="btn btn-outline-secondary btn-search">
                <i class="fa-solid fa-magnifying-glass"></i>
              </button>
            </form:form>

            <!-- Search Result -->
            <div id="search-results" class="mt-5">
              <c:forEach items="${result}" var="r">
                <div class="result d-flex pb-3 pt-3" onclick="location.href = 'view-profile?id=${r.id_profile}';">
                  <div class="image me-3">
                    <img src="${r.picture}" alt="User Profile" />
                  </div>
                  <div class="detail">
                    <p class="name">${r.first_name} ${r.last_name}</p>
                    <p class="address text-secondary">${r.country}, ${r.city}</p>
                    
                    <c:if test="${r.getJob() != null}">
                      <p class="company text-secondary"><i class="fa-solid fa-building"></i> ${r.getJob().getCompany_name()}</p>
                    </c:if>
                    
                  </div>
                </div>
              </c:forEach>
            </div>
          </div>
        </section>
      </main>

      <%@ include file="../components/footer.jsp" %>
   	</div>
</body>
</html>