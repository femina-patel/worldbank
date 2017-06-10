<%-- 
    Document   : register
    Created on : Jun 5, 2017, 9:13:36 PM
    Author     : Darshan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <link rel="stylesheet" href='js-form-validation.css' type='text/css' />  
    <script type="text/javascript">

    </script>  
</head>  
<body onload="document.registration.userid.focus();">  
    <div id="container">
        <%String name = (String) session.getAttribute("username");
            session.setAttribute("contact_status", "null");
        %>

        <link href="css.css" rel="stylesheet" type="text/css"/>
        <jsp:include page="header.jsp"></jsp:include>

        <div id="content-container">
            <div id="content">

                <fieldset>
                    <legend align="center"><h1>Registration</h1></legend>  
                    <form name="registration" action="register.jsp">  
                        <table border="1" align="center">

                            <tr>
                                <td>User ID</td>  
                                <td><input type="text" name="userid" size="12" /></td>  
                            </tr>
                            <tr>
                                <td>Password</td>  
                                <td><input type="password" name="password" size="12" /></td>  
                            </tr>
                            <tr>
                                <td>Confirm Password</td>  
                                <td><input type="password" name="cpassword" size="12" value="" /></td>  
                            </tr>
                            <tr>
                                <td>Name
                                <td><input type="text" name="fname" placeholder="Enter First Name"/><input type="text" name="mname" placeholder="Enter Middle Name"/>
                                    <input type="text" name="lname" placeholder="Enter Last Name"/></td>  
                            </tr>
                            <tr>
                                <td>Birthdate</td>
                                <td><input type="text" name="birthdate" placeholder="Enter the birthdate"/></td>  
                            </tr>
                            <tr>
                                <td>Gender</td>  
                                <td><input type="radio" name="gender" value="Male" />Male
                                    <input type="radio" name="gender" value="Female" />Female</td>  
                            </tr>
                            <tr>
                                <td>Address</td>  
                                <td><input type="text" name="address" size="50" placeholder="Enter Street or landmark" /></td>  
                            </tr>
                            <tr> 
                                <td>Country</td>
                                <td><select name="country">  
                                        <option selected="" value="India">India</option>  
                                        <option value="AL">Canada</option>  
                                        <option value="AS">Russia</option>  
                                        <option value="AD">USA</option>  
                                    </select></td></tr>

                            <tr> 
                                <td>City</td>
                                <td><select name="city">  
                                        <option selected="" value="pune">Pune</option>  
                                        <option value="surat">Surat</option>  
                                        <option value="mumbai">Mumbai</option>  
                                        <option value="baroda">Baroda</option>  
                                    </select></td></tr>
                            <tr>
                                <td>Pin Code</td>  
                                <td><input type="text" name="zip" placeholder="Enter Pin code "/></td>  
                            </tr>
                            <tr>
                                <td>Mobile no</td>  
                                <td><input type="text" name="mobileno" placeholder="Enter Mobile no" /></td>  
                            </tr>
                            <tr>
                                <td>Email</td>  
                                <td><input type="text" name="email" size="50"placeholder="Enter Email ID" /></td>  
                            </tr>


                            <td><input type="submit" name="submit" value="Submit" /></td> 
                            <td><input type="submit" name="cancel" value="Cancel" /></td>  
                    </form> 

                </fieldset>
            </div>
        </div>

    </div>

</body>  
</html>

