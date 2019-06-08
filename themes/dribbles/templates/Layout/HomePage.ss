<section class="hero<% if $BackgroundColor %> $BackgroundColor<% else %> is-dark<% end_if %> is-fullheight">
    <div class="hero-body">
        <div class="container">
            <nav class="level">
                <h1 class="title is-1 level-item has-text-centered">
                    $SubTitle
                </h1>
            </nav>
        </div>
    </div>
</section>

<section class="hero is-light">
    <div class="hero-body">
        <div class="container">
            <nav class="level">
                <h2 class="title is-3 level-item has-text-centered">
                    Looking for something?
                </h2>
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


<section class="section">
    <div class="container">
        $ElementalArea
        $Form
    </div>
</section>

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
