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
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>

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
        <h1 align="center">Search Result</h1>
<table border = "1" width = "100%">
         <tr>
            <th>Disease Name</th>
            <th>Symptom1</th>
            <th>Symptom2</th>
            <th>Symptom3</th>
            <th>care</th>
            <th>Medicine</th>
         </tr>
         
      
        <%       
try{
            Connection con = null;
Statement statement = null;
ResultSet resultSet = null;

    Class.forName("com.mysql.jdbc.Driver");
    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/smarthealthprediction", "root", "");
    
statement=con.createStatement();
String sql ="select * from disease";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("disease_name") %></td>
<td><%=resultSet.getString("symptom1") %></td>
<td><%=resultSet.getString("symptom2") %></td>
<td><%=resultSet.getString("symptom3") %></td>
<td><%=resultSet.getString("care") %></td>
<td><%=resultSet.getString("medicine") %></td>
</tr>
   <%
}
con.close();
} catch (Exception e) {
e.printStackTrace();
}
%>      

</table>
 
</body>
</html:html>
