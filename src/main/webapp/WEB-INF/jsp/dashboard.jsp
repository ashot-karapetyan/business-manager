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

    <script src="/bower_components/webcomponentsjs/webcomponents.js"></script>

    <link rel="import" href="/bower_components/font-roboto/roboto.html">

    <link rel="import" href="/bower_components/core-drawer-panel/core-drawer-panel.html">
    <link rel="import" href="/bower_components/core-scroll-header-panel/core-scroll-header-panel.html">
    <link rel="import" href="/bower_components/core-toolbar/core-toolbar.html">

    <link rel="import" href="/bower_components/core-pages/core-pages.html">
    <link rel="import" href="/bower_components/core-ajax/core-ajax.html">
    <link rel="import" href="/bower_components/core-list/core-list.html">

    <link rel="import" href="/bower_components/core-icons/core-icons.html">
    <link rel="import" href="/bower_components/core-icons/communication-icons.html">
    <link rel="import" href="/bower_components/core-icons/maps-icons.html">
    <link rel="import" href="/bower_components/core-icons/editor-icons.html">
    <link rel="import" href="/bower_components/core-icon/core-icon.html">

    <link rel="import" href="/bower_components/core-menu/core-menu.html">
    <link rel="import" href="/bower_components/core-menu/core-submenu.html">

    <link rel="import" href="/bower_components/paper-item/paper-item.html">
    <link rel="import" href="/bower_components/paper-fab/paper-fab.html">
    <link rel="import" href="/bower_components/paper-shadow/paper-shadow.html">
    <link rel="import" href="/bower_components/paper-icon-button/paper-icon-button.html">

    <link rel="stylesheet" href="/styles.css">
</head>
<body>

<template is="auto-binding" id="dashboard">
        <core-ajax auto
                   url="http://jsonplaceholder.typicode.com/comments"
                   handleAs="json"
                   response="{{comments}}">
        </core-ajax>

    <div fit layout vertical iron-router>
        <core-drawer-panel touch-action data-drawer-panel responsiveWidth="768px" selected="main">
            <core-scroll-header-panel drawer>
                <core-toolbar class="toolbar toolbar-dark">
                    <a class="logo" href="/"><img src="/images/white-logo.png"/></a>
                </core-toolbar>
                <div layout vertical>
                    <core-menu class="nav" selected="{{page}}" valueattr="data-category">
                        <a href="#" data-category="summary">
                            <paper-item tabindex="0">
                                <core-icon aria-label role="img" icon="editor:insert-chart"></core-icon>
                                Summary
                            </paper-item>
                        </a>
                        <a href="#" data-category="market">
                            <paper-item tabindex="0">
                                <core-icon aria-label role="img" icon="store"></core-icon>
                                Markets
                            </paper-item>
                        </a>
                        <a href="#" data-category="product">
                            <paper-item tabindex="0">
                                <core-icon aria-label role="img" icon="redeem"></core-icon>
                                Products
                            </paper-item>
                        </a>
                        <a href="#" data-category="provider">
                            <paper-item tabindex="0">
                                <core-icon aria-label role="img" icon="maps:local-shipping"></core-icon>
                                Providers
                            </paper-item>
                        </a>
                        <hr/>
                        <a href="#" data-category="settings">
                            <paper-item tabindex="0">
                                <core-icon aria-label role="img" icon="settings"></core-icon>
                                Settings
                            </paper-item>
                        </a>
                        <a href="#" data-category="support">
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
                    <paper-icon-button role="button" tabindex="0" icon="menu" class="hidden-sm" core-drawer-toggle aria-label="menu"></paper-icon-button>
                    <h3>{{page}}</h3>
                </core-toolbar>
                <div class="content" flex>
                    <core-pages selected="{{page}}" valueattr="data-category">
                        <section data-category="summary">
                            <div class="page-content">
                                <div layout vertical>
                                    <paper-shadow z="1" class="card card-min800">
                                        <ul layout="" vertical="" class="list">
                                            <li layout="" horizontal="" center="" style="text-align: center; background-color: #009688" class="list-item">
                                                <div flex five style="font-style: italic">
                                                    Market
                                                </div>
                                                <div flex="" three style="font-style: italic">
                                                    Buy
                                                </div>
                                                <div flex="" three="" style="font-style: italic">
                                                    Sell
                                                </div>
                                                <div flex="" three="" style="font-style: italic">
                                                    Profit
                                                </div>
                                                <div flex="" >

                                                </div>
                                            </li>
                                            <template repeat="{{market in markets}}">
                                                <li layout="" horizontal="" center="" style="text-align: center" class="list-item">
                                                    <div flex five style="font-style: italic">
                                                        {{market.name}}
                                                    </div>
                                                    <div flex="" three style="font-size: small; font-style: italic">
                                                        <span style="margin-right: 10px;">{{market.buy.quantity}}կգ</span>
                                                        <span style="margin-right: 10px;">{{market.buy.price}}դր</span>
                                                    </div>
                                                    <div flex="" three="" style="font-size: small; font-style: italic">
                                                        <span style="margin-right: 10px;">{{market.sell.quantity}}կգ</span>
                                                        <span style="margin-right: 10px;">{{market.sell.price}}դր</span>
                                                    </div>
                                                    <div flex="" three="" style="font-size: small; font-style: italic">

                                                        <core-icon aria-label
                                                                   style="color: {{market.profit >= 0 ? (market.profit > 0 ? 'green' : 'black') : 'red' }}; height: 20px;"
                                                                   role="img" icon="{{market.profit >= 0 ? (market.profit > 0 ? 'trending-up' : '') : 'trending-down' }}">
                                                        </core-icon>
                                                        <span style="color: {{market.profit >= 0 ? (market.profit > 0 ? 'green' : 'black') : 'red' }}">{{market.profit}}դր</span>
                                                    </div>
                                                    <div flex="" layout="" horizontal="" center="" end-justified="">
                                                        <paper-menu-button relative="" tabindex="0">
                                                            <paper-icon-button role="button" tabindex="0" icon="unfold-more" class="icon-light" aria-label="more-vert"></paper-icon-button>
                                                        </paper-menu-button>
                                                    </div>
                                                </li>
                                            </template>
                                        </ul>
                                    </paper-shadow>

                                    <app-summary data="data-summary"></app-summary>

                                    <paper-shadow z="1" class="card card-min800">
                                        <google-chart
                                                type='pie'
                                                options='{"title": "Distribution of days in 2001Q1"}'
                                                cols='[{"label":"Month", "type":"string"}, {"label":"Days", "type":"number"}]'
                                                rows='[["Jan", 31],["Feb", 28],["Mar", 31]]'>
                                        </google-chart>
                                    </paper-shadow>
                                </div>
                            </div>
                        </section>
                        <section data-category="market">
                            <div>Market content</div>
                        </section>
                        <section data-category="product">
                            <div>Product content</div>
                        </section>
                        <section data-category="provider">
                            <div>Provider content</div>
                        </section>
                        <section data-category="settings">
                            <div>Settings content</div>
                        </section>
                        <section data-category="support">
                            <div>Support content</div>
                        </section>
                    </core-pages>
                    <paper-fab role="button" tabindex="0" icon="add" class="fab-bottom" aria-label="add"></paper-fab>
                </div>
            </core-scroll-header-panel>
        </core-drawer-panel>
    </div>

</template>
<script>
    var dashboard = document.querySelector('#dashboard');
    dashboard.page = "summary";

    var data = [];
    data.push({name: "Մարալիկ Կրպակ", buy: {quantity: 61, price: 67200}, sell: {quantity: 122, price: 222249}, profit: 155049});
    data.push({name: "Արմավիր Կրպակ", buy: {quantity: 0, price: 0}, sell: {quantity: 0, price: 0}, profit: 0});
    data.push({name: "Կիրովական Կրպակ", buy: {quantity: 12, price: 22915}, sell: {quantity: 11, price: 23736}, profit: -821});
    data.push({name: "Դիլիջան Կրպակ", buy: {quantity: 0, price: 0}, sell: {quantity: 19, price: 46609}, profit: 46609});
    data.push({name: "Երևան Թումանյան", buy: {quantity: 155, price: 247120}, sell: {quantity: 165, price: 354956}, profit: 107836});
    data.push({name: "Երևան Տիգրան Մեծ", buy: {quantity: 70, price: 110680}, sell: {quantity: 94, price: 203680}, profit: 93000});
    data.push({name: "Երևան Ռայկոմ", buy: {quantity: 43, price: 71400}, sell: {quantity: 37, price: 78880}, profit: -7480});
    data.push({name: "Մասիս Կրպակ", buy: {quantity: 21, price: 33120}, sell: {quantity: 20, price: 42181}, profit: 9061});

    dashboard.markets = data;

</script>
</body>
</html>



<%--<div fit style="overflow: auto; height: 600px;">--%>
<%--<core-list data="{{markets}}" style="height: 100%;" flex>--%>
<%--<template>--%>
<%--<div style="height: 80px; padding: 12px;">--%>
<%--<div>{{model.name}} {{model.buy.quantity}} {{model.buy.price}}</div>--%>
<%--</div>--%>
<%--</template>--%>
<%--</core-list>--%>
<%--</div>--%>