<section class="hero<% if $BackgroundColor %> $BackgroundColor<% else %> is-dark<% end_if %> is-fullheight">
    <div class="hero-body">
        <div class="container">
            <h2 class="subtitle">$IntroLineOne</h2>
            <h1 class="title is-1">$IntroLineTwo</h1>
            <h2 class="subtitle is-2">$IntroLineThree</h2>
        </div>
    </div>
</section>

<section class="section">
    <div class="container">
        <div class="content has-text-centered">
            <div class="header-intro">
                <h3 class="title is-3" style="margin-bottom: 2em">$AboutSectionTitle</h3>
            </div>
        </div>
        <div class="columns">
            <div class="column">
                <h4 class="title is-4">
                    <span>$AboutTitle</span>
                </h4>
                <p>$AboutContent</p>
            </div>
            <div class="column">

                <div class="content">
                    <h4 class="is-4">$SkillsTitle</h4>
                    <p>$SkillsContent</p>
                    <br>
                    <h5 class="is-5">My programming languages</h5>
                    <ul style="list-style: none; margin-left: 0px;">
                        <li>
                            <strong class="is-uppercase">HTML</strong>
                            <progress class="progress is-small" value="90" max="100" style="margin-bottom: 0px;">90</progress>
                            <strong>90%</strong>
                        </li>
                        <li>
                            <strong class="is-uppercase">CSS</strong>
                            <progress class="progress is-small" value="50" max="100" style="margin-bottom: 0px;">50</progress>
                            <strong>50%</strong>
                        </li>
                        <li>
                            <strong class="is-uppercase">JS</strong>
                            <progress class="progress is-small" value="60" max="100" style="margin-bottom: 0px;">60</progress>
                            <strong>60%</strong>
                        </li>
                        <li>
                            <strong class="is-uppercase">PHP</strong>
                            <progress class="progress is-small" value="80" max="100" style="margin-bottom: 0px;">80</progress>
                            <strong>80%</strong>
                        </li>
                        <li>
                            <strong class="is-uppercase">SQL</strong>
                            <progress class="progress is-small" value="75" max="100" style="margin-bottom: 0px;">75</progress>
                            <strong>75%</strong>
                        </li>
                        <li>
                            <strong class="is-uppercase">PYTHON</strong>
                            <progress class="progress is-small" value="30" max="100" style="margin-bottom: 0px;">30</progress>
                            <strong>30%</strong>
                        </li>
                        <li>
                            <strong class="is-uppercase">LUA</strong>
                            <progress class="progress is-small" value="10" max="100" style="margin-bottom: 0px;">10</progress>
                            <strong>10%</strong>
                        </li>
                    </ul>
                    <br>
                    <h5 class="is-5">CMS' that I've worked with</h5>
                    <div class="tags">
                        <span class="tag">SilverStripe</span>
                        <span class="tag">WordPress</span>
                        <span class="tag">Shopify</span>
                        <span class="tag">Squarespace</span>
                    </div>
                    <br>
                    <h5 class="is-5">Development tools that I've worked with</h5>
                    <div class="tags">
                        <span class="tag">PhpStorm</span>
                        <span class="tag">Atom</span>
                        <span class="tag">GitHub</span>
                        <span class="tag">Gitlab</span>
                        <span class="tag">Bitbucket</span>
                        <span class="tag">JIRA</span>
                    </div>
                </div>

            </div>
        </div>
    </div>
</section>

<section class="hero is-light">
    <div class="hero-body">
        <div class="title-wrapper has-text-centered">
            <h2 class="title is-2">Looking for something?</h2>
            <h5 class="subtitle is-5">Check out some of my content</h5>
            <div class="divider is-centered"></div>
        </div>

        <div class="content-wrapper">
            <div class="columns" style="margin-left: 5rem; margin-right: 5rem;">
                <% loop $FeaturedSections %>
                    <div class="column">
                        <div class="card is-bordered has-text-centered" style="width: 300px; margin: 0 auto;">
                            <div class="card-title" style="padding: 25px">
                                <h4 class="title is-4">Title</h4>
                            </div>
                            <div class="card-icon">
                                <%--<img alt="AppSeed App Generator Logo." class="lazy" src="https://bulma-css-bulmaplay.appseed.us/assets/images/illustrations/icons/mouse-globe.svg" style="display: inline-block; height: 120px;">--%>
                            </div>
                            <div class="card-text" style="padding-left: 25px; padding-right: 25px;">
                                $Description
                            </div>
                            <div class="card-action" style="padding: 25px;">
                                <a href="$Link.LinkURL" class="button is-info">$Link.Title</a>
                            </div>
                        </div>
                    </div>
                <% end_loop %>
            </div>
        </div>
    </div>
    <br>
</section>
