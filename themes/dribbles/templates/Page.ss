<!DOCTYPE html>
<html lang="$ContentLocale">

<head>
  <% base_tag %>
  <title>$Title</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <link rel="icon" type="image/png" href="$ThemeDir/assets/favicon-32x32.png" sizes="32x32" />
  <link rel="icon" type="image/png" href="$ThemeDir/assets/favicon-16x16.png" sizes="16x16" />
  $MetaTags(false)
  <!--[if lt IE 9]>
  <script src="//html5shiv.googlecode.com/svn/trunk/html5.js"></script>
  <![endif]-->
</head>
<body class="has-navbar-fixed-top">
  <% include Navigation %>
  $Layout
  <% include Footer %>
  <script type="text/javascript">
      $(document).ready(function() {
          // Check for click events on the navbar burger icon
          $(".navbar-burger").click(function() {
              // Toggle the "is-active" class on both the "navbar-burger" and the "navbar-menu"
              $(".navbar-burger").toggleClass("is-active");
              $(".navbar-menu").toggleClass("is-active");
          });
      });
  </script>
</body>
</html>
