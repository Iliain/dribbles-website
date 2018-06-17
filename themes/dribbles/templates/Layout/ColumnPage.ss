<div class="container">
  <div class="columns">
    <div class="column is-two-thirds">
      <h1 class="title">$MenuTitle</h1>
      <div class="content">
        $Content
        $Form
        $CommentsForm
        <a href="https://dribbles.info/wow/my-guild/">
          <div id="guildBox" class="box" style="background-color:#ffdd57">
            <article class="media" style="">
              <div class="media-left">
                <figure class="image is-96x96">
                  <img src="https://cdn.discordapp.com/icons/364620729557188610/2aa8cb4ef2151e263abc3c55b41984bd.png" alt="Image">
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
                  $CharacterImage
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
