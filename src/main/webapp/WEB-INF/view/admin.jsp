<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--
  Created by IntelliJ IDEA.
  User: Yuth
  Date: 12/2/2016
  Time: 3:06 PM
  To change this template use File | Settings | File Templates.
--%>
<%@include file="/WEB-INF/view/template/header.jsp"%>

<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h3>ទំព័រសម្រាប់អ្នកគ្រប់គ្រង</h3>
            <p class="load">សិទ្ធជាអ្នកគ្រប់គ្រងលើផលិតផលទាំងអស់</p>
        </div>
        <c:if test="${pageContext.request.userPrincipal.name != null}">
        <h4>សូមស្វាគមន៍: <strong>${pageContext.request.userPrincipal.name}</strong></h4>
        </c:if>
        <h4>
            <a href="<c:url value="/admin/productInventory" />" class="btn btn-primary">សារពើភ័ណ្ឌ</a>
            <a href="<c:url value="/j_spring_security_logout" />" class="btn btn-danger">ចាកចេញ</a>
        </h4>

        <p>អ្នកអាចធ្វើការត្រួតពិនិត្យនិងកែប្រែទៅលើផលិតផលទាំងអស់</p>

        <br>
        <h4>
            <a href="<c:url value="/admin/customer" />" class="btn btn-primary">ការគ្រប់គ្រងអតិថិជន</a>
        </h4>

        <p>អ្នកអាចពិនិត្យពីព័ត៌មានអតិថិជន</p>

<%@include file="/WEB-INF/view/template/footer.jsp"%>