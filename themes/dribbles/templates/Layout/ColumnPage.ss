<div class="container">
  <h1 class="title">$MenuTitle</h1>
  <div class="columns">
    <div class="column is-three-fifths">
      <div class="content">
        $Content
        $Form
        $CommentsForm
      </div>
    </div>
    <div class="column">
      <h2>Characters</h2>
      <% loop Character %>
        <div class="box">
          <article class="media">
            <div class="media-left">
              <figure class="image is-64x64">
                <img src="$CharacterImage.URL" alt="Image">
              </figure>
            </div>
            <div class="media-content">
              <div class="content">
                <p>
                  <strong>$Name</strong> <small>$ilvl</small>
                  <br>
                  $Class
                </p>
              </div>
            </div>
          </article>
        </div>
      <% end_loop %>
    </div>
  </div>
</div>
