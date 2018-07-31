<a href="$Link">
  <div class="box" style="margin-bottom: 10px">
    <article class="media">
      <% if $GuildImage %>
        <div class="media-left">
          <figure class="image is-64x64">
            <img src="$GuildImage.URL" alt="Image">
          </figure>
        </div>
      <% end_if %>
      <div class="media-content">
        <div class="content">
          <p>
            $Content
          </p>
          </br>
        </div>
      </div>
    </article>
  </div>
</a>
