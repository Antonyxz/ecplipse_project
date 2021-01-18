<%@page pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="sidebar sidebar-hide-to-small sidebar-shrink sidebar-gestures">
    <div class="nano">
        <div class="nano-content">
            <ul>
                <div class="logo"><a href="index.html"><!-- <img src="assets/images/logo.png" alt="" /> --><span>良品后台</span></a></div>
                <li class="label">概要</li>
                <li><a class="sidebar-sub-toggle"><i class="ti-home"></i>信息<span class="sidebar-collapse-icon ti-angle-down"></span></a>
                    <ul>
                        <li><a href="${APP_PATH}/hindex.htm">网站信息</a></li>
                    </ul>
                </li>
                <li class="label">网页设置</li>
                <li><a class="sidebar-sub-toggle"><i class="ti-bar-chart-alt"></i>  共有数据  <span class="sidebar-collapse-icon ti-angle-down"></span></a>
                    <ul>
                        <li><a href="${APP_PATH}/hfirstpage.htm">第一页</a></li>
                        <li><a href="${APP_PATH}/hsecondpage.htm">第二页</a></li>
                    </ul>
                </li>
                <li><a class="sidebar-sub-toggle"><i class="ti-bar-chart-alt"></i>  用户数据  <span class="sidebar-collapse-icon ti-angle-down"></span></a>
                    <ul>
                        <li><a href="chart-flot.html">用户基本信息</a></li>
                        <li><a href="chart-morris.html">用户标签信息</a></li>
                    </ul>
                </li>
                <li><a href="app-event-calender.html"><i class="ti-calendar"></i> 日程 </a></li>
            </ul>
        </div>
    </div>
</div>