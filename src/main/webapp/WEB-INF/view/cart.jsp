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
                            <h2>ទំនិញដែលបានបញ្ជាទិញ</h2>

                            <p>នេះគឺជាតារាងទំនិញដែលលោកអ្នកបានធ្វើការបញ្ជាទិញ</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="container" ng-app="cartApp">
            <div ng-controller = "cartCtrl" ng-init = "initCartId('${cartId}')">
            <div>
                <a class="btn btn-danger pull-left" ng-click="clearCart()"><span class="glyphicon glyphicon-remove-sign"></span>លុបចោលការបញ្ជាទិញទាំងអស់</a>
                <a href="<spring:url value="/order/${cartId}" />" class="btn btn-success pull-right">
                    <span class="glyphicon glyphicon-shopping-cart glyphicon"></span>ពិនិត្យចេញ
                </a>
            </div>
                <br>

            <table class="table table-hover">
                <tr>
                    <th>ផលិតផល</th>
                    <th>តម្លៃក្នុងមួយឯកតា</th>
                    <th>ចំនួន</th>
                    <th>តម្លៃ</th>
                    <th>លុបការបញ្ជាទិញ</th>
                </tr>
                <tr ng-repeat = "item in cart.cartItems">
                    <td>{{item.product.productName}}</td>
                    <td>{{item.product.productPrice}}</td>
                    <td>{{item.quantity}}</td>
                    <td>{{item.totalPrice}}</td>
                    <td>
                        <a href="#" class="label label-danger" ng-click="removeFromCart(item.product.productId)">
                            <span class="glyphicon glyphicon-remove-sign"></span>លុបចេញ
                        </a>
                    </td>
                </tr>
                <tr>
                    <th></th>
                    <th></th>
                    <th>តម្លៃបូកសរុប</th>
                    <th>{{calGrandTotal()}}</th>
                    <th></th>
                </tr>
            </table>

            <a href="<spring:url value="/productList" />" class="btn btn-default">បន្តធ្វើការបញ្ជាទិញ</a>
            </div>
        </section>


<script src="<c:url value="/resources/js/controller.js" />"></script>
<%@include file="/WEB-INF/view/template/footer.jsp"%>