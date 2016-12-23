<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--
  Created by IntelliJ IDEA.
  User: Yuth
  Date: 12/2/2016
  Time: 3:06 PM
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="/WEB-INF/view/template/header.jsp"%>

<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h3>ផលិតផលទាំងអស់</h3>
            <p class="load">សូមធ្វើការពិនិត្យនូវរាល់ផលិតផលទាំងអស់ដែលមាននៅទីនេះ </p>
        </div>
        <table class="table table-striped table-hover">
            <thead>
            <tr>
                <th>រូបភាព</th>
                <th>ឈ្មោះផលិតផល</th>
                <th>ប្រភេទផលិតផល</th>
                <th>លក្ខណៈ</th>
                <th>តម្លៃ</th>
                <th>សេចក្តីលម្អិត</th>
            </tr>
            </thead>
            <c:forEach items="${products}" var="product">
                <tr>
                    <td><img src="<c:url value="/resources/images/${product.productId}.png" />" alt="image" style="width: 100%" /> </td>
                    <td>${product.productName}</td>
                    <td>${product.productCategory}</td>
                    <td>${product.productCondition}</td>
                    <td>${product.productPrice}</td>
                    <td>
                        <a href="<spring:url value="/product/viewProduct/${product.productId}" />">
                            <span class="glyphicon glyphicon-info-sign"></span>
                        </a>
                    </td>
                </tr>
            </c:forEach>

        </table>
<%@include file="/WEB-INF/view/template/footer.jsp"%>