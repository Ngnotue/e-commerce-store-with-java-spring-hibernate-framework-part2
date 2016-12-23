<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--
  Created by IntelliJ IDEA.
  User: Yuth
  Date: 12/2/2016
  Time: 3:06 PM
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="/WEB-INF/view/template/header.jsp"%>

<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h3>សូមធ្វើការចុះឈ្មោះជាអតិថិជន</h3>
            <p class="load">សូមបញ្ចូលព័ត៌មានលម្អិតពីអតិថិជន</p>
        </div>

        <form:form action="${pageContext.request.contextPath}/register" method="post" commandName="customer">
        
        <h3>ព័ត៌មានលម្អិត</h3>
        
        <div class="form-group">
            <label for="name">ឈ្មោះ</label><form:errors path="customerName" cssClass="color: #ff0000" />
            <form:input path="customerName" id="name" cssClass="form-control" />
        </div>

        <div class="form-group">
            <label for="email">អ៊ីមែល</label><span style="color: #ff0000">${emailMsg}</span><form:errors path="customerEmail" cssClass="color: #ff0000" />
            <form:input path="customerEmail" id="email" cssClass="form-control" />
        </div>

        <div class="form-group">
            <label for="phone">ទូរស័ព្ទ</label>
            <form:input path="customerPhone" id="phone" cssClass="form-control" />
        </div>

        <div class="form-group">
            <label for="username">ឈ្មោះអ្នកប្រើប្រាស់</label><span style="color: #ff0000">${usernameMsg}</span><form:errors path="username" cssClass="color: #ff0000" />
            <form:input path="username" id="username" cssClass="form-control" />
        </div>

        <div class="form-group">
            <label for="password">លេខសម្ងាត់</label><form:errors path="password" cssClass="color: #ff0000" />
            <form:password path="password" id="password" cssClass="form-control" />
        </div>

        
        <h3>អាសយដ្ឋានវិក័យប័ត្រ</h3>

        <div class="form-group">
            <label for="billingStreet">មហាវិថី រឺផ្លូវ</label>
            <form:input path="billingAddress.streetName" id="billingStreet" cssClass="form-control" />
        </div>

        <div class="form-group">
            <label for="billingApartmentNumber">ផ្ទះលេខ</label>
            <form:input path="billingAddress.apartmentNumber" id="billingApartmentNumber" cssClass="form-control" />
        </div>

        <div class="form-group">
            <label for="billingCity">ក្រុង</label>
            <form:input path="billingAddress.city" id="billingCity" cssClass="form-control" />
        </div>

        <div class="form-group">
            <label for="billingState">រដ្ឋ</label>
            <form:input path="billingAddress.state" id="billingState" cssClass="form-control" />
        </div>

        <div class="form-group">
            <label for="billingCountry">ប្រទេស</label>
            <form:input path="billingAddress.country" id="billingCountry" cssClass="form-control" />
        </div>

        <div class="form-group">
            <label for="billingZipCode">លេខកូដតំបន់</label>
            <form:input path="billingAddress.zipCode" id="billingZipCode" cssClass="form-control" />
        </div>


        <h3>អាសយដ្ឋានទទួលទំនិញ</h3>

        <div class="form-group">
            <label for="shippingStreet">មហាវិថី រឺផ្លូវ</label>
            <form:input path="shippingAddress.streetName" id="shippingStreet" cssClass="form-control" />
        </div>

        <div class="form-group">
            <label for="shippingApartmentNumber">ផ្ទះលេខ</label>
            <form:input path="shippingAddress.apartmentNumber" id="shippingApartmentNumber" cssClass="form-control" />
        </div>

        <div class="form-group">
            <label for="shippingCity">ក្រុង</label>
            <form:input path="shippingAddress.city" id="shippingCity" cssClass="form-control" />
        </div>

        <div class="form-group">
            <label for="shippingState">រដ្ឋ</label>
            <form:input path="shippingAddress.state" id="shippingState" cssClass="form-control" />
        </div>

        <div class="form-group">
            <label for="shippingCountry">ប្រទេស</label>
            <form:input path="shippingAddress.country" id="shippingCountry" cssClass="form-control" />
        </div>

        <div class="form-group">
            <label for="shippingZipCode">លេខកូដតំបន់</label>
            <form:input path="shippingAddress.zipCode" id="shippingZipCode" cssClass="form-control" />
        </div>

        <br><br>
        <input type="submit" value="បញ្ចូល" class="btn btn-success" />
        <a href="<c:url value="/" />" class="btn btn-info">មិនបញ្ចូល</a>
        </form:form>
<%@include file="/WEB-INF/view/template/footer.jsp"%>