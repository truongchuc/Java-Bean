<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="chuc.dev.data.model.Student" %>
<%
    // Lấy đối tượng Student từ request
    Student student = (Student) request.getAttribute("student");
    if (student == null) {
        out.println("Không có thông tin sinh viên.");
        return;
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Thông tin Sinh Viên</title>
    </head>
    <body>
        <h1>Thông tin Sinh Viên</h1>
        <p>Tên: <%= student.getName()%></p>
        <p>Tuổi: <%= student.getAge()%></p>
        <jsp:useBean id = "date" class = "java.util.Date" /> 
        <p>The date/time is <%= date%>
            <jsp:useBean id = "Student" class = "chuc.dev.data.model.Student"> 
                <jsp:setProperty name = "Student" property = "name" value = "Chuc"/>
                <jsp:setProperty name = "Student" property = "age" value = "10"/>
            </jsp:useBean>
        <p>Student First Name: 
            <jsp:getProperty name = "Student" property = "name"/>
        </p>

        <p>Student Age: 
            <jsp:getProperty name = "Student" property = "age"/>
        </p>
    </body>
</html>
