<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page import ="java.util.ArrayList"%>
<%@ page import ="java.util.List"%>
<%@ page import ="java.util.HashSet"%>
<%
String id = request.getParameter("userid");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "smarthealthprediction";
String userid = "root";
String password = "";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
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
        
  <jsp:include page="patient_header.jsp" >
  <jsp:param name="username" value="${param.username}" />
  <jsp:param name="mobile_number" value="${param.mobile_number}" />
  <jsp:param name="id" value="${param.id}" />
  <jsp:param name="email" value="${param.email}" />
  </jsp:include>   
        <h3>Welcome ${param.username}</h3>

        <h1 align="center">Disease Prediction - For Symptom1</h1>
        <p align="center">Please Select a Symptom</p>
        <table border="0" width="50%" align="center">
            <tr>
                <td align="center">
                    <form action="Patient_disease_predict" method="post">  
                        <input type="hidden" id="username" name="username" value="${param.username}">
                        <input type="hidden" id="mobile_number" name="mobile_number" value="${param.mobile_number}">
                        <input type="hidden" id="id" name="id" value="${param.id}">
                        <input type="hidden" id="email" name="email" value="${param.email}">
                        <!--input type="text" id="symptom1" name="symptom1"><br><br> -->
                        <select name="symptom1" id="symptom1">
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from disease";
resultSet = statement.executeQuery(sql);
//List dd = new ArrayList(); 
ArrayList<String> dd = new ArrayList<String>();
while(resultSet.next()){
    if (resultSet.getString("symptom1") != null)
    {
    if (!dd.contains(resultSet.getString("symptom1")) )
    {
      
        dd.add(resultSet.getString("symptom1"));
%>
        <option value="<%=resultSet.getString("symptom1") %>"><%=resultSet.getString("symptom1") %></option>
<%
    }
}
     if (resultSet.getString("symptom2") != null)
    {
    if (!dd.contains(resultSet.getString("symptom2")) )
    {
     
        dd.add(resultSet.getString("symptom2"));
%>
        <option value="<%=resultSet.getString("symptom2") %>"><%=resultSet.getString("symptom2") %></option>
<%
    }
}
    if (resultSet.getString("symptom3") != null)
{
    if (!dd.contains(resultSet.getString("symptom3")) )
    {
        dd.add(resultSet.getString("symptom3"));
%>
        <option value="<%=resultSet.getString("symptom3") %>"><%=resultSet.getString("symptom3") %></option>
<%
    }
}
}

connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>                        
                        
                        </select>
                        
                        <br><br>
                        <input type="submit" value="Next">    
                    </form>
                </td>
            </tr>
        </tsble>
</body>
</html:html>
