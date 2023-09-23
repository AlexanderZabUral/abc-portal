<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<%@ include file="../components/header.jsp" %>
<link href="css/home.css" rel="stylesheet" />
</head>
<body>
	<div class="root">
      <%@ include file="../components/navbar.jsp" %>

      <main>
        <!-- Hero Banner -->
        <section id="hero-banner">
          <div class="container pt-4 pt-lg-5">
            <div class="d-flex flex-column flex-md-row">
              <div class="hero-content me-0 me-lg-3">
                <div class="heading">
                  <h1>Find and become a professional with passion</h1>
                </div>
              </div>
              <div class="hero-image mt-5 mt-md-0 d-flex justify-content-center">
                <img src="images/hero/hero-illustration.png" alt="Hero Illustration" />
              </div>
            </div>
          </div>
        </section>

        <!-- Partners Logo -->
        <section id="partners" class="mt-5">
          <div class="container-fluid d-flex flex-wrap justify-content-center p-3">
            <div class="partner d-flex align-items-center me-3 p-2">
              <img src="images/Partners/aws.png" alt="Partner" />
            </div>
            <div class="partner d-flex align-items-center me-3 p-2">
              <img src="images/Partners/facebook.png" alt="Partner" />
            </div>
            <div class="partner d-flex align-items-center me-3 p-2">
              <img src="images/Partners/google.png" alt="Partner" />
            </div>
            <div class="partner d-flex align-items-center me-3 p-2">
              <img src="images/Partners/lithan.png" alt="Partner" />
            </div>
            <div class="partner d-flex align-items-center me-3 p-2">
              <img src="images/Partners/microsoft.png" alt="Partner" />
            </div>
            <div class="partner d-flex align-items-center me-3 p-2">
              <img src="images/Partners/samsung.png" alt="Partner" />
            </div>
          </div>
        </section>

        <!-- Topics -->
        <section id="topics" class="mt-5">
          <div class="container">
            <div class="heading">
              <h3>Topics you may interested in</h3>
            </div>
            <div class="d-flex flex-wrap mt-3">
              <div class="topic-tag me-3 mb-3">
                <span>Remote</span>
              </div>
              <div class="topic-tag me-3 mb-3">
                <span>Internship</span>
              </div>
              <div class="topic-tag me-3 mb-3">
                <span>Freelancer</span>
              </div>
              <div class="topic-tag me-3 mb-3">
                <span>Education</span>
              </div>
              <div class="topic-tag me-3 mb-3">
                <span>Full Time</span>
              </div>
              <div class="topic-tag me-3 mb-3">
                <span>Design</span>
              </div>
            </div>
          </div>
        </section>

        <!-- Featured Jobs -->
        <section id="featured-jobs" class="mt-5">
          <div class="container">
            <div class="heading">
              <h3>Featured Jobs</h3>
            </div>
            <div class="d-flex flex-wrap mt-3">
              <!-- Google -->
              <div class="job-container me-3 mb-3">
                <div class="d-flex">
                  <div class="wrapper d-flex align-items-center me-3">
                    <div class="logo me-3">
                      <img src="images/logo/google.png" alt="Google" />
                    </div>
                    <div class="detail">
                      <h5 class="fw-semibold fs-6">Web Developer</h5>
                      <h5 class="text-secondary fs-6">Google.com</h5>
                    </div>
                  </div>
                  <div class="wrapper d-flex align-items-center mb-3">
                  	<a href="jobs" class="text-decoration-none">
                  	  <button class="btn btn-outline-dark">Apply Job</button>
                  	</a>
                  </div>
                </div>
                <div class="d-flex mt-4">
                  <button class="btn btn-outline-secondary me-3">Internship</button>
                  <button class="btn btn-outline-secondary">Remote</button>
                </div>
              </div>
              <!-- Microsoft -->
              <div class="job-container me-3 mb-3">
                <div class="d-flex">
                  <div class="wrapper d-flex align-items-center me-3">
                    <div class="logo me-3">
                      <img src="images/logo/microsoft.png" alt="Microsoft" />
                    </div>
                    <div class="detail">
                      <h5 class="fw-semibold fs-6">App Developer</h5>
                      <h5 class="text-secondary fs-6">Microsoft.com</h5>
                    </div>
                  </div>
                  <div class="wrapper d-flex align-items-center mb-3">
                  	<a href="jobs" class="text-decoration-none">
                  	  <button class="btn btn-outline-dark">Apply Job</button>
                  	</a>
                  </div>
                </div>
                <div class="d-flex mt-4">
                  <button class="btn btn-outline-secondary me-3">Full Time</button>
                  <button class="btn btn-outline-secondary">Senior</button>
                </div>
              </div>
              <!-- Facebook -->
              <div class="job-container me-3 mb-3">
                <div class="d-flex">
                  <div class="wrapper d-flex align-items-center me-3">
                    <div class="logo me-3">
                      <img src="images/logo/facebook.png" alt="Facebook" />
                    </div>
                    <div class="detail">
                      <h5 class="fw-semibold fs-6">Web Developer</h5>
                      <h5 class="text-secondary fs-6">Facebook.com</h5>
                    </div>
                  </div>
                  <div class="wrapper d-flex align-items-center mb-3">
                  	<a href="jobs" class="text-decoration-none">
                  	  <button class="btn btn-outline-dark">Apply Job</button>
                  	</a>
                  </div>
                </div>
                <div class="d-flex mt-4">
                  <button class="btn btn-outline-secondary me-3">Internship</button>
                  <button class="btn btn-outline-secondary">Full Time</button>
                </div>
              </div>
            </div>
          </div>
        </section>
      </main>

	<%@ include file="../components/footer.jsp" %>
    </div>
</body>
</html>