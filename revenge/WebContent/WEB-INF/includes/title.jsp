<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<div id="topnav">
<div align="center">
  <table width="100%" border="0" id="top_nav_table">
    <tr>
      <td class="top_button" onclick="window.document.location='<%
	  if(hasUser)
	  {
		out.print("index.jsp");  
	  }
	  else
	  {
		  out.print("index.jsp"); 
	  }
	  %>';" onMouseOver="highlight(this)" onMouseOut="unhighlight(this)"><!-- <img height="60em" src="img/tigress-gray.png" />-->Home</td>
      <td class="top_button" onclick="window.document.location='about.jsp';" onMouseOver="highlight(this)" onMouseOut="unhighlight(this)">
      About
        <ul onclick="event.stopPropagation();">
		<li onclick="window.document.location='http://tigress.cs.arizona.edu/';">
		Tigress
		</li>
		<li onclick="window.document.location='contact.jsp';">
		Contact
		</li>
		</ul>
      </td>
      <%
      if(hasUser)
      {
      %>
      <td class="top_button" onclick="window.document.location='studentInfo.jsp';" onMouseOver="highlight(this)" onMouseOut="unhighlight(this)">
      Challenges
        <ul onclick="event.stopPropagation();">
        <li onclick="window.document.location='studentInfo.jsp;'">
		Information
		</li>
		<li onclick="window.document.location='myChallenges.jsp';">
		View Challenges
		</li>
		<li onclick="window.document.location='dataUploads.jsp';">
		Data Collection Upload Status
		</li>
		</ul>
      </td>
      <%
      }
      else
      {
      %>
      <td class="top_button" onclick="window.document.location='studentInfo.jsp';" onMouseOver="highlight(this)" onMouseOut="unhighlight(this)">
      Challenges
        <ul onclick="event.stopPropagation();">
		<li onclick="window.document.location='studentInfo.jsp'">
		Information
		</li>
		<li class="greyed">
		View Challenges
		</li>
		<li class="greyed">
		Data Collection Upload Status
		</li>
		</ul>
      </td>
      <%
      }
      %>
	   <%
      if(hasUser && (myUser.getAttribute("role").equals("admin")))
      {
      %>
      <td class="top_button" onclick="window.document.location='informationInstructor.jsp';" onMouseOver="highlight(this)" onMouseOut="unhighlight(this)">
      For Instructors
      <ul onclick="event.stopPropagation();">
      
      	<li onclick="window.document.location='informationInstructor.jsp';">
		Information
		</li>
      	
      	<li onclick="window.document.location='addStudentsCSV.jsp';">Add Students</li>
      	
      	<li onclick="window.document.location='addStudents.jsp';">Add Individual Students</li>
      
      	<li onclick="window.document.location='manageStudents.jsp';">Manage Students</li>
      	
      	<li onclick="window.document.location='studentPasswords.jsp';">Get Student Passwords</li>
		
		<li onclick="window.document.location='quickCreate.jsp';">Create Assignment</li>
		
		<li onclick="window.document.location='adminAssignments.jsp';">
		View Assignments
		</li>
		
		<li onclick="window.document.location='makeNew.jsp';">Create Challenge</li>
		
		<li onclick="window.document.location='adminChallenges.jsp';">View Challenges</li>
		
		
		</ul>
      </td>
      <%
      }
      else
      {
      %>
      
      <%
      }
      %>
      <td class="top_button" onclick="window.document.location='<%
	  if(hasUser)
	  {
		  out.print("logoutSubmit.jsp");
	  }
	  else
	  {
		  out.print("loginUser.jsp");
	  }
	  %>';" onMouseOver="highlight(this)" onMouseOut="unhighlight(this)"><%
	  if(hasUser)
	  {
		  out.print("Logout");
	  }
	  else
	  {
		  out.print("Login");
	  }
	  %></td>
	  <td class="top_button" onclick="window.document.location='./ctf/RevEngE_CTF_splash.html';" onMouseOver="highlight(this)" onMouseOut="unhighlight(this)">
      RevEngE CTF
      </td>
    </tr>
  </table>
  </div>
</div>
