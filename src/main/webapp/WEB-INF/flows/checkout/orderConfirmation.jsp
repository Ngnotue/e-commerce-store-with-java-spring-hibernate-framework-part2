<%--
  Created by IntelliJ IDEA.
  User: Yuth
  Date: 12/22/2016
  Time: 10:11 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@include file="/WEB-INF/view/template/header.jsp"%>
<jsp:useBean id="now" class="java.util.Date" />

<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h3>ការបញ្ជារទិញ</h3>
            <p class="load">ការបញ្ជាក់ពីបញ្ជារទិញ</p>
        </div>

        <div class="container">
            <div class="row">
                <form:form commandName="order" cssClass="form-horizontal">
                    <div class="row">
                    <div class="well col-xs-10 col-sm-10 col-md-6 col-xs-offset-1 col-sm-offset-1 col-md-offset-3">

                        <div class="text-center">
                            <h3>វិក័យប័ត្រ</h3>
                        </div>
                        <div class="row">
                            <div class="col-xs-6 col-sm-6 col-md-6">
                                <address>
                                    <strong>អាសយដ្ឋានទទួលទំនិញ</strong><br>
                                        ${order.cart.customer.shippingAddress.streetName}
                                    <br>
                                        ${order.cart.customer.shippingAddress.apartmentNumber}
                                    <br>
                                        ${order.cart.customer.shippingAddress.city}, ${order.cart.customer.shippingAddress.state}
                                    <br>
                                        ${order.cart.customer.shippingAddress.country}, ${order.cart.customer.shippingAddress.zipCode}
                                    <br>
                                </address>
                            </div>
                            <div class="col-xs-6 col-sm-6 col-md-6 text-right">
                                <p>ថ្ងៃ​ដឹកជញ្ជូន: <fmt:formatDate type="date" value="${now}" /></p>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-6 col-sm-6 col-md-6">
                                <address>
                                    <strong>អាសយដ្ឋានវិក័យប័ត្រ</strong><br>
                                        ${order.cart.customer.billingAddress.streetName}
                                    <br>
                                        ${order.cart.customer.billingAddress.apartmentNumber}
                                    <br>
                                        ${order.cart.customer.billingAddress.city}, ${order.cart.customer.billingAddress.state}
                                    <br>
                                        ${order.cart.customer.billingAddress.country}, ${order.cart.customer.billingAddress.zipCode}
                                    <br>
                                </address>
                            </div>
                        </div>
                        <div class="row">
                            <table class="table table-hover">
                                <thead>
                                <tr>
                                    <th>ផលិតផល</th>
                                    <th>#</th>
                                    <th class="text-center">តម្លៃ</th>
                                    <th class="text-center">សរុប</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach var="cartItem" items="${order.cart.cartItems}">
                                    <tr>
                                        <td class="col-md-9"><em>${cartItem.product.productName}</em></td>
                                        <td class="col-md-1" style="text-align: center;">${cartItem.quantity}</td>
                                        <td class="col-md-1" style="text-align: center;">${cartItem.product.productPrice}</td>
                                        <td class="col-md-1" style="text-align: center;">${cartItem.totalPrice}</td>
                                    </tr>
                                </c:forEach>
                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td class="text-right">
                                        <h4><strong>តម្លៃសរុប:</strong></h4>
                                    </td>
                                    <td class="text-center text-danger">
                                        <h4><strong>${order.cart.grandTotal}</strong></h4>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    </div>
                    <div class="row">
                    <div class="col-xs-10 col-sm-10 col-md-6 col-xs-offset-1 col-sm-offset-1 col-md-offset-3">
                        <input type="hidden" name="_flowExecutionKey" />
                        <button class="btn btn-default" name="_eventId_backToCollectShippingDetail">ទំព័រមុន</button>
                        <input type="submit" value="បញ្ជាទិញ" class="btn btn-default" name="_eventId_orderConfirmed"/>
                        <button class="btn btn-default" name="_eventId_cancel">បញ្ចប់</button>
                    </div>
                    </div>
                </form:form>
            </div>
        </div>
        <%@include file="/WEB-INF/view/template/footer.jsp"%>
