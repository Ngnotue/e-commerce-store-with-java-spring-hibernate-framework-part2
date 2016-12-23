<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--
  Created by IntelliJ IDEA.
  User: Yuth
  Date: 12/2/2016
  Time: 3:06 PM
  To change this template use File | Settings | File Templates.
--%>

<!-- Carousel
================================================== -->
<%@include file="/WEB-INF/view/template/header.jsp"%>

<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner" role="listbox">
        <div class="item active">
            <img class="first-slide home-image" src="<c:url value="/resources/images/bg1.jpg" /> " alt="First slide">
            <div class="container">
                <div class="carousel-caption">
                    <h1>តន្ត្រីគឺជាចំណែកមួយជួយដល់អារម្មណ៍</h1>
                    <p>ការស្តាប់ចម្រៀង អាចជួយបំបាត់ភាពនឿយក្នុងអារម្មណ៍ តែកុំស្តាប់បទឈឺចាប់ច្រើនពេក</p>
                    <p><a class="btn btn-lg btn-primary" href="#" role="button">សូមធ្វើការចុះឈ្មោះ</a></p>
                </div>
            </div>
        </div>
        <div class="item">
            <img class="second-slide home-image" src="<c:url value="/resources/images/bg2.jpg" /> " alt="Second slide">
            <div class="container">
                <div class="carousel-caption">
                    <h1>តន្ត្រីគឺជាចំណែកមួយជួយដល់អារម្មណ៍</h1>
                    <p>ការស្តាប់ចម្រៀង អាចជួយបំបាត់ភាពនឿយក្នុងអារម្មណ៍ តែកុំស្តាប់បទឈឺចាប់ច្រើនពេក</p>
                    <p><a class="btn btn-lg btn-primary" href="#" role="button">សូមធ្វើការចុះឈ្មោះ</a></p>
                </div>
            </div>
        </div>
        <div class="item">
            <img class="third-slide home-image" src="<c:url value="/resources/images/bg3.jpg" /> " alt="Third slide">
            <div class="container">
                <div class="carousel-caption">
                    <h1>តន្ត្រីគឺជាចំណែកមួយជួយដល់អារម្មណ៍</h1>
                    <p>ការស្តាប់ចម្រៀង អាចជួយបំបាត់ភាពនឿយក្នុងអារម្មណ៍ តែកុំស្តាប់បទឈឺចាប់ច្រើនពេក</p>
                    <p><a class="btn btn-lg btn-primary" href="#" role="button">សូមធ្វើការចុះឈ្មោះ</a></p>
                </div>
            </div>
        </div>
    </div>
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div><!-- /.carousel -->


<!-- Marketing messaging and featurettes
================================================== -->
<!-- Wrap the rest of the page in another container to center all the content. -->

<div class="container marketing">

    <!-- Three columns of text below the carousel -->
    <div class="row">
        <div class="col-lg-4">
            <img class="img-circle" src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" alt="Generic placeholder image" width="140" height="140">
            <h2>ផលិតផលផ្សេងៗ</h2>
            <p>ដោយថ្មីៗនេះ លេចចេញឈ្មោះស្មាតហ្វូន Motor X ដែលជាស្មាតហ្វូន Motorola គ្រោងនឹងអាចចេញ នៅឆ្នាំក្រោយ នេះ</p>
            <p><a class="btn btn-default" href="#" role="button">ព័ត៌មានលម្អិត &raquo;</a></p>
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4">
            <img class="img-circle" src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" alt="Generic placeholder image" width="140" height="140">
            <h2>ផលិតផលផ្សេងៗ</h2>
            <p>ដោយថ្មីៗនេះ លេចចេញឈ្មោះស្មាតហ្វូន Motor X ដែលជាស្មាតហ្វូន Motorola គ្រោងនឹងអាចចេញ នៅឆ្នាំក្រោយ នេះ</p>
            <p><a class="btn btn-default" href="#" role="button">ព័ត៌មានលម្អិត &raquo;</a></p>
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4">
            <img class="img-circle" src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" alt="Generic placeholder image" width="140" height="140">
            <h2>ផលិតផលផ្សេងៗ</h2>
            <p>ដោយថ្មីៗនេះ លេចចេញឈ្មោះស្មាតហ្វូន Motor X ដែលជាស្មាតហ្វូន Motorola គ្រោងនឹងអាចចេញ នៅឆ្នាំក្រោយ នេះ</p>
            <p><a class="btn btn-default" href="#" role="button">ព័ត៌មានលម្អិត &raquo;</a></p>
        </div><!-- /.col-lg-4 -->
    </div><!-- /.row -->
<%@include file="/WEB-INF/view/template/footer.jsp"%>