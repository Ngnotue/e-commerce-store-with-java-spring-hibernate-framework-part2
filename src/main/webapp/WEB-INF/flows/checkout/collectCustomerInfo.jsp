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

        <h4>ព័ត៌មានលម្អិត</h4>

        <div class="form-group">
            <label for="name">ឈ្មោះ</label>
            <form:input path="cart.customer.customerName" id="name" cssClass="form-control" />
        </div>

        <div class="form-group">
            <label for="email">អ៊ីមែល</label>
            <form:input path="cart.customer.customerEmail" id="email" cssClass="form-control" />
        </div>

        <div class="form-group">
            <label for="phone">ទូរស័ព្ទ</label>
            <form:input path="cart.customer.customerPhone" id="phone" cssClass="form-control" />
        </div>
        <br><br>
        <h4>អាសយដ្ឋានវិក័យប័ត្រ</h4>

        <div class="form-group">
            <label for="billingStreet">មហាវិថី រឺផ្លូវ</label>
            <form:input path="cart.customer.billingAddress.streetName" id="billingStreet" cssClass="form-control" />
        </div>

        <div class="form-group">
            <label for="billingApartmentNumber">ផ្ទះលេខ</label>
            <form:input path="cart.customer.billingAddress.apartmentNumber" id="billingApartmentNumber" cssClass="form-control" />
        </div>

        <div class="form-group">
            <label for="billingCity">ក្រុង</label>
            <form:input path="cart.customer.billingAddress.city" id="billingCity" cssClass="form-control" />
        </div>

        <div class="form-group">
            <label for="billingState">រដ្ឋ</label>
            <form:input path="cart.customer.billingAddress.state" id="billingState" cssClass="form-control" />
        </div>

        <div class="form-group">
            <label for="billingCountry">ប្រទេស</label>
            <form:input path="cart.customer.billingAddress.country" id="billingCountry" cssClass="form-control" />
        </div>

        <div class="form-group">
            <label for="billingZipCode">លេខកូដតំបន់</label>
            <form:input path="cart.customer.billingAddress.zipCode" id="billingZipCode" cssClass="form-control" />
        </div>

        <input type="hidden" name="_flowExecutionKey" />

        <br><br>
        <input type="submit" value="បន្ទាប់" class="btn btn-default" name="_eventId_customerInfoCollected"/>
        <button class="btn btn-default" name="_eventId_cancel">បញ្ចប់</button>
        </div>
    </form:form>
        <%@include file="/WEB-INF/view/template/footer.jsp"%>
