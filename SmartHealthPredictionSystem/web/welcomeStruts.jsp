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
    <body style="background-color: whitesmoke">
        
        <logic:notPresent name="org.apache.struts.action.MESSAGE" scope="application">
            <div  style="color: red">
                ERROR:  Application resources not loaded -- check servlet container
                logs for error messages.
            </div>
        </logic:notPresent>
        
        
        <div class="container">
            <img src="logo.jpg" alt="Smart Health Prediction" style="width:1500px;height:300px;">
            <div class="centered"><h3 align="center"><bean:message key="welcome.heading"/></h3></div>
        </div>


        <p><b><bean:message key="welcome.message"/></b></p>
        <table border="0" width="100%">
            <tr>
                <td><div class="container">
                        <a href="admin_login.jsp"><img src="admin_login.jpg" alt="Smart Health Prediction" style="width:250px;height:250px;border-radius:50%;"></a>
                        <div class="centered">Admin Login</div>
                    </div>
                </td>
                <td>
                    <div class="container">
                        <a href="patient_login.jsp"><img src="patient_login.jpg" alt="Smart Health Prediction" style="width:250px;height:250px;border-radius:50%;"></a>
                        <div class="centered">Patient Login</div>
                    </div>
                </td>
                <td>
                    <div class="container">
                        <a href="doctor_login.jsp"><img src="doctor_login.jpg" alt="Smart Health Prediction" style="width:250px;height:250px;border-radius:50%;"></a>
                        <div class="centered">Doctor Login</div>
                    </div>
                </td>
            </tr>
        </table>
    </body>
</html:html>
