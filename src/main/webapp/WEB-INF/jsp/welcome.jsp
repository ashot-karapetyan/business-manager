<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
    <head>
        <title>Business Manager</title>

        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
        <meta name="mobile-web-app-capable" content="yes">
        <meta name="apple-mobile-web-app-capable" content="yes">

        <script src="bower_components/webcomponentsjs/webcomponents.js"></script>

        <link rel="import" href="bower_components/font-roboto/roboto.html">

        <link rel="import" href="bower_components/core-scroll-header-panel/core-scroll-header-panel.html">
        <link rel="import" href="bower_components/core-toolbar/core-toolbar.html">
        <link rel="import" href="bower_components/core-icons/core-icons.html">
        <link rel="import" href="bower_components/core-icons/communication-icons.html">
        <link rel="import" href="bower_components/core-icons/social-icons.html">
        <link rel="import" href="bower_components/core-icon/core-icon.html">
        <link rel="import" href="bower_components/core-menu/core-menu.html">

        <link rel="import" href="bower_components/paper-button/paper-button.html">
        <link rel="import" href="bower_components/paper-shadow/paper-shadow.html">
        <link rel="import" href="bower_components/paper-input/paper-input-decorator.html">
        <link rel="import" href="bower_components/paper-dropdown/paper-dropdown.html">
        <link rel="import" href="bower_components/paper-item/paper-item.html">
        <link rel="import" href="bower_components/paper-menu-button/paper-menu-button.html">
        <link rel="import" href="bower_components/paper-icon-button/paper-icon-button.html">

        <link rel="stylesheet" href="styles.css">
    </head>
    <body>
        <div fit layout vertical iron-router>
            <core-scroll-header-panel fit>
                <core-toolbar class="toolbar toolbar-primary">
                    <a class="logo" href="/"><img src="/images/white-logo.png"/></a>
                    <div flex></div>
                    <div class="visible-md wide">
                        <div layout horizontal>
                            <paper-item tabindex="0" class="toolbar-item">
                                <a style="height: auto" class="highlight" href="#">Technologies</a>
                            </paper-item>
                            <paper-item tabindex="0" class="toolbar-item">
                                <a style="height: auto" class="highlight" href="#">Services</a>
                            </paper-item>
                            <paper-item tabindex="0" class="toolbar-item">
                                <a style="height: auto" class="highlight" href="#">Success Stories</a>
                            </paper-item>
                            <paper-item tabindex="0" class="toolbar-item">
                                <a style="height: auto" href="#">About Us</a>
                            </paper-item>
                            <paper-item tabindex="0" class="toolbar-item">
                                <a style="height: auto" href="/welcome.htm">Sign In</a>
                            </paper-item>
                        </div>
                    </div>
                    <paper-menu-button relative tabindex="0" class="hidden-md narrow">
                        <paper-icon-button role="button" tabindex="0" icon="menu" aria-label="menu"></paper-icon-button>
                        <paper-dropdown class="dropdown core-transition core-closed" halign="right" duration="250" tabindex="-1" style="outline: none; display: none">
                            <core-menu class="menu">
                                <paper-item tabindex="0" class="toolbar-item">
                                    <a style="height: auto" class="highlight" href="#">Technologies</a>
                                </paper-item>
                                <paper-item tabindex="0" class="toolbar-item">
                                    <a style="height: auto" class="highlight" href="#">Services</a>
                                </paper-item>
                                <paper-item tabindex="0" class="toolbar-item">
                                    <a style="height: auto" class="highlight" href="#">Success Stories</a>
                                </paper-item>
                                <paper-item tabindex="0" class="toolbar-item">
                                    <a style="height: auto" href="#">About Us</a>
                                </paper-item>
                                <paper-item tabindex="0" class="toolbar-item">
                                    <a style="height: auto" href="/welcome.htm">Sign In</a>
                                </paper-item>
                            </core-menu>
                        </paper-dropdown>
                    </paper-menu-button>
                </core-toolbar>
                <div class="entry" fit layout vertical center center-justified>
                    <paper-shadow z="5" class="entry-body">
                        <div class="entry-header">
                            <h3>Sign In</h3>
                        </div>
                        <div class="entry-content">
                            <form id="loginForm" action="/login.htm" style="margin: 0" method="post">
                                <div layout horizontal center>
                                    <core-icon aria-label role="img" icon="social:person" class="icon-light icon-right-spacer"></core-icon>
                                    <paper-input-decorator layout vertical flex label="Username" error="We need a valid username" floatinglabel class="input-dark">
                                        <input is="core-input" id="username" type="text" name="username" required="" tabindex="1" placeholder="Username" aria-label="Username">
                                    </paper-input-decorator>
                                </div>
                                <div layout horizontal center>
                                    <core-icon aria-label role="img" icon="communication:vpn-key" class="icon-light icon-right-spacer"></core-icon>
                                    <paper-input-decorator layout vertical flex label="Password" error="Whats your password?" floatinglabel class="input-dark">
                                        <input is="core-input" id="password" type="password" name="password" required="" tabindex="2" placeholder="Password" aria-label="Password">
                                    </paper-input-decorator>
                                </div>
                                <div horizontal layout center>
                                    <div><a href="forgot-password.htm">Forgot your password?</a></div>
                                    <div flex></div>
                                    <paper-button id="submitBtn" role="button" tagindex="0" class="btn btn-accent" type="submit" raised>Sign In</paper-button>
                                </div>
                            </form>
                        </div>
                    </paper-shadow>
                </div>
            </core-scroll-header-panel>
        </div>
    </body>
    <script>
        var button = document.querySelector('#submitBtn');
        button.onclick = function(e) {
            document.getElementById("loginForm").submit();
        }

    </script>
</html>
