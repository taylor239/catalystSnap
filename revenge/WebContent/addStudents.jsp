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
    	<td width="25%">
        <table class="inner_content_table">
        <tr>
        <td>
        
        </td>
        </tr>
        </table>
        </td>
        <td width="50%">
        <table class="inner_content_table">
        <tr>
        <td>
        <form action="addStudentsSubmit.jsp" method="post">
        <table class="news_table">
        <tr class="title_general">
        <td colspan="3" align="center">
        Enter Information
        </td>
    	</tr>
        <tr>
        <td id="add_user_table">
        <table class="news_item_table" width="100%">
        <tr>
        <td>
        Student:
        </td>
        <td width="100%">
        <div align="right">
        0
        </div>
        </td>
        </tr>
        <tr>
        <td colspan="2">
        &nbsp;
        </td>
        </tr>
        <tr>
        <td width="100%" colspan="2">
        <input type="text" name="email_0" onChange="this.setAttribute('value', this.value);" onfocus="clearText(this);" value="Email" style="width:100%"></input>
        </td>
        </tr>
        <tr>
        <td width="100%" colspan="2">
        <input type="text" name="fname_0" onChange="this.setAttribute('value', this.value);" onfocus="clearText(this);" value="First Name" style="width:100%"></input>
        </td>
        </tr>
        <tr style="display:none;">
        <td width="33%">
        Middle Name:
        </td>
        <td width="67%">
        <input type="text" name="mname_0" value="" style="width:90%"></input>
        </td>
        </tr>
        <tr>
        <td width="100%" colspan="2">
        <input type="text" name="lname_0" onChange="this.setAttribute('value', this.value);" onfocus="clearText(this);" value="Last Name" style="width:100%"></input>
        </td>
        </tr>
        <tr>
        <td width="100%" colspan="2">
        <input type="text" name="password_0" onChange="this.setAttribute('value', this.value);" value="Password: Do not change for an autogenerated value." style="width:100%"></input>
        </td>
        </tr>
        <tr>
        <td width="100%" colspan="2">
        <input type="text" name="course_0" onChange="this.setAttribute('value', this.value);" onfocus="clearText(this);" value="Course" style="width:100%"></input>
        </td>
        </tr>
        </table>
        </td>
        </tr>
        <tr>
        <td>
        <table width="100%">
        <tr>
        <td width="33%">
        <div align="left">
        <input type="hidden" name="totalAdd" id="totalAdd" value="0"></input>
        <input type="button" value="Add Another" onclick="addAnother()"></input>
        </div>
        </td>
        <td width="67%">
        <div align=left>
        <input type="submit" value="Submit"></input>
        </div>
        </td>
        </tr>
        </table>
        </td>
        </tr>
        </table>
        </form>
        </td>
        </tr>
        </table>
        </td>
        <td width="25%">
        
        </td>
    </tr>
</table>
<%@include file="./WEB-INF/includes/footer.jsp" %>
</body>

</html>