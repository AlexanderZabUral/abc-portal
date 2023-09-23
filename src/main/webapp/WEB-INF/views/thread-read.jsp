<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>   
<%@ page isELIgnored = "false" %> 
<!DOCTYPE html>
<html>
<head>
<%@ include file="../components/header.jsp" %>
<link href="css/threads.css" rel="stylesheet" />
</head>
<body>
	<div class="root">
      <%@ include file="../components/navbar.jsp" %>

      <main>
        <div class="mt-4 container d-flex flex-column flex-md-row">
          <!-- Sidebar -->
          <%@ include file="../components/thread-sidebar.jsp" %>

          <!-- Content -->
          <div class="content-read-thread">
            <!-- Breadcrumb -->
            <nav style="--bs-breadcrumb-divider: '>'" aria-label="breadcrumb">
              <ol class="breadcrumb">
                <li class="breadcrumb-item">
                  <a href="list-thread.html" class="text-decoration-none">Threads</a>
                </li>
                <li class="breadcrumb-item active" aria-current="page">Read thread</li>
              </ol>
            </nav>

            <!-- Read Thread -->

            <div class="read-thread mb-3 mt-3">
              <a href="view-profile?name=${thread.getProfile().getFirst_name()}&id=${thread.getProfile().getId_profile()}" class="user d-flex text-decoration-none text-dark">
                <img src="${thread.getProfile().getPicture()}" alt="User Profile" />
                <p>${thread.getProfile().getFirst_name()} ${thread.getProfile().getLast_name()}</p>
              </a>

              <div class="header mt-4">
                <h3 class="fw-semibold">${thread.getTitle()}</h3>
              </div>

              <div class="tags">
               	<a href="thread-search?keyword=${thread.getTags().getFirst_tag()}" class="text-decoration-none">
               	  <button class="btn btn-outline-secondary mt-2">${thread.getTags().getFirst_tag()}</button>
               	</a>
                <c:if test="${thread.getTags().getSecond_tag() != ''}">
                  <a href="thread-search?keyword=${thread.getTags().getSecond_tag()}" class="text-decoration-none">
                    <button class="btn btn-outline-secondary mt-2">${thread.getTags().getSecond_tag()}</button>
                  </a>
             	</c:if>
               </div>

              <div class="thread-content mt-3">
                <p>
                  ${thread.getContent()}
                </p>
              </div>
            </div>

            <!-- Comments -->
            <div class="comments">
              <div class="heading">
                <h4>Comments</h4>
              </div>
			  
			  <c:forEach items="${listComment}" var="comment">
			    <div class="comment mb-3">
                  <a href="view-profile?id=${comment.getProfile().getId_profile()}" class="user d-flex text-decoration-none text-dark">
                    <img src="${comment.getProfile().getPicture()}" alt="User Profile" />
                    <p>${comment.getProfile().getFirst_name()} ${comment.getProfile().getLast_name()}</p>
                  </a>
                  <p class="text-secondary mt-2 m-0 p-0">${comment.getComment()}</p>
              </div>
			  </c:forEach>
			   
			  <c:if test="${listComment.isEmpty()}">
			    <div class="no-comment">
                  <p class="text-secondary text-center">Be the first one to comment this post</p>
                </div>
			  </c:if>
              

              <!-- Write comment -->
              <form:form action="postComment" method="post" modelAttribute="threadComment" onsubmit="return checkValidation()">
              	
              	<input type="hidden" name="id" value="${thread.id_thread}" >
              	
                <div class="form-floating">
                  <form:textarea path="comment" class="form-control" id="comment"></form:textarea>
                  <label for="floatingTextarea">Comment</label>
                </div>
                <p class="error">Can't post blank comment</p>

                <button type="submit" class="btn btn-primary mt-3">Comment post</button>
              </form:form>
            </div>
          </div>
        </div>
      </main>

	<%@ include file="../components/footer.jsp" %>
	<script type="text/javascript" src="js/comment.js"></script>
    </div>
</body>
</html>