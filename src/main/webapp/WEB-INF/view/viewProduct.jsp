<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--
  Created by IntelliJ IDEA.
  User: Yuth
  Date: 12/2/2016
  Time: 3:06 PM
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/view/template/header.jsp"%>

<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h3>សេចក្តីលម្អិតអំពីផលិតផល</h3>
            <p class="load">នេះគឺជាព័ត៌មានលម្អិតអំពីផលិតផល</p>
        </div>

        <div class="container" ng-app = "cartApp">
            <div class="row">
                <div class="col-md-5">
                    <img src="<c:url value="/resources/images/${product.productId}.png" />" alt="image" style="width: 100%; height: 300px;" class="home-image" />
                </div>
                <div class="col-md-5">
                    <h4>${product.productName}</h4>
                    <p>${product.productDescription}</p>
                    <p><strong>ក្រុមហ៊ុនផលិត</strong> : ${product.productManufacturer}</p>
                    <p><strong>ប្រភេទផលិតផល</strong> : ${product.productCategory}</p>
                    <p><strong>លក្ខណៈ</strong> : ${product.productCondition}</p>
                    <h4>${product.productPrice} USD</h4>
                    <br>
                    <c:set var="role" scope="page" value="${param.role}" />
                    <c:set var="url" scope="page" value="/product/productList" />
                    <c:if test='${role="admin"}'>
                        <c:set var="url" scope="page" value="/admin/productInventory" />
                    </c:if>
                    <p ng-controller = "cartCtrl">
                        <a href="<c:url value="${url}" />" class="btn btn-default">បញ្ជីទំនិញ</a>
                        <a href="#" class="btn btn-warning btn-lg" ng-click = "addToCart('${product.productId}')">
                            <span class="glyphicon glyphicon-shopping-cart"></span>បញ្ជាទិញឥឡូវនេះ
                        </a>
                        <a href="<spring:url value="/cart" />" class="btn btn-default">
                            <span class="glyphicon glyphicon-hand-right"></span> ទំនិញបញ្ជាទិញ
                        </a>
                    </p>
                </div>
            </div>
        </div>
        <script src="<c:url value="/resources/js/controller.js" />"></script>
<%@include file="/WEB-INF/view/template/footer.jsp"%>