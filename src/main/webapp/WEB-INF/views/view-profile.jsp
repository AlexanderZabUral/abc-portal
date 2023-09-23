<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ page isELIgnored = "false" %>
<!DOCTYPE html>
<html>
<head>
<%@ include file="../components/header.jsp" %>
<link href="css/view-profile.css" rel="stylesheet" />
<link>
</head>
<body>
	<div class="root">
      <%@ include file="../components/navbar.jsp" %>

	<main>
        <section id="profile-user">
          <div class="container">
            <div class="d-flex mt-5">
              <!-- profile -->
              <main class="me-3 main-profile">
                <div class="profile">
                  <div class="banner">
                    <img src="${view.banner}" alt="Banner" />
                  </div>
                  <div class="p-4 pt-5 position-relative">
                    <div class="profile-picture position-absolute">
                      <img src="${view.picture}" alt="User Profile" />
                    </div>
                    <div class="d-flex justify-content-between">
                      <h3 class="name">${view.first_name} ${view.last_name}</h3>
                    </div>
                    <p class="address m-0 mb-1">${view.country}, ${view.city}</p>
                    <c:if test="${view.getJob() != null}">
                      <p class="company"><i class="fa-solid fa-building"></i> ${view.getJob().getCompany_name()}</p>
                    </c:if>
                    <div class="d-flex">
                      <button class="btn btn-primary me-3">Follow ${view.first_name}</button>
                      <button class="btn btn-outline-dark">More</button>
                    </div>
                  </div>
                </div>

                <ul class="navigation d-flex mt-3 list-unstyled fw-semibold">
                  <li class="nav-profile">About</li>
                  <li class="nav-profile">Jobs</li>
                  <li class="nav-profile">Posts</li>
                  <li class="nav-profile">People</li>
                </ul>

                <!-- About -->
                
                  <section class="profile-section">
                    <div class="d-flex justify-content-between">
                      <h5>About</h5>
                    </div>
                    <p class="mt-3">${view.about}</p>
                    
                    <c:if test="${view.about == null}">
                      <p class="mt-3 text-secondary">No about available.</p>
                    </c:if>
                  </section>
               
                
                <!-- Job -->
                <c:if test="${view.getJob() != null}">
                  <section class="profile-section">
	                <div class="d-flex justify-content-between">
	                  <h5>Job</h5>
	                </div>
	                <div class="d-flex mt-3">
	                  <div class="logo me-3">
	                  	<img src="${view.getJob().getCompany_image()}" alt="${view.getJob().getCompany_name()}" />
	                  </div>
	                  <div class="detail">
                        <h5 class="fw-semibold fs-6">${view.getJob().getJob_name()}</h5>
                        <h5 class="text-secondary fs-6">${view.getJob().getCompany_name()}</h5>
                      </div>
	                </div>
	              </section>
                </c:if>
                
              </main>
              
              <!-- aside -->
              <aside class="d-none d-md-flex flex-column">
                <%@ include file="../components/people-you-may-know.jsp" %>
              </aside>
            </div>
          </div>
        </section>
      </main>

      <%@ include file="../components/footer.jsp" %>
   	</div>
</body>
</html>