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
            <h3>ចុះឈ្មោះផលិតផលបន្ថែម</h3>
            <p class="load">សូមបញ្ចូលព័ត៌មានអំពីផលិតផល</p>
        </div>

        <form:form action="${pageContext.request.contextPath}/admin/product/addProduct" method="post" commandName="product" enctype="multipart/form-data">
        <div class="form-group">
            <label for="name">ឈ្មោះផលិតផល</label> <form:errors path="productName" cssStyle="color: #ff0000"/>
            <form:input path="productName" id="name" cssClass="form-control" />
        </div>

        <div class="form-group">
            <label for="category">ប្រភេទផលិតផល</label>
            <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category" value="accessory"/>Accessory</label>
            <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category" value="iphone"/>iPhone</label>
            <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category" value="samsung"/>Samsung</label>
        </div>

        <div class="form-group">
            <label for="description">សេចក្តីលម្អិត</label>
            <form:textarea path="productDescription" id="description" cssClass="form-control" />
        </div>

        <div class="form-group">
            <label for="price">តម្លៃ</label> <form:errors path="productPrice" cssStyle="color: #ff0000"/>
            <form:input path="productPrice" id="price" cssClass="form-control" />
        </div>

        <div class="form-group">
            <label for="condition">លក្ខណៈ</label>
            <label class="checkbox-inline"><form:radiobutton path="productCondition" id="condition" value="new"/>ថ្មី</label>
            <label class="checkbox-inline"><form:radiobutton path="productCondition" id="condition" value="used"/>មួយទឹក</label>
        </div>
        <div class="form-group">
            <label for="status">ប្រព័ន្ធដំណើរការ</label>
            <label class="checkbox-inline"><form:radiobutton path="productStatus" id="status" value="active"/>ដំណើរការ</label>
            <label class="checkbox-inline"><form:radiobutton path="productStatus" id="status" value="inactive"/>មិនដំណើរការ</label>
        </div>

        <div class="form-group">
            <label for="unitInStock">ចំនួនក្នុងស្តុក</label> <form:errors path="unitInStock" cssStyle="color: #ff0000"/>
            <form:input path="unitInStock" id="unitInStock" cssClass="form-control" />
        </div>

        <div class="form-group">
            <label for="manufacturer">ក្រុមហ៊ុនផលិត</label>
            <form:input path="productManufacturer" id="manufacturer" cssClass="form-control" />
        </div>

        <div class="form-group">
            <label class="control-label" for="productImage">Upload Picture</label>
            <form:input path="productImage" id="productImage" type="file" cssClass="form:input-large" />
        </div>
        <br><br>
        <input type="submit" value="បញ្ចូល" class="btn btn-success" />
        <a href="<c:url value="/admin/productInventory" />" class="btn btn-info">មិនបញ្ចូល</a>
        </form:form>
<%@include file="/WEB-INF/view/template/footer.jsp"%>