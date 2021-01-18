<%@page pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zh-hans">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>良品后台</title>
        <!-- Styles -->
        <link href="${APP_PATH}/assets/css/lib/calendar2/pignose.calendar.min.css" rel="stylesheet">
        <link href="${APP_PATH}/assets/css/lib/chartist/chartist.min.css" rel="stylesheet">
        <link href="${APP_PATH}/assets/css/lib/font-awesome.min.css" rel="stylesheet">
        <link href="${APP_PATH}/assets/css/lib/themify-icons.css" rel="stylesheet">
        <link href="${APP_PATH}/assets/css/lib/owl.carousel.min.css" rel="stylesheet" />
        <link href="${APP_PATH}/assets/css/lib/owl.theme.default.min.css" rel="stylesheet" />
        <link href="${APP_PATH}/assets/css/lib/weather-icons.css" rel="stylesheet" />
        <link href="${APP_PATH}/assets/css/lib/menubar/sidebar.css" rel="stylesheet">
        <link href="${APP_PATH}/assets/css/lib/bootstrap.min.css" rel="stylesheet">
        <link href="${APP_PATH}/assets/css/lib/helper.css" rel="stylesheet">
        <link href="${APP_PATH}/assets/css/style.css" rel="stylesheet">
    </head>

    <body>
		<jsp:include page="left.jsp" flush="true"/>
		<%@ include file="left.jsp" %>
        <!-- /# sidebar -->

            <div class="header">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12">
                    <div class="float-left">
                        <div class="hamburger sidebar-toggle">
                            <span class="line"></span>
                            <span class="line"></span>
                            <span class="line"></span>
                        </div>
                    </div>
                    <div class="float-right">
                        <div class="dropdown dib">
                            <div class="header-icon" data-toggle="dropdown">
                                <span class="user-avatar">John
                                </span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


        <div class="content-wrap">
            <div class="main">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-8 p-r-0 title-margin-right">
                            <div class="page-header">
                                <div class="page-title">
                                    <h1>Hello, <span>Welcome Here</span></h1>
                                </div>
                            </div>
                        </div>
                        <!-- /# column -->
                        <div class="col-lg-4 p-l-0 title-margin-left">
                            <div class="page-header">
                                <div class="page-title">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item"><a href="#">信息</a></li>
                                        <li class="breadcrumb-item active">网站信息</li>
                                    </ol>
                                </div>
                            </div>
                        </div>
                        <!-- /# column -->
                    </div>
                    <!-- /# row -->
                    <section id="main-content">
                        <div class="row">
                            <div class="col-lg-3">
                                <div class="card">
                                    <div class="stat-widget-one">
                                        <div class="stat-icon dib"><i class="ti-money color-success border-success"></i></div>
                                        <div class="stat-content dib">
                                            <div class="stat-text">当前在线人数</div>
                                            <div class="stat-digit">1,012</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="card">
                                    <div class="stat-widget-one">
                                        <div class="stat-icon dib"><i class="ti-user color-primary border-primary"></i></div>
                                        <div class="stat-content dib">
                                            <div class="stat-text">今日累计访问</div>
                                            <div class="stat-digit">961</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="card">
                                    <div class="stat-widget-one">
                                        <div class="stat-icon dib"><i class="ti-layout-grid2 color-pink border-pink"></i></div>
                                        <div class="stat-content dib">
                                            <div class="stat-text">今日注册人数</div>
                                            <div class="stat-digit">770</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="card">
                                    <div class="stat-widget-one">
                                        <div class="stat-icon dib"><i class="ti-link color-danger border-danger"></i></div>
                                        <div class="stat-content dib">
                                            <div class="stat-text">总访问量</div>
                                            <div class="stat-digit">2,781</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-8">
                                <div class="card">
                                    <div class="card-title">
                                        <h4>每月信息统计</h4>

                                    </div>
                                    <div class="card-body">
                                        <div class="ct-bar-chart m-t-30"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="card">

                                    <div class="card-body">
                                        <div class="ct-pie-chart"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                </div>
            </div>
        </div>
        
        <!-- jquery vendor -->
        <script src="${APP_PATH}/assets/js/lib/jquery.min.js"></script>
        <script src="${APP_PATH}/assets/js/lib/jquery.nanoscroller.min.js"></script>
        <!-- nano scroller -->
        <script src="${APP_PATH}/assets/js/lib/menubar/sidebar.js"></script>
        <script src="${APP_PATH}/assets/js/lib/preloader/pace.min.js"></script>
        <!-- sidebar -->

        <script src="${APP_PATH}/assets/js/lib/bootstrap.min.js"></script><script src="assets/js/scripts.js"></script>
        <!-- bootstrap -->

        <script src="${APP_PATH}/assets/js/lib/calendar-2/moment.latest.min.js"></script>
        <script src="${APP_PATH}/assets/js/lib/calendar-2/pignose.calendar.min.js"></script>
        <script src="${APP_PATH}/assets/js/lib/calendar-2/pignose.init.js"></script>


        <script src="${APP_PATH}/assets/js/lib/weather/jquery.simpleWeather.min.js"></script>
        <script src="${APP_PATH}/assets/js/lib/weather/weather-init.js"></script>
        <script src="${APP_PATH}/assets/js/lib/circle-progress/circle-progress.min.js"></script>
        <script src="${APP_PATH}/assets/js/lib/circle-progress/circle-progress-init.js"></script>
        <script src="${APP_PATH}/assets/js/lib/chartist/chartist.min.js"></script>
        <script src="${APP_PATH}/assets/js/lib/sparklinechart/jquery.sparkline.min.js"></script>
        <script src="${APP_PATH}/assets/js/lib/sparklinechart/sparkline.init.js"></script>
        <script src="${APP_PATH}/assets/js/lib/owl-carousel/owl.carousel.min.js"></script>
        <script src="${APP_PATH}/assets/js/lib/owl-carousel/owl.carousel-init.js"></script>
        <!-- scripit init-->
    <script src="${APP_PATH}/assets/js/dashboard2.js"></script>
    </body>

</html>
