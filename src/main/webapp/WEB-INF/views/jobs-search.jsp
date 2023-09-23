<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>   
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ page isELIgnored = "false" %> 
<!DOCTYPE html>
<html>
<head>
<%@ include file="../components/header.jsp" %>
<link href="css/jobs.css" rel="stylesheet" />
</head>
<body>
<div class="root">
      <%@ include file="../components/navbar.jsp" %>
      
      <main class="pb-5">
        <div id="jobs" class="container d-flex flex-column flex-md-row">
          <!-- Sidebar -->
          <%@ include file="../components/job-sidebar.jsp" %>
          
          <!-- Content -->
          <div class="content">
          	<!-- Search jobs -->
            <div class="search-bar">
              <form action="jobs-search" method="get" class="d-flex">
                <input type="text" name="keyword" placeholder="Search jobs" />
                <button type="submit" class="btn btn-outline-secondary btn-search">
                  <i class="fa-solid fa-magnifying-glass"></i>
                </button>
              </form>
            </div>
            <!-- Job List -->
            <c:forEach items="${searchJob}" var="job">
            <div class="job-container mt-3">
              <div class="d-flex justify-content-between">
                <div class="wrapper d-flex flex-column flex-md-row align-items-center me-3">
                  <div class="wrapper d-flex">
                    <div class="logo me-3">
                      <img src="${job.getCompany_image()}" alt="${job.getCompany_name()}" />
                    </div>
                    <div class="detail">
                      <h5 class="fw-semibold fs-6">${job.getJob_name()}</h5>
                      <h5 class="text-secondary fs-6">${job.getCompany_name()}</h5>
                    </div>
                  </div>
                  <div class="d-flex ms-0 ms-md-3 mb-3">
                  	<a href="jobs-search?keyword=${job.getJob_level()}" class="text-decoration-none">
                  	  <button class="btn btn-outline-secondary me-3">${job.getJob_level()}</button>
                  	</a>
                    <a href="jobs-search?keyword=${job.getJob_time()}" class="text-decoration-none">
                      <button class="btn btn-outline-secondary">${job.getJob_time()}</button>
                  	</a>
                  </div>
                </div>
                
                <c:if test="${user.getJob() == null}">
	              <div class="wrapper mb-3">
	              	<a href="applyJob?id_job=${job.getId_job()}" class="text-decoration-none">
	              	  <button class="btn btn-primary">Apply Job</button>
	              	</a>
	              </div>
                </c:if>
                
              </div>

              <div class="Job-description mt-4">
                <p>${job.getJob_description()}</p>
              </div>
            </div>
            </c:forEach>
            
            <c:if test="${searchJob == null || searchJob.isEmpty()}">
              <div class="mt-4 text-center">
              	<h4 class="text-secondary">Jobs not found.</h4>
              </div>
            </c:if>
          </div>
        </div>
      </main>

      <footer>
        <section id="footer">
          <div class="container">
            <div class="footer-content d-flex flex-column flex-md-row">
              <div class="footer-brand me-5 pe-lg-5 mb-2">
                <h2 class="fw-semibold">ABC Jobs</h2>
              </div>
              <div class="footer-links d-flex justify-content-between flex-wrap">
                <ul class="links">
                  <span class="fw-semibold">General</span>
                  <li>Sign up</li>
                  <li>Help center</li>
                  <li>About</li>
                  <li>Developers</li>
                  <li>Careers</li>
                </ul>
                <ul class="links">
                  <span class="fw-semibold">Directories</span>
                  <li>Jobs</li>
                  <li>Articles</li>
                  <li>Companies</li>
                  <li>Topics</li>
                  <li>Featured</li>
                </ul>
                <ul class="links">
                  <span class="fw-semibold">Follow us</span>
                  <li>Twitter</li>
                  <li>Facebook</li>
                  <li>Instagram</li>
                  <li>Youtube</li>
                </ul>
                <ul class="links">
                  <span class="fw-semibold">Legal</span>
                  <li>Privacy policy</li>
                  <li>Terms of service</li>
                </ul>
              </div>
            </div>
            <p class="mt-2">© ABC Jobs 2022. All Rights Reserved</p>
          </div>
        </section>
      </footer>
	</div>

	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>