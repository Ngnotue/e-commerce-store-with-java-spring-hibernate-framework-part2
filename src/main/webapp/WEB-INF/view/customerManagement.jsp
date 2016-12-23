<%--
  Created by IntelliJ IDEA.
  User: Yuth
  Date: 12/22/2016
  Time: 5:02 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="/WEB-INF/view/template/header.jsp"%>

<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h3>ការគ្រប់គ្រងអតិថិជន</h3>
            <p class="load">នេះជាទំព័រសម្រាប់គ្រប់គ្រងអតិថិជន</p>
        </div>
        <table class="table table-striped table-hover">
            <thead>
            <tr>
                <th>ឈ្មោះ</th>
                <th>អ៊ីមែល</th>
                <th>ទូរស័ព្ទ</th>
                <th>ឈ្មោះអ្នកប្រើប្រាស់</th>
                <th>Enabled</th>
            </tr>
            </thead>
            <c:forEach items="${customerList}" var="customer">
                <tr>
                    <td>${customer.customerName}</td>
                    <td>${customer.customerEmail}</td>
                    <td>${customer.customerPhone}</td>
                    <td>${customer.username}</td>
                    <td>${customer.enabled}</td>
                </tr>
            </c:forEach>

        </table>
        <%@include file="/WEB-INF/view/template/footer.jsp"%>
