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
        <div class="container">
            <nav class="level">
                <h3 class="title is-3 level-item has-text-centered">
                    Looking for something?
                </h3>
            </nav>
            <br>

            <nav class="level">
                <% loop $FeaturedSections %>

                    <div class="level-item">
                        <a href="$Link.LinkURL">
                            <div class="card">
                                <div class="card-content has-text-centered">
                                    <h3 class="title is-3">
                                        $Title
                                    </h3>
                                    <br>
                                    <p class="subtitle">
                                        $Description
                                    </p>
                                </div>
                                <footer class="card-footer">
                                    <p class="card-footer-item">
                                        <span>
                                            $Link.Title
                                        </span>
                                    </p>
                                </footer>
                            </div>
                        </a>
                    </div>

                    <% if $Top.getRowCount($Pos, 3) %>
                        </div><div class="columns">
                    <% end_if %>

                    <% if $Last %>
                        </div>
                    <% end_if %>

                <% end_loop %>
            </nav>

        </div>
    </div>
</section>


<%--<section class="section">--%>
    <%--<div class="container">--%>
        <%--$ElementalArea--%>
        <%--$Form--%>
    <%--</div>--%>
<%--</section>--%>

<style>
    .level-item:hover
    {
        transform: scale(1.03);
        -webkit-transition: all .3s ease;
        -moz-transition: all .3s ease;
        -ms-transition: all .3s ease;
        -o-transition: all .3s ease;
        transition: all .3s ease;
    }
    .card-footer:hover
    {
        background-color: hsl(0, 0%, 86%);
    }
</style>
