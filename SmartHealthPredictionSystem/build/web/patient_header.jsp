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

<html:html lang="true">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><bean:message key="welcome.title"/></title>
        <html:base/>
        <style>
.container {
  position: relative;
  text-align: center;
  color: black;
  font-size: 40px;
}

.bottom-left {
  position: absolute;
  bottom: 8px;
  left: 16px;
}

.top-left {
  position: absolute;
  top: 8px;
  left: 16px;
}

.top-right {
  position: absolute;
  top: 8px;
  right: 16px;
}

.bottom-right {
  position: absolute;
  bottom: 8px;
  right: 16px;
}

.centered {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
}
</style>

    </head>
    <body style="background-color: #9999ff">
        
        <div class="container">
            <img src="logo.jpg" alt="Smart Health Prediction" style="width:1500px;height:300px;">
            <div class="centered"><h3 align="center"><bean:message key="welcome.heading"/></h3></div>
        </div>
        <br>
        <table border="1" width="100%" align="center">
            <tr>
                <td bgcolor= "gray" align="center" ><a style="color:#ffffff; text-decoration:none"  href="patient_details.jsp?username=<%= request.getAttribute("username") %>&mobile_number=<%= request.getAttribute("mobile_number") %>"><b>My Details</b></a></td>
                <td bgcolor= "gray" align="center" ><a style="color:#ffffff; text-decoration:none"  href="patient_disease_predict.jsp?username=<%= request.getAttribute("username") %>&mobile_number=<%= request.getAttribute("mobile_number") %>"><b>Disease Prediction</b></a></td>
                <td bgcolor= "gray" align="center"><a style="color:#ffffff; text-decoration:none" href="patient_search_doctor.jsp"><b>Search Doctor</b></a></td>
                <td bgcolor= "gray" align="center"><a style="color:#ffffff; text-decoration:none" href="patient_feedback.jsp"><b>Feedback</b></a></td>
                <td bgcolor= "gray" align="center"><a style="color:#ffffff; text-decoration:none" href="welcomeStruts.jsp"><b>Logout</b></a></td>

            </tr>
        </table>
    
</body>
</html:html>
