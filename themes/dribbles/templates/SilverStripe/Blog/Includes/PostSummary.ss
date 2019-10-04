<div class="card card-popup" style="height: 100%;">
      <a href="$Link">
          <div class="card-image blog-card-image">
              <figure class="image is-2by1" style="
                      background-image: url('<% if $FeaturedImage %>$FeaturedImage.FocusFill(370, 180).URL<% else %>$ThemeDir/assets/placeholder-img.png<% end_if %>');
                      background-position: center center;
                      background-repeat: no-repeat;
                      background-size: cover;"></figure>
          </div>
      </a>
    <div class="card-content blog-card-content">
        <div class="media">
            <div class="media-content">
                <time datetime="$PublishDate.Format('y-M-d')">$PublishDate.Format('MMMM d y')</time>
                <a href="$Link">
                    <p class="title is-4">
                        <% if $MenuTitle %>$MenuTitle
                        <% else %>$Title<% end_if %>
                    </p>
                </a>
            </div>
        </div>

        <div class="content">
            <% if $Summary %>
                <p class="subtitle">$Summary</p>
            <% else %>
                <p class="subtitle is-6">$Excerpt</p>
            <% end_if %>

        </div>
    </div>
</div>
