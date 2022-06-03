<%@page contentType="text/html"%>
    
<!--

    Licensed to the Apache Software Foundation (ASF) under one
    or more contributor license agreements.  See the NOTICE file
    distributed with this work for additional information
    regarding copyright ownership.  The ASF licenses this file
    to you under the Apache License, Version 2.0 (the
    "License"); you may not use this file except in compliance
    with the License.  You may obtain a copy of the License at

      http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing,
    software distributed under the License is distributed on an
    "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
    KIND, either express or implied.  See the License for the
    specific language governing permissions and limitations
    under the License.

-->
    
<%@page pageEncoding="UTF-8"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>

<html:html lang="true">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><bean:message key="welcome.title"/></title>
        <html:base/>

    </head>
    <body style="background-color: #9999ff">
        
        <logic:notPresent name="org.apache.struts.action.MESSAGE" scope="application">
            <div  style="color: red">
                ERROR:  Application resources not loaded -- check servlet container
                logs for error messages.
            </div>
        </logic:notPresent>
        
        <h1 align="center">Sign Up</h1>
        <table border="0" width="50%" align="center">
            <tr>
                <td align="center">
                    <form action="register" method="post">  
                        <input type="radio" id="doctor" name="user_type" value="doctor">
                        <label for="doctor">Doctor</label>
                        <input type="radio" id="patient" name="user_type" value="patient" checked>
                        <label for="patient">Patient</label><br><br>

                        <label for="fname">User Name:</label>
                        <input type="text" id="user_name" name="user_name"><br><br>
                        <label for="fname">Mobile Number:</label>
                        <input type="text" id="mobile_number" name="mobile_number"><br><br>
                        <label for="fname">Email:</label>
                        <input type="text" id="email" name="email"><br><br>
                        <label for="fname">Password:</label>
                        <input type="text" id="password" name="password"><br><br>
                        <input type="submit" value="Submit">
                    </form>
                    <a style="color:#ffffff; text-decoration:none" href="welcomeStruts.jsp"><b>Login</b></a>
                
                </td>
            </tr>
        </tsble>
</body>
</html:html>
