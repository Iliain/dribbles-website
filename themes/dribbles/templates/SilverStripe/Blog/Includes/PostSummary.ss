<div class="card card-popup">
    <% if $FeaturedImage %>
        <a href="$Link">
            <div class="card-image blog-card-image">
                <figure class="image is-2by1" style="
                        background-image: url('$FeaturedImage.FocusFill(370, 180).URL');
                        background-position: center center;
                        background-repeat: no-repeat;
                        background-size: cover;"></figure>
            </div>
        </a>
    <% end_if %>
    <div class="card-content blog-card-content">
        <div class="media">
            <div class="media-content">
                <a href="$Link">
                    <p class="title is-4">
                        <% if $MenuTitle %>$MenuTitle
                        <% else %>$Title<% end_if %>
                    </p>
                </a>
                <p class="subtitle is-6">
                    <% if $Credits %>
                        By
                        <% loop $Credits %>
                            <% if not $First && not $Last %>, <% end_if %>
                            <% if not $First && $Last %> <%t SilverStripe\\Blog\\Model\\Blog.AND "and" %> <% end_if %>
                            <% if $URLSegment && not $Up.ProfilesDisabled %>
                                <a href="$URL">$Name.XML</a>
                            <% else %>
                                $Name.XML
                            <% end_if %>
                        <% end_loop %>
                    <% end_if %>
                </p>
            </div>
        </div>

        <div class="content">
            <% if $Summary %>
                <p class="subtitle">$Summary</p>
            <% else %>
                <p class="subtitle is-6">$Excerpt</p>
            <% end_if %>
            <time datetime="$PublishDate.Format('y-M-d')">$PublishDate.Format('MMMM d y')</time>
        </div>
    </div>
</div>
