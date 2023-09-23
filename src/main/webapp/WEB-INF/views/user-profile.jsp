<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored = "false" %>
<!DOCTYPE html>
<html>
<head>
<%@ include file="../components/header.jsp" %>
<link href="css/user-profile.css" rel="stylesheet" />
<link>
</head>
<body>
	<div class="root">
      <%@ include file="../components/navbar.jsp" %>

      <main>
        <section id="user-profile">
          <div class="container">
            <div class="d-flex mt-5">
              <!-- profile -->
              <main class="me-3 main-profile">
                <div class="profile">
                  <div class="banner">
                    <img src="${profile.banner}" alt="Banner" />
                  </div>
                  <div class="p-4 pt-5 position-relative">
                    <div class="profile-picture position-absolute">
                      <a href="change-profile-picture">
                        <img src="${profile.picture}" alt="User Profile" />
                      </a>
                    </div>
                    <div class="d-flex justify-content-between">
                      <h3 class="name">${profile.first_name} ${profile.last_name}</h3>
                      <!-- Edit -->
                      <div class="d-flex flex-column">
                        <a class="btn btn-primary" href="edit-profile">Edit Profile</a>
                      </div>
                    </div>
                    <p class="address m-0 mb-1">${profile.country}, ${profile.city}</p>
                    
                    <c:if test="${profile.getJob() != null}">
                      <p class="company"><i class="fa-solid fa-building"></i> ${profile.getJob().getCompany_name()}</p>
                    </c:if>
                    
                    <div class="d-flex">
                      <div class="dropdown">
                        <button class="btn btn-primary dropdown-toggle me-3" type="button" data-bs-toggle="dropdown" aria-expanded="false">Add profile section</button>
                        <ul class="dropdown-menu">
                          <li><a class="dropdown-item" href="edit-profile">About</a></li>
                          <li><a class="dropdown-item" href="jobs">Jobs</a></li>
                          <li><a class="dropdown-item" href="post-thread">Posts</a></li>
                          <li><a class="dropdown-item" href="">People</a></li>
                        </ul>
                      </div>
                      <div class="dropdown">
                        <button class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">More</button>
                        <ul class="dropdown-menu">
                          <li><a class="dropdown-item" href="edit-profile">Edit Profile</a></li>
                          <li><a class="dropdown-item" href="change-password">Change Password</a></li>
                          <li><a class="dropdown-item" href="change-banner">Change Banner</a></li>
                        </ul>
                      </div>
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
                <c:if test="${profile.about != null}">
                  <section class="profile-section">
                    <div class="d-flex justify-content-between">
                      <h5>About</h5>
                      <a href="edit-profile" class="text-decoration-none">
                        <button class="btn btn-outline-secondary">Edit About</button>
                      </a>
                    </div>
                    <p class="mt-3">${profile.about}</p>
                  </section>
                </c:if>
                
                <!-- Job -->
                <c:if test="${profile.getJob() != null}">
                  <section class="profile-section">
	                <div class="d-flex justify-content-between">
	                  <h5>Job</h5>
	                  <a href="my-job" class="text-decoration-none">
	                    <button class="btn btn-outline-secondary">Job Detail</button>
	                  </a>
	                </div>
	                <div class="d-flex mt-3">
	                  <div class="logo me-3">
	                  	<img src="${profile.getJob().getCompany_image()}" alt="${profile.getJob().getCompany_name()}" />
	                  </div>
	                  <div class="detail">
                        <h5 class="fw-semibold fs-6">${profile.getJob().getJob_name()}</h5>
                        <h5 class="text-secondary fs-6">${profile.getJob().getCompany_name()}</h5>
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