<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %> 
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
  <head>
    <%@ include file="../components/header.jsp" %>
    <link href="css/thread-form.css" rel="stylesheet" />
  </head>
  <body>
    <div class="root">
      <%@ include file="../components/navbar.jsp" %>

      <main>
        <div class="container mt-5 mb-5">
          <form:form action="editThread" method="post" modelAttribute="editThread" id="form">
            <div class="row justify-content-center">
              <div class="col-lg-5 col-md-8">
                <div class="d-flex flex-column form-wrapper">
                  <div class="heading">
                    <h2>Edit Thread</h2>
                  </div>
                  
                  <form:hidden path="id_thread"/>
                  <form:hidden path="tags.id_thread_tag"/>

                  <!-- Title -->
                  <div class="form-group">
                    <label for="title">Thread Title</label>
                    <form:input path="title" type="text" name="title" placeholder="Title" class="form-control ${error}" />
                  </div>
                  <p class="error">${messageTitle}</p>

                  <!-- Content -->
                  <div class="form-group">
                    <label for="content">Thread Content</label>
                    <form:textarea path="content" type="text" name="content" placeholder="Content" class="form-control ${error}"></form:textarea>
                  </div>
                  <p class="error">${messageContent}</p>

                  <!-- First Tag -->
                  <div class="form-group">
                    <label for="tag1">First Tag</label>
                    <form:select path="tags.first_tag" name="tag1" class="form-select ${error}">
                      <option value="" disabled="disabled">Choose First Tag</option>
                      <option value="">No Tag</option>
                      <c:forEach items="${tags}" var="tag">
                        <option value="${tag.getFirst_tag()}" 
                        <c:if test="${tag.getFirst_tag().equals(editThread.getTags().getFirst_tag())}">selected</c:if>>
                        	${tag.getFirst_tag()}
                        </option>
                      </c:forEach>
                    </form:select>
                  </div>
                  <p class="error">${messageTag}</p>

                  <!-- Second Tag -->
                  <div class="form-group">
                    <label for="tag2">Second Tag</label>
                    <form:select path="tags.second_tag" name="tag2" class="form-select">
                      <option value="" disabled="disabled">Choose Second Tag</option>
                      <option value="">No Tag</option>
                      <c:forEach items="${tags}" var="tag">
                        <option value="${tag.getSecond_tag()}"
                        <c:if test="${tag.getSecond_tag().equals(editThread.getTags().getSecond_tag())}">selected</c:if>>
                        	${tag.getSecond_tag()}
                        </option>
                      </c:forEach>
                    </form:select>
                  </div>

                  <button type="submit" class="btn btn-primary mt-4">Submit</button>
                </div>
              </div>
            </div>
          </form:form>
        </div>
      </main>

      <%@ include file="../components/footer.jsp" %>
    </div>
  </body>
</html>
