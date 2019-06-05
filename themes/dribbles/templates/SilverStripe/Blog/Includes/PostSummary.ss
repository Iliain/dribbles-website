<a href="$Link">
    <div class="box post-block" style="position: relative; background-color: #ffffff00; overflow: hidden;">
        <div class="box-background" style="
                background: linear-gradient(rgba(54, 54, 54, 0.60), rgba(54, 54, 54, 0.60)), url('$FeaturedImage.URL');
                background-position: center center;
                background-repeat: no-repeat;
                background-size: cover;"></div>
        <div class="has-text-centered" style="z-index: 3; color: whitesmoke;">
            <h2 class="title is-4" style="color: whitesmoke;">
                <% if $MenuTitle %>$MenuTitle
                <% else %>$Title<% end_if %>
            </h2>
            <% if $Summary %>
                <p class="subtitle">$Summary</p>
            <% else %>
                <p class="subtitle is-6">$Excerpt</p>
            <% end_if %>
        </div>

    </div>
</a>

