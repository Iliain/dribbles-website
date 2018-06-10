<div class="container">
  <div class="columns">
    <div class="column is-two-thirds">
      <h1 class="title">$MenuTitle</h1>
      <div class="content">
        $Content
        $Form
        $CommentsForm
      </div>
      <div class="tile is-parent">
      <article class="tile is-child notification is-warning">
        <p class="title">Orthodox</p>
        <p class="subtitle">US-Frostmourne</p>
        <div class="content">
          Orthodox is the guild I've been a part of since the release of The Nighthold in Legion.
        </div>
      </article>
    </div>
    </div>
    <div class="column">
      <h1 class="title">My Characters</h1>
      <% loop Character %>
        <a href="$Link">
          <div class="box" style="margin-bottom: 10px">
            <article class="media">
              <div class="media-left">
                <figure class="image is-64x64">
                  <img src="$CharacterImage.URL" alt="Image">
                </figure>
              </div>
              <div class="media-content">
                <div class="content">
                  <p>
                    <strong>$Name</strong> <small>ilvl: $ilvl</small>
                    <br>
                    $Class
                    <br>
                  </p>
                </div>
              </div>
            </article>
          </div>
        </a>
      <% end_loop %>
    </div>
  </div>
</div>
<style>
  .box:hover {
    background-color: #eaeaea;
  }
</style>
