<%--
  Created by IntelliJ IDEA.
  User: Yuth
  Date: 12/22/2016
  Time: 10:11 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="/WEB-INF/view/template/header.jsp"%>

<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h3>អតិថិជន</h3>
            <p class="load">ព័ត៌មានលម្អិតពីអតិថិជន</p>
        </div>

        <form:form commandName="order" cssClass="form-horizontal">
        <div class="container">
        <h4>អាសយដ្ឋានទទួលទំនិញ</h4>

        <div class="form-group">
            <label for="shippingStreet">មហាវិថី រឺផ្លូវ</label>
            <form:input path="cart.customer.shippingAddress.streetName" id="shippingStreet" cssClass="form-control" />
        </div>

        <div class="form-group">
            <label for="shippingApartmentNumber">ផ្ទះលេខ</label>
            <form:input path="cart.customer.shippingAddress.apartmentNumber" id="shippingApartmentNumber" cssClass="form-control" />
        </div>

        <div class="form-group">
            <label for="shippingCity">ក្រុង</label>
            <form:input path="cart.customer.shippingAddress.city" id="shippingCity" cssClass="form-control" />
        </div>

        <div class="form-group">
            <label for="shippingState">រដ្ឋ</label>
            <form:input path="cart.customer.shippingAddress.state" id="shippingState" cssClass="form-control" />
        </div>

        <div class="form-group">
            <label for="shippingCountry">ប្រទេស</label>
            <form:input path="cart.customer.shippingAddress.country" id="shippingCountry" cssClass="form-control" />
        </div>

        <div class="form-group">
            <label for="shippingZipCode">លេខកូដតំបន់</label>
            <form:input path="cart.customer.shippingAddress.zipCode" id="shippingZipCode" cssClass="form-control" />
        </div>

        <input type="hidden" name="_flowExecutionKey" />

        <br><br>
        <button class="btn btn-default" name="_eventId_backToCollectCustomerInfo">ទំព័រមុន</button>
        <input type="submit" value="បន្ទាប់" class="btn btn-default" name="_eventId_shippingDetailCollected"/>
        <button class="btn btn-default" name="_eventId_cancel">បញ្ចប់</button>
        </div>
        </form:form>
        <%@include file="/WEB-INF/view/template/footer.jsp"%>
