<section class="hero <% if $ClassName == "SilverStripe\Blog\Model\BlogPost" && $BannerImage %>is-medium<% end_if %> <% if $BackgroundColor %>$BackgroundColor<% else %>is-dark<% end_if %>">
    <div class="hero-head">
        <div class="container">
            <a href="$BaseHref" rel="home"></a>
            <% if $SearchForm %>
                <span class="search-dropdown-icon">L</span>
                <div class="search-bar">
                    $SearchForm
                </div>
            <% end_if %>
        </div>
    </div>

    <div class="hero-body<% if $ClassName == "SilverStripe\Blog\Model\BlogPost" && $BannerImage %> has-image<% end_if %>">
        <div class="container has-text-centered anti-blur">
            <% if $ClassName == "SilverStripe\Blog\Model\BlogPost" %>
                <h1 class="title is-1">$setUppercase($MenuTitle)</h1>
                <% include SilverStripe\\Blog\\EntryMeta %>
            <% else %>
                <h1 class="title is-1">$MenuTitle</h1>
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

<style>
    .has-image {
        background: linear-gradient(rgba(54, 54, 54, 0.60), rgba(54, 54, 54, 0.60)), url("$BannerImage.URL");
        background-position: center center;
        background-repeat: no-repeat;
        /*background-attachment: fixed;*/
        background-size: cover;
    }
</style>