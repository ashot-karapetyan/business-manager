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

    <link rel="import" href="/bower_components/google-chart/google-chart.html">

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
    <link rel="import" href="/bower_components/paper-dropdown/paper-dropdown.html">
    <link rel="import" href="/bower_components/paper-menu-button/paper-menu-button.html">

    <link rel="stylesheet" href="/styles.css">
</head>
<body>

<template is="auto-binding" id="dashboard">
<%--<core-ajax auto--%>
           <%--url="http://jsonplaceholder.typicode.com/comments"--%>
           <%--handleAs="json"--%>
           <%--response="{{comments}}">--%>
<%--</core-ajax>--%>
    <core-media-query query="min-width: 768px" queryMatches="{{drawerOpenMode}}"></core-media-query>
    <core-media-query query="min-width: 650px" queryMatches="{{phoneMode}}"></core-media-query>

    <div fit layout vertical iron-router>
        <core-drawer-panel id="drawerPanel"
                           touch-action
                           data-drawer-panel
                           drawerWidth="{{drawerOpenMode ? '70px' : '256px'}}"
                           responsiveWidth="768px" selected="main">
            <core-scroll-header-panel drawer>
                <core-toolbar class="toolbar toolbar-dark">
                    <a class="logo hide" href="/"><img src="/images/white-logo.png"/></a>
                </core-toolbar>
                <div layout vertical>
                    <core-menu class="nav" selected="{{page}}" valueattr="data-category">
                        <a href="#" data-category="summary">
                            <paper-item tabindex="0">
                                <core-icon aria-label role="img" icon="editor:insert-chart"></core-icon>
                                <span class="hide">Summary</span>
                            </paper-item>
                        </a>
                        <a href="#" data-category="market">
                            <paper-item tabindex="0">
                                <core-icon aria-label role="img" icon="store"></core-icon>
                                <span class="hide">Markets</span>
                            </paper-item>
                        </a>
                        <a href="#" data-category="product">
                            <paper-item tabindex="0">
                                <core-icon aria-label role="img" icon="redeem"></core-icon>
                                <span class="hide">Products</span>
                            </paper-item>
                        </a>
                        <a href="#" data-category="provider">
                            <paper-item tabindex="0">
                                <core-icon aria-label role="img" icon="maps:local-shipping"></core-icon>
                                <span class="hide">Providers</span>
                            </paper-item>
                        </a>
                        <a href="#" data-category="settings">
                            <paper-item tabindex="0">
                                <core-icon aria-label role="img" icon="settings"></core-icon>
                                <span class="hide">Settings</span>
                            </paper-item>
                        </a>
                        <a href="#" data-category="support">
                            <paper-item tabindex="0">
                                <core-icon aria-label role="img" icon="help"></core-icon>
                                <span class="hide">Support</span>
                            </paper-item>
                        </a>
                        <a href="/logout.htm">
                            <paper-item tabindex="0">
                                <core-icon aria-label role="img" icon="exit-to-app"></core-icon>
                                <div layout vertical>
                                    <span class="hide">
                                        Sign out
                                        <span style="display: block;" class="type-caption"><security:authentication property="principal.username"/></span>
                                    </span>
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
                            <div class="page-content page-content-min">
                                <div layout vertical>
                                    <paper-shadow z="1" class="card">
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

                                                        <core-icon aria-label style="height: 20px;" role="img"
                                                                   class="{{market.profit >= 0 ? (market.profit > 0 ? 'trending-up' : 'trending-neutral') : 'trending-down' }}"
                                                                   icon="{{market.profit >= 0 ? (market.profit > 0 ? 'trending-up' : '') : 'trending-down' }}">
                                                        </core-icon>
                                                        <span class="{{market.profit >= 0 ? (market.profit > 0 ? 'trending-up' : 'trending-neutral') : 'trending-down' }}">{{market.profit}}դր</span>
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
                                    <paper-shadow z="1" class="card">
                                        <google-chart
                                                cols='[{"label": "Data", "type": "string"},{"label": "Value", "type": "number"}]'
                                                rows='[ ["Something", 1] ]'>
                                        </google-chart>
                                    </paper-shadow>
                                </div>
                            </div>
                        </section>
                        <section data-category="market">
                            <div class="page-content page-content-min" layout="" horizontal="">
                                <div layout vertical flex="" class="{{activeMarketId != null ? 'hide-details' : ''}}">
                                    <paper-shadow z="1" class="card">
                                        <core-menu class="nav" selected="{{activeMarketId}}" valueattr="data-category">
                                            <template repeat="{{market in markets}}">
                                                <a href="#" data-category="{{market.id}}">
                                                    <paper-item style="border-bottom: 1px solid #ccc;" tabindex="0">
                                                        <div layout="" horizontal="" style="width: 100%;">
                                                            <div flex="">{{market.name}}</div>
                                                            <div style="font-size: small; font-style: italic">
                                                                <core-icon aria-label style="height: 20px; margin-right: 0px;" role="img"
                                                                           class="{{market.profit >= 0 ? (market.profit > 0 ? 'trending-up' : 'trending-neutral') : 'trending-down' }}"
                                                                           icon="{{market.profit >= 0 ? (market.profit > 0 ? 'trending-up' : '') : 'trending-down' }}">
                                                                </core-icon>
                                                                <span class="{{market.profit >= 0 ? (market.profit > 0 ? 'trending-up' : 'trending-neutral') : 'trending-down' }}">{{market.profit}}դր</span>
                                                            </div>
                                                        </div>
                                                    </paper-item>
                                                </a>
                                            </template>
                                        </core-menu>
                                    </paper-shadow>
                                </div>
                                <div flex="" two style="margin-left: 2px;" class="{{activeMarketId == null ? 'hide-details' : ''}}">
                                    <div layout="" vertical="">
                                        {{setActiveMarket(activeMarketId)}}
                                        <paper-shadow z="1" class="card card-details">
                                            <div layout="" horizontal="" center="" style="text-align: center" class="list-item">
                                                <div class="details-back-btn" flex="" layout="" horizontal="" center="" start-justified="">
                                                    <paper-icon-button role="button" on-click="{{backMarket}}" tabindex="0" icon="arrow-back" class="icon-light" aria-label="more-vert"></paper-icon-button>
                                                </div>
                                                <div flex five>
                                                    {{activeMarket.name}}
                                                </div>
                                                <div flex="" three style="font-size: small" class="hide-min-phone-mode">
                                                    <span style="margin-right: 10px;">{{activeMarket.buy.quantity}}կգ</span>
                                                    <span style="margin-right: 10px;">{{activeMarket.buy.price}}դր</span>
                                                </div>
                                                <div flex="" three="" style="font-size: small" class="hide-min-phone-mode">
                                                    <span style="margin-right: 10px;">{{activeMarket.sell.quantity}}կգ</span>
                                                    <span style="margin-right: 10px;">{{activeMarket.sell.price}}դր</span>
                                                </div>
                                                <div flex="" three="" style="font-size: small">
                                                    <core-icon aria-label style="height: 20px;" role="img"
                                                               class="{{activeMarket.profit >= 0 ? (activeMarket.profit > 0 ? 'trending-up' : 'trending-neutral') : 'trending-down' }}"
                                                               icon="{{activeMarket.profit >= 0 ? (activeMarket.profit > 0 ? 'trending-up' : ' ') : 'trending-down' }}">
                                                    </core-icon>
                                                    <span class="{{activeMarket.profit >= 0 ? (activeMarket.profit > 0 ? 'trending-up' : 'trending-neutral') : 'trending-down' }}">{{activeMarket.profit}}դր</span>
                                                </div>
                                                <div flex="" layout="" horizontal="" center="" end-justified="">
                                                    <paper-menu-button relative="" tabindex="0">
                                                        <paper-icon-button role="button" tabindex="0" icon="more-vert" class="icon-light" aria-label="more-vert"></paper-icon-button>
                                                        <paper-dropdown class="dropdown core-transition core-opened" halign="right" duration="250" tabindex="-1" style="outline: none; z-index: 12; right: 0px; top: 0px;">
                                                            <core-menu class="menu" valueattr="val" organization-menu="">
                                                                <paper-item tabindex="0" val="edit">Edit</paper-item>
                                                                <paper-item tabindex="0" val="delete">Delete</paper-item>
                                                            </core-menu>
                                                        </paper-dropdown>
                                                    </paper-menu-button>
                                                </div>
                                            </div>
                                        </paper-shadow>
                                        <paper-shadow z="1" class="card card-details">
                                            <google-chart
                                                    type='pie'
                                                    options='{"title": "Distribution of sold products"}'
                                                    cols='[{"label": "Products", "type": "string"},{"label": "Quantity", "type": "number"}]'
                                                    rows='[ ["Իշխան", 31],["Թառափ", 28],["Խեցգետին", 31],["Սառեցված", 30],["Ապխտած", 30] ]'>
                                            </google-chart>
                                        </paper-shadow>
                                        <paper-shadow z="1" class="card card-details">
                                            <google-chart
                                                    type='line'
                                                    options='{"title": "Month in a year"}'
                                                    cols='[{"label": "Month", "type": "string"},{"label": "Quantity", "type": "number"}]'
                                                    rows='[ ["Jan", 255],["Feb", 112],["Mar", 234],["Apr", 680],["May", 122] ]'>
                                            </google-chart>
                                        </paper-shadow>
                                    </div>
                                </div>
                            </div>
                        </section>
                        <section data-category="product">
                            <div class="page-content page-content-min" layout="" horizontal="">
                                <div layout vertical flex="" class="{{activeProductId != null ? 'hide-details' : ''}}">
                                    <paper-shadow z="1" class="card">
                                        <core-menu class="nav" selected="{{activeProductId}}" valueattr="data-category">
                                            <template repeat="{{product in products}}">
                                                <a href="#" data-category="{{product.id}}">
                                                    <paper-item style="border-bottom: 1px solid #ccc;" tabindex="0">
                                                        <div layout="" horizontal="" style="width: 100%;">
                                                            <div flex="">{{product.name}}</div>
                                                            <div style="font-size: small; font-style: italic">
                                                                <core-icon aria-label style="height: 20px; margin-right: 0px;" role="img"
                                                                           class="{{product.profit >= 0 ? (product.profit > 0 ? 'trending-up' : 'trending-neutral') : 'trending-down' }}"
                                                                           icon="{{product.profit >= 0 ? (product.profit > 0 ? 'trending-up' : '') : 'trending-down' }}">
                                                                </core-icon>
                                                                <span class="{{product.profit >= 0 ? (product.profit > 0 ? 'trending-up' : 'trending-neutral') : 'trending-down' }}">{{product.profit}}դր</span>
                                                            </div>
                                                        </div>
                                                    </paper-item>
                                                </a>
                                            </template>
                                        </core-menu>
                                    </paper-shadow>
                                </div>
                                <div flex="" two style="margin-left: 2px;" class="{{activeProductId == null ? 'hide-details' : ''}}">
                                    <div layout="" vertical="">
                                        {{setActiveProduct(activeProductId)}}
                                        <paper-shadow z="1" class="card card-details">
                                            <div layout="" horizontal="" center="" style="text-align: center" class="list-item">
                                                <div class="details-back-btn" flex="" layout="" horizontal="" center="" start-justified="">
                                                    <paper-icon-button role="button" on-click="{{backProduct}}" tabindex="0" icon="arrow-back" class="icon-light" aria-label="more-vert"></paper-icon-button>
                                                </div>
                                                <div flex five>
                                                    {{activeProduct.name}}
                                                </div>
                                                <div flex="" three style="font-size: small" class="hide-min-phone-mode">
                                                    <span style="margin-right: 10px;">{{activeProduct.buy.quantity}}կգ</span>
                                                    <span style="margin-right: 10px;">{{activeProduct.buy.price}}դր</span>
                                                </div>
                                                <div flex="" three="" style="font-size: small" class="hide-min-phone-mode">
                                                    <span style="margin-right: 10px;">{{activeProduct.sell.quantity}}կգ</span>
                                                    <span style="margin-right: 10px;">{{activeProduct.sell.price}}դր</span>
                                                </div>
                                                <div flex="" three="" style="font-size: small">
                                                    <core-icon aria-label style="height: 20px;" role="img"
                                                               class="{{activeProduct.profit >= 0 ? (activeProduct.profit > 0 ? 'trending-up' : 'trending-neutral') : 'trending-down' }}"
                                                               icon="{{activeProduct.profit >= 0 ? (activeProduct.profit > 0 ? 'trending-up' : ' ') : 'trending-down' }}">
                                                    </core-icon>
                                                    <span class="{{activeProduct.profit >= 0 ? (activeProduct.profit > 0 ? 'trending-up' : 'trending-neutral') : 'trending-down' }}">{{activeProduct.profit}}դր</span>
                                                </div>
                                                <div flex="" layout="" horizontal="" center="" end-justified="">
                                                    <paper-menu-button relative="" tabindex="0">
                                                        <paper-icon-button role="button" tabindex="0" icon="more-vert" class="icon-light" aria-label="more-vert"></paper-icon-button>
                                                        <paper-dropdown class="dropdown core-transition core-opened" halign="right" duration="250" tabindex="-1" style="outline: none; z-index: 12; right: 0px; top: 0px;">
                                                            <core-menu class="menu" valueattr="val" organization-menu="">
                                                                <paper-item tabindex="0" val="edit">Edit</paper-item>
                                                                <paper-item tabindex="0" val="delete">Delete</paper-item>
                                                            </core-menu>
                                                        </paper-dropdown>
                                                    </paper-menu-button>
                                                </div>
                                            </div>
                                        </paper-shadow>
                                        <paper-shadow z="1" class="card card-details">
                                            <google-chart
                                                    type='pie'
                                                    options='{"title": "Distribution of sold markets"}'
                                                    cols='[{"label": "Products", "type": "string"},{"label": "Quantity", "type": "number"}]'
                                                    rows='[ ["Մարալիկ Կրպակ", 51],["Արմավիր Կրպակ", 0],["Կիրովական Կրպակ", 21],["Դիլիջան Կրպակ", 27],["Երևան Թումանյան", 40],["Երևան Տիգրան Մեծ", 36],["Երևան Ռայկոմ", 19],["Մասիս Կրպակ", 10] ]'>
                                            </google-chart>
                                        </paper-shadow>
                                        <paper-shadow z="1" class="card card-details">
                                            <google-chart
                                                    type='line'
                                                    options='{"title": "Month in a year"}'
                                                    cols='[{"label": "Month", "type": "string"},{"label": "Quantity", "type": "number"}]'
                                                    rows='[ ["Jan", 255],["Feb", 112],["Mar", 234],["Apr", 680],["May", 122] ]'>
                                            </google-chart>
                                        </paper-shadow>
                                    </div>
                                </div>
                            </div>
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
    data.push({name: "Մարալիկ Կրպակ", id:1, buy: {quantity: 61, price: 67200}, sell: {quantity: 122, price: 222249}, profit: 155049});
    data.push({name: "Արմավիր Կրպակ", id:2, buy: {quantity: 0, price: 0}, sell: {quantity: 0, price: 0}, profit: 0});
    data.push({name: "Կիրովական Կրպակ", id:3, buy: {quantity: 12, price: 22915}, sell: {quantity: 11, price: 23736}, profit: -821});
    data.push({name: "Դիլիջան Կրպակ", id:4, buy: {quantity: 0, price: 0}, sell: {quantity: 19, price: 46609}, profit: 46609});
    data.push({name: "Երևան Թումանյան", id:5, buy: {quantity: 155, price: 247120}, sell: {quantity: 165, price: 354956}, profit: 107836});
    data.push({name: "Երևան Տիգրան Մեծ", id:6, buy: {quantity: 70, price: 110680}, sell: {quantity: 94, price: 203680}, profit: 93000});
    data.push({name: "Երևան Ռայկոմ", id:7, buy: {quantity: 43, price: 71400}, sell: {quantity: 37, price: 78880}, profit: -7480});
    data.push({name: "Մասիս Կրպակ", id:8, buy: {quantity: 21, price: 33120}, sell: {quantity: 20, price: 42181}, profit: 9061});
    dashboard.markets = data;
    dashboard.activeMarketId = dashboard.phoneMode ? null : 1;
    dashboard.activeMarket = {};
    dashboard.setActiveMarket = function(marketId) {
        dashboard.markets.forEach(function(market) {
            if(market.id == Number(marketId)) {
                dashboard.activeMarket = market;
            }
        });
    };
    dashboard.backMarket = function() {
        dashboard.activeMarketId = null;
    }



    var products = [];
    products.push({name: "Իշխան", id:1, buy: {quantity: 61, price: 67200}, sell: {quantity: 122, price: 222249}, profit: 155049});
    products.push({name: "Թառափ", id:2, buy: {quantity: 0, price: 0}, sell: {quantity: 0, price: 0}, profit: 0});
    products.push({name: "Խեցգետին", id:3, buy: {quantity: 12, price: 22915}, sell: {quantity: 11, price: 23736}, profit: -821});
    products.push({name: "Սառեցված", id:4, buy: {quantity: 0, price: 0}, sell: {quantity: 19, price: 46609}, profit: 46609});
    products.push({name: "Ապխտած", id:5, buy: {quantity: 155, price: 247120}, sell: {quantity: 165, price: 354956}, profit: 107836});
    dashboard.products = products;
    dashboard.activeProductId = dashboard.phoneMode ? null : 1;
    dashboard.activeProduct = {};
    dashboard.setActiveProduct = function(productId) {
        dashboard.products.forEach(function(product) {
            if(product.id == Number(productId)) {
                dashboard.activeProduct = product;
            }
        });
    };
    dashboard.backProduct = function() {
        dashboard.activeProductId = null;
    }


</script>
</body>
</html>