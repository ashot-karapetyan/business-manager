<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Artush
  Date: 5/15/2015
  Time: 1:19 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>

<html>
    <head>
        <title>Business Manager</title>

        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
        <meta name="mobile-web-app-capable" content="yes">
        <meta name="apple-mobile-web-app-capable" content="yes">

        <script src="bower_components/webcomponentsjs/webcomponents.js"></script>

        <link rel="import" href="bower_components/font-roboto/roboto.html">

        <link rel="import" href="bower_components/core-drawer-panel/core-drawer-panel.html">
        <link rel="import" href="bower_components/core-scroll-header-panel/core-scroll-header-panel.html">
        <link rel="import" href="bower_components/core-toolbar/core-toolbar.html">
        <link rel="import" href="bower_components/core-icons/core-icons.html">
        <link rel="import" href="bower_components/core-icons/communication-icons.html">
        <link rel="import" href="bower_components/core-icon/core-icon.html">
        <link rel="import" href="bower_components/core-menu/core-menu.html">
        <link rel="import" href="bower_components/core-menu/core-submenu.html">

        <link rel="import" href="bower_components/paper-item/paper-item.html">

        <link rel="stylesheet" href="styles.css">
    </head>
    <body>
        <div fit layout vertical iron-router>
            <core-drawer-panel touch-action data-drawer-panel responsiveWidth="768px" selected="main">
                <core-scroll-header-panel drawer>
                    <core-toolbar class="toolbar toolbar-dark">
                        <a class="logo" href="/"><img src="/images/white-logo.png"/></a>
                    </core-toolbar>
                    <div layout vertical>
                        <core-menu class="nav">
                            <core-submenu label="Businesses" icon="communication:business" active>
                                <c:forEach var="business" items="${businesses}">
                                    <a href="#">
                                        <paper-item tabindex="0">${business.name}</paper-item>
                                    </a>
                                </c:forEach>
                            </core-submenu>
                            <a href="#">
                                <paper-item tabindex="0">
                                    <core-icon aria-label role="img" icon="settings"></core-icon>
                                    Settings
                                </paper-item>
                            </a>
                            <a href="#">
                                <paper-item tabindex="0">
                                    <core-icon aria-label role="img" icon="help"></core-icon>
                                    Support
                                </paper-item>
                            </a>
                            <a href="/logout.htm">
                                <paper-item tabindex="0">
                                    <core-icon aria-label role="img" icon="exit-to-app"></core-icon>
                                    <div layout vertical>
                                        Sign out
                                        <span class="type-caption"><security:authentication property="principal.username"/></span>
                                    </div>
                                </paper-item>
                            </a>
                        </core-menu>
                    </div>
                </core-scroll-header-panel>
                <core-scroll-header-panel main>
                    <core-toolbar class="toolbar toolbar-primary">
                        <paper-icon-button role="button" tabindex="0" icon="menu" class="hidden-sm" data-action="toggle-drawer" aria-label="menu"></paper-icon-button>
                        <h3>Welcome to Business cycle</h3>
                    </core-toolbar>
                    <div class="content">
                        <div horizontal layout class="welcome">
                            <paper-shadow z="2" class="card card-min800 card-padded">
                                <h1 style="margin-bottom: 1.5em;">Let's get started</h1>
                                <img src="/images/ry.png" style="-webkit-border-radius: 150px; -moz-border-radius: 150px; width: 15%; float:left; margin: -20px 20px 0 0;">
                                <p>
                                    Next step is to schedule a 30-min chat with Ry, our product co-founder.
                                    He will walk through the product, answer any questions, and
                                    get you on the right track.
                                </p>
                                <div class="panel-body"></div>
                            </paper-shadow>
                        </div>
                    </div>
                </core-scroll-header-panel>
            </core-drawer-panel>
        </div>
    </body>

</html>

