<section class="hero is-light">
    <div class="hero-body">
        <div class="title-wrapper has-text-centered">
            <h2 class="title is-2">Looking for something?</h2>
            <h5 class="subtitle is-5">Check out some of my content</h5>
            <div class="divider is-centered"></div>
        </div>

        <div class="wrapper">
            <div class="columns">
                <% loop $FeaturedSections %>
                    <div class="column">
                        <div class="card is-bordered has-text-centered" style="max-width: 300px; margin: 0 auto; height: 100%">
                            <div class="card-title" style="padding: 25px">
                                <h4 class="title is-4">$Title</h4>
                            </div>
                            <div class="card-icon">
                                <%--<img alt="AppSeed App Generator Logo." class="lazy" src="https://bulma-css-bulmaplay.appseed.us/assets/images/illustrations/icons/mouse-globe.svg" style="display: inline-block; height: 120px;">--%>
                            </div>
                            <div class="card-text" style="padding-left: 25px; padding-right: 25px; padding-bottom: 10px;">
                                $Description
                            </div>
                            <% if $Link.LinkURL %>
                                <div class="card-action" style="padding: 25px;">
                                    <a href="$Link.LinkURL" class="button is-info">$Link.Title</a>
                                </div>
                            <% end_if %>
                        </div>
                    </div>
                <% end_loop %>
            </div>
        </div>
    </div>
    <br>
</section>
