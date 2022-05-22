<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<%@include file="./WEB-INF/includes/includes.jsp" %>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>RevEngE</title>

</head>

<body>
<%@include file="./WEB-INF/includes/mainPane.jsp" %>
<table id="inner_content">
	<tr>
    	<td colspan="3" class="no_bottom_padding">
    	<div align="center">
    	<table id="page_title_table_row">
    	<tr>
    	<td>
        <div align="center" id="inner_content_title">
        <%
        if(verbose)
        {
        	System.out.println("Got to hasUser conditional");
        }
		if(!hasUser)
		{
		%>
        Welcome to RevEngE, the Reverse Engineering Engine
        <%
		}
		else
		{
		%>
        Welcome back, <% out.print(displayName); %>!
        <%
		}
		%>
        </div>
        <div align="center" id="inner_content_slogan">
        Obfuscation Made Easy</div>
        </td>
        </tr>
        </table>
        </div>
        </td>
    </tr>
	<tr>
    	<td width="20%">
        <!--
        <table class="inner_content_table">
        <tr>
        <td>
        <table class="news_table">
        <tr class="title_general">
        <td colspan="3" align="center">
        About Tigress
        </td>
    	</tr>
        <tr>
        <td>
        <table class="news_item_table">
        <tr>
        <td>
        <p><a href="http://tigress.cs.arizona.edu/">Tigress</a> is a diversifying virtualizer/obfuscator for the C language that supports many novel defenses against both static and dynamic reverse engineering and de-virtualization attacks.</p><br />
        <p>In particular, Tigress protects against static de-virtualization by generating virtual instruction sets of arbitrary complexity and diversity, by producing interpreters with multiple types of instruction dispatch, and by inserting code for anti alias analysis. Tigress protects against dynamic de-virtualization by merging the real code with bogus functions, by inserting implicit flow, and by creating slowly-executing reenetrant interpreters. Tigress implements its own version of code packing through the use of runtime code generation. </p>
        </td>
        </tr>
        </table>
        </td>
        </tr>
        </table>
        </td>
        </tr>
        </table>
        -->
        </td>
        <td width="60%">
        <table class="inner_content_table">
        <tr>
        <td>
        <table class="news_table">
        <tr class="title_general">
        <td colspan="3" align="center">
        Welcome
        </td>
    	</tr>
        <tr>
        <td>
        <table class="news_item_table">
        <tr>
        <td>
        <p>This is RevEngE the Tigress Reverse Engineering <b>Competition</b> Engine, built by Claire Taylor at the University of Arizona for her PhD dissertation research.  The purpose of this web application is to generate difficult to solve reverse engineering problems, and study how individuals complete these problems in order to study reverse engineering and obfuscation.  In short, we provide cash prizes for individuals able to solve these problems; we study the methods employed to solve these problems through our data collection metrics.  The longer story is that which obfuscations work well is relatively unknown at this point in time, as are the best ways to reverse engineer these transforms.  Using RevEngE, Claire Taylor and her mentor Christian Collberg aim to gain an empirical understanding of both of these things.  This allows analysis of how well obfuscation is going to work to protect against Man-at-the-End attacks. It is also informative for those seeking to conduct those attacks.</p><br />
        <p>Please see the <a href="studentInfo.jsp">information page</a> to learn how to participate.</p>
        </td>
        </tr>
        </table>
        </td>
        </tr>
        </table>
        </td>
        </tr>
        </table>
        </td>
        <td width="20%">
        <!--
        <table class="inner_content_table">
        <tr>
        <td>
        <%
        if(verbose)
        {
        	System.out.println("Got to hasUser conditional");
        }
		if(!hasUser)
		{
		%>
        	<table class="news_table" width="100%">
            <tr class="title_general">
            <td>
        	<div align="center">Login<br /></div>
            </td>
            </tr>
            </table>
            <table class="news_item_table" width="100%">
            <tr>
            <td>
        	<%@include file="./WEB-INF/includes/loginWindow.jsp" %>
            </td>
            </tr>
            </table>
        <%
		}
		else
		{
		%>
        	<table class="news_table" width="100%">
            <tr class="title_general">
            <td>
        	<div align="center">Logout<br /></div>
            </td>
            </tr>
            </table>
        	<table class="news_item_table" width="100%">
            <tr>
            <td>
        	<div align="center">Hi there, <%=displayName %>! Your last visit was <%
				java.util.Date logonDate=(java.util.Date)myUser.getAttribute("previousVisit");
				out.print(dateFormat.format(logonDate));
				%>.  Your role is <%
				out.print(myUser.getAttribute("role") + ".");
				if(myUser.getAttribute("role").equals("student"))
				{
					out.print("  Your administrator is " + myUser.getAttribute("administrator"));
				}
				%>.<br />Not you?<br /></div>
            <%@include file="./WEB-INF/includes/logoutWindow.jsp" %>
            </td>
            </tr>
            </table>
        <%
		}
		if(verbose)
        {
        	System.out.println("Got past hasUser conditional");
        }
		%>
        </td>
        </tr>
        </table>
        -->
        </td>
    </tr>
</table>
<%@include file="./WEB-INF/includes/footer.jsp" %>
</body>

</html>