<!DOCTYPE html>
<html lang="$ContentLocale">

<head>
        <% base_tag %>
        <title><% if $MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> &raquo; $SiteConfig.T$
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.$
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        $MetaTags(false)
        <!--[if lt IE 9]>
        <script src="//html5shiv.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
        <% require themedCSS('reset') %>
        <% require themedCSS('typography') %>
        <% require themedCSS('form') %>
        <% require themedCSS('layout') %>
        <link rel="shortcut icon" href="themes/simple/images/favicon.ico" />
</head>
<body class="$ClassName.ShortName<% if not $Menu(2) %> no-sidebar<% end_if %>" <% if $i18nScri$
<% include Header %>
<div class="main" role="main">
        <div class="inner typography line">
                $Layout
        </div>
</div>
<% include Footer %>

<% require javascript('//code.jquery.com/jquery-1.7.2.min.js') %>
<% require themedJavascript('script') %>

</body>
</html>
