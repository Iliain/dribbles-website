<div class="container">
  $ElementalArea
  $Form

  <div class="columns">
    <% loop $Menu(1) %>
      <% if $Pos != 1 %>
        <% if $Top.countPages($Pos).value = 1 %>
            </div>
            <div class="columns">
        <% end_if %>
        <div class="column">
          <a href="$Link">
            <div class="box has-text-centered" style="padding-top: 25%;">
              <h2 class="title is-2">$Title</h2>
            </div>
          </a>
    		</div>
      <% end_if %>
    <% end_loop %>
  </div>

</div>
