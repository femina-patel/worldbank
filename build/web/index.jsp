<%-- 
    Document   : index
    Created on : Jun 5, 2017, 5:39:46 PM
    Author     : Darshan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
      <div id="container">
    <%String name=(String)session.getAttribute("username");
    session.setAttribute("contact_status","null");    			      					      			
    %>
    
<link href="css.css" rel="stylesheet" type="text/css"/>
<jsp:include page="header.jsp"></jsp:include>

<div id="content-container">
<div id="content">

<h2 style="color: red;"><i>
            <%
            if(name==null)
            {%>
                Welcome Guest
            <%}
            else
            {%>
            	 Welcome <%=name%> 
            <%}%>
            </i></h2><br/><br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<center><img src="images/index.jpg" width="550" height="400px"/></center>
</div>

<div id="aside">
    <%
    if(name==null)
    {%>
<h2></h2>


<jsp:include page="login.jsp"></jsp:include>

    <%}
    else
      {%>
        <p>* Online banking is the practice of making bank transactions or paying bills via the Internet.
<br/></br>* Banking online allows a customer to make deposits, withdrawals, transfers with the click of a mouse.
<br/><br/>* Online banking also eliminates paper waste, which is a plus not only for those who have to handle all the paper work, but also for the environment.
<br/><br/>* Security is always an issue with Internet transactions. Although information is encrypted , and the chances of an account being hacked are slim, it happen.
</p>
    <%}%>
</div>

</div>
<jsp:include page="footer.jsp"></jsp:include>

</div>

    </body>
</html>
