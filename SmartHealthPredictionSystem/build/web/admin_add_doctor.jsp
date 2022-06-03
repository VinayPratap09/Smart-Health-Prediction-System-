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
        
        <%@include file="admin_header.jsp" %>
        <h1 align="center">Add Doctor</h1>
        <table border="0" width="50%" align="center">
            <tr>
                <td align="center">
                    <form action="admin_add_doctor" method="post">  
                        <label for="fname">Doctor Name:</label>
                        <input type="text" id="doctor_name" name="doctor_name"><br><br>
                        <label for="fname">Specialization:</label>
                        <input type="text" id="specialization" name="specialization"><br><br>
                        <label for="fname">Fees:</label>
                        <input type="text" id="fees" name="fees"><br><br>
                        <label for="fname">Email:</label>
                        <input type="text" id="email" name="email"><br><br>
                        <label for="fname">Address:</label>
                        <input type="text" id="address" name="address"><br><br>
                        <label for="fname">Mobile:</label>
                        <input type="text" id="mobile" name="mobile"><br><br>
                        <input type="submit" value="Submit">    
                    </form>
                </td>
            </tr>
        </tsble>
</body>
</html:html>
