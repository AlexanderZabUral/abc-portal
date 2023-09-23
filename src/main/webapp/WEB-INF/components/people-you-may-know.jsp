<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ page isELIgnored = "false" %>


<div class="people d-flex flex-column p-3">
  <h5 class="mb-3">People you may know</h5>
  <c:forEach items="${listPeople}" var="people">
	  <div class="people-profile d-flex mb-3" onclick="location.href = 'view-profile?id=${people.id_profile}';">
	    <div class="image me-3">
	      <img src="${people.picture}" alt="people" />
	    </div>
	    <div class="detail">
	      <p>${people.first_name} ${people.last_name}</p>
	      <p class="text-secondary">${people.country}, ${people.city}</p>
	      
	      <c:if test="${people.getJob() != null}">
	        <p class="text-secondary"><i class="fa-solid fa-building"></i> ${people.getJob().getCompany_name()}</p>
	      </c:if>
	      
	    </div>
	  </div>
  </c:forEach>
</div>
