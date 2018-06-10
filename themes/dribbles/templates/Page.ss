<!DOCTYPE html>
<html lang="$ContentLocale">

<head>
  <% base_tag %>
  <title>$Title</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  $MetaTags(false)
  <!--[if lt IE 9]>
  <script src="//html5shiv.googlecode.com/svn/trunk/html5.js"></script>
  <![endif]-->
</head>
<body class="">
<% include Header %>
<section class="section">
    $Layout
</section>
<% include Footer %>
<script type="text/javascript">
    $('#navbar-burger').click(function() {
      $(this).toggleClass('is-active');
      $('#navbarMenuHeroA').toggleClass('navbar-menu is-active');
    });
</script>

</body>
</html>
