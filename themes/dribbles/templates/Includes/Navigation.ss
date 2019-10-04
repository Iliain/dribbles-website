<nav class="navbar is-fixed-top has-shadow" role="navigation" aria-label="main navigation">
    <div class="container">
        <div class="navbar-brand">
            <a class="navbar-item" href="$BaseHref">
                <h1><strong>[ DRIBBLES.INFO ]</strong></h1>
            </a>
            <a role="button" class="navbar-burger burger" aria-label="menu" aria-expanded="false" data-target="navbarBasicExample">
                <span aria-hidden="true"></span>
                <span aria-hidden="true"></span>
                <span aria-hidden="true"></span>
            </a>
        </div>

        <div class="navbar-menu">
            <div class="navbar-start"></div>

            <div class="navbar-end">
                <% loop $Menu(1) %>
                    <% if $Children %>
                        <div class="navbar-item has-dropdown is-hoverable">
                            <a class="navbar-link is-arrowless" href="$Link">
                                $MenuTitle
                            </a>

                            <div class="navbar-dropdown">
                                <% loop $Children %>
                                    <a class="navbar-item" href="$Link">
                                        $MenuTitle
                                    </a>
                                <% end_loop %>
                            </div>
                        </div>
                    <% else %>
                        <a class="navbar-item" href="$Link">
                            $MenuTitle
                        </a>
                    <% end_if %>

                <% end_loop %>
                <div class="navbar-item">
                    <div class="buttons">
                        <a class="button is-primary is-rounded is-outlined" href="/admin">
                            Log in
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</nav>