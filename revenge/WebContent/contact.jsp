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
        Contact
        </td>
    	</tr>
        <tr>
        <td>
        <table class="news_item_table">
        <tr>
        <td>
        <p>This site was created and is administered by Claire Taylor, a PhD student at the University of Arizona who may be contacted via email at <a href="mailto:cgtboy1988@email.arizona.edu" target="_top">cgtboy1988@email.arizona.edu.</a></p><br /><p>Christian Collberg is Claire Taylor's faculty advisor and one of the contributors to the Tigress project.  He may be contacted at <a href="mailto:collberg@email.arizona.edu">collberg@email.arizona.edu.</a></p>
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