<footer class="footer" style="bottom: 0px; margin-bottom: 0px">
  <% include BreadCrumbs %>
  <div class="container">
    <div class="content has-text-centered">
      <p>
        <% with $SiteConfig %>
          $FooterText
        <% end_with %>
      </p>
      <a href="https://bulma.io">
          <img src="https://bulma.io/images/made-with-bulma--black.png" alt="Made with Bulma" width="128" height="24">
      </a>
    </div>
  </div>
</footer>
