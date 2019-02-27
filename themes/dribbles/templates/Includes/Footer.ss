<footer class="footer" style="bottom: 0px; margin-bottom: 0px">
  <% include BreadCrumbs %>
  <div class="container">
    <div class="content has-text-centered">
      <p>
        <% with $SiteConfig %>
          $FooterText
        <% end_with %>
      </p>
    </div>
  </div>
</footer>
