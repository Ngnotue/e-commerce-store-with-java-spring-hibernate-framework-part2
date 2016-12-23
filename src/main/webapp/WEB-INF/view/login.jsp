<%--
  Created by IntelliJ IDEA.
  User: Yuth
  Date: 12/6/2016
  Time: 1:39 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/view/template/header.jsp"%>

<div class="container-wrapper">
    <div class="container">
        <div class="col-md-6 col-md-push-3">
            <div id="login-box">
                <div class="page-header">
                <h3>សូមធ្វើការបញ្ចូលឈ្មោះនិង លេខកូដសម្ងាត់របស់អ្នក</h3>
                </div>
                <c:if test="${not empty msg}">
                    <div class="msg">${msg}</div>
                </c:if>
            </div>
            <form name="loginForm" action="<c:url value="/j_spring_security_check" />" method="post">
                <c:if test="${not empty error}">
                    <div class="error" style="color: #ff0000">${error}</div>
                </c:if>
                <div class="form-group">
                    <label for="username">ឈ្មោះអ្នកប្រើប្រាស់: </label>
                    <input type="text" id="username" name="username" class="form-control" />
                </div>
                <div class="form-group">
                    <label for="password">លេខកូដសម្ងាត់: </label>
                    <input type="password" id="password" name="password" class="form-control" />
                </div>

                <input type="submit" value="យល់ព្រម" class="btn btn-default" />
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
            </form>
        </div>
    </div>
</div>