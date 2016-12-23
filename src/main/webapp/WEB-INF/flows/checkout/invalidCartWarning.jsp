<%--
  Created by IntelliJ IDEA.
  User: Yuth
  Date: 12/22/2016
  Time: 11:36 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/view/template/header.jsp"%>

<div class="container-wrapper">
    <div class="container">
        <section>
            <div class="jumbotron">
                <div class="container">
                    <div class="col-md-6 col-md-push-3">
                        <div style="text-align: center;">
                            <h2>កាតរបស់អ្នកមិនត្រឹមត្រូវទេ</h2>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="container">
            <a href="<spring:url value="/product/productList" />" class="btn btn-default">ផលិតផល</a>
        </section>
    </div>
</div>
<%@include file="/WEB-INF/view/template/footer.jsp"%>