<a href="$Link">
    <div class="box post-block" style="position: relative; background-color: #ffffff00; overflow: hidden;">
        <div class="box-background" style="
                background: linear-gradient(rgba(54, 54, 54, 0.30), rgba(54, 54, 54, 0.30)), url('$FeaturedImage.URL');
                background-position: center center;
                background-repeat: no-repeat;
                background-size: cover;"></div>
        <div class="has-text-centered" style="z-index: 3; color: whitesmoke;">
            <h2 class="title is-4" style="color: whitesmoke;
/*text-shadow: 1px 1px 0 #000000, 1px -1px 0 #080e15, -1px 1px 0 #080e15, -1px -1px 0 #080e15, 1px 0px 0 #4074b5, 0px 1px 0 #4074b5, -1px 0px 0 #4074b5, 0px -1px 0 #4074b5;*/
">
                <% if $MenuTitle %>$MenuTitle
                <% else %>$Title<% end_if %>
            </h2>
            <% if $Summary %>
                <p class="subtitle" style="text-shadow: 2px 2px #0a0a0a">$Summary</p>
            <% else %>
                <p class="subtitle is-6" style="text-shadow: 2px 2px #0a0a0a">$Excerpt</p>
            <% end_if %>
        </div>

    </div>
</a>

