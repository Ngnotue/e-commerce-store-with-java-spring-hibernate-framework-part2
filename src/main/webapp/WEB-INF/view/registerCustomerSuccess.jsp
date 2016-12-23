<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/view/template/header.jsp"%>
<%--
  Created by IntelliJ IDEA.
  User: Yuth
  Date: 12/7/2016
  Time: 11:05 AM
  To change this template use File | Settings | File Templates.
--%>
<div class="container-wrapper">
    <div class="container">
        <section>
            <div class="jumbotron">
                <div class="container">
                    <div class="col-md-6 col-md-push-3">
                        <div style="text-align: center;">
                            <h2>សូមស្វាគមន៍ដែលបានក្លាយជាអតិថិជនរបស់យើងខ្ញុំ</h2>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="container" ng-app="cartApp">
            <a href="<spring:url value="/product/productList" />" class="btn btn-default">ផលិតផល</a>
        </section>
    </div>
</div>
<script src="<c:url value="/resources/js/controller.js" />"></script>
<%@include file="/WEB-INF/view/template/footer.jsp"%>