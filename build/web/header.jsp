<%String name = (String) session.getAttribute("username");%>

<div id="header">
    <img src="images\World-bank-logo.gif"/>
</div>

<div id="navigation">
    <ul>
        <%
            if (name != null) {%>
        <li> <a href="index.jsp">Home</a></li>
            <%}%>
        <li><a href="index.jsp">Home</a></li>
        <li><a href="transfer.jsp">About US</a></li>
        <li><a href="withdraw.jsp">Services</a></li>
        <li><a href="transfer.jsp">Contact us</a></li>
            <%
                if (name != null) {%>
        <li> <a href="logout.jsp">Logout</a></li>
            <%}%>
    </ul>
</div>