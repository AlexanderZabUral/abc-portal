<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<div class="sidebar">
  <div class="header">ABC Jobs Community Portal</div>
  <ul>
    <li>
      <a href="admin-dashboard"> <i class="fa-solid fa-gauge-high"></i> Dashboard</a>
    </li>
    <li>
      <a href="<%= request.getContextPath() %>"> <i class="fa-solid fa-house"></i> Home</a>
    </li>
    <li>
      <a href="manage-job"> <i class="fa-solid fa-briefcase"></i> Manage Jobs</a>
    </li>
    <li>
      <a href="adminLogout"> <i class="fa-solid fa-right-from-bracket"></i> Logout</a>
    </li>
    
  </ul>
</div>