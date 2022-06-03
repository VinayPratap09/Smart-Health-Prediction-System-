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
        
        <%@include file="doctor_header.jsp" %>
        <h1 align="center">Please Provide Your Feedback</h1>
        <table border="0" width="50%" align="center">
            <tr>
                <td align="center">
                    <form action="Doctor_feedback" method="post">  
                        <input type="radio" id="1" name="rating" value="1">
                        <label for="1">1</label>
                        <input type="radio" id="2" name="rating" value="2">
                        <label for="2">2</label>
                        <input type="radio" id="3" name="rating" value="3">
                        <label for="3">3</label>
                        <input type="radio" id="4" name="rating" value="4">
                        <label for="4">4</label>
                        <input type="radio" id="5" name="rating" value="5" checked>
                        <label for="1">5</label>
                        <br><br>
                        <label for="fname">Remarks:</label>
                        <input type="text" id="remarks" name="remarks"><br><br>
                        
                        <br><br>
                        
                        <input type="submit" value="submit">    
                    </form>
                </td>
            </tr>
        </tsble>
</body>
</html:html>
