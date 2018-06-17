<div class="container">
  <div class="columns">
    <div class="column is-two-thirds">
      <h1 class="title">$MenuTitle</h1>
      <div class="content">
        $Content
        $Form
        $CommentsForm
        <a href="https://dribbles.info/wow/orthodox/">
          <div class="box" style="margin-bottom: 10px">
            <article class="media">
              <div class="media-left">
                <figure class="image is-128x128">
                  <img src="/assets/Uploads/cb737d8b60/guild-icon.png" alt="Image">
                </figure>
              </div>
              <div class="media-content">
                <p class="title">Orthodox</p>
                <p class="subtitle">US-Frostmourne</p>
                <div class="content">
                  Orthodox is the guild I've been a part of since the release of The Nighthold in Legion.
                </div>
              </div>
            </article>
          </div>
        </a>
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
  #guildBox.hover {
    background-color: #f2d152;
  }
</style>
