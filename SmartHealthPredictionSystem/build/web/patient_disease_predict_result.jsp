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

        <h1 align="center">Disease Prediction - Result</h1>
     <p align="center">Symptoms:</p>
        <table border="1" width="50%" align="center">
            <tr>

 <%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from predict where username='Vinay'";
resultSet = statement.executeQuery(sql);
//List dd = new ArrayList(); 
ArrayList<String> symptoms = new ArrayList<String>();
String Sym1="",Sym2="",Sym3="";
while(resultSet.next()){
    if (resultSet.getString("symptom1") != null)
    {
        if (!symptoms.contains(resultSet.getString("symptom1")) )
        {

            symptoms.add(resultSet.getString("symptom1"));
            Sym1 = resultSet.getString("symptom1");
    %>
            <td align="center"><%=resultSet.getString("symptom1") %></td>

    <%
        }
    }
    if (resultSet.getString("symptom2") != null)
    {
    if (!symptoms.contains(resultSet.getString("symptom2")) )
    {
     
        symptoms.add(resultSet.getString("symptom2"));
        Sym2 = resultSet.getString("symptom2");
%>
        <td align="center"><%=resultSet.getString("symptom2") %></td>

<%
    }
}
    if (resultSet.getString("symptom3") != null)
{
    if (!symptoms.contains(resultSet.getString("symptom3")) )
    {
        symptoms.add(resultSet.getString("symptom3"));
            Sym3 = resultSet.getString("symptom3");
%>
        <td align="center"><%=resultSet.getString("symptom3") %></td>
<%
    }
}
%> </tr></table>
<hr><br>   
<%
}
%><p align="center">Predicted Disease:<%
sql ="select * from disease";
resultSet = statement.executeQuery(sql);
//List dd = new ArrayList(); 
ArrayList<String> dd = new ArrayList<String>();
while(resultSet.next()){
    String symptom1 =resultSet.getString("symptom1");
    String symptom2 =resultSet.getString("symptom2");
    String symptom3 =resultSet.getString("symptom3");
    String disease_name = resultSet.getString("disease_name");
   
    if (Sym1.equals(symptom1) && Sym2.equals(symptom2))
    {
        %><p align="center"><%=disease_name%></p> <%
    }   


}

connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>          



            </tr>
        </tsble>
</body>
</html:html>
