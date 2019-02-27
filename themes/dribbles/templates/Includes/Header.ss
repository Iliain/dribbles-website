<section class="hero <% if $BackgroundColor %>$BackgroundColor<% else %>is-dark<% end_if %>">
    <div class="hero-body">
        <div class="container">
            <a href="$BaseHref" rel="home"></a>
            <% if $SearchForm %>
                <span class="search-dropdown-icon">L</span>
                <div class="search-bar">
                    $SearchForm
                </div>
            <% end_if %>

            <% if $ClassName == "SilverStripe\Blog\Model\Blog" %>
                <h1 class="title">$Parent.MenuTitle</h1>
                <% if $SubTitle %>
                    <h2 class="subtitle">
                        $SubTitle
                    </h2>
                <% end_if %>
            <% else %>
                <h1 class="title">$MenuTitle</h1>
                <% if $Parent.SubTitle %>
                    <h2 class="subtitle">
                        $Parent.SubTitle
                    </h2>
                <% end_if %>
            <% end_if %>

        </div>
    </div>
    <div class="hero-foot">
        <nav class="tabs is-boxed is-fullwidth">
            <div class="container">
                <ul>
                    <% if $Menu(2) %>
                        <% loop $Menu(2) %>
                            <li class="<% if $isCurrent %>is-active<% end_if %>"><a href="$Link">$Title</a></li>
                        <% end_loop %>
                    <% end_if %>
                </ul>
            </div>
        </nav>
    </div>
</section>