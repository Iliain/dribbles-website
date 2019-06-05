<section class="hero is-medium<% if $BackgroundColor && $BannerSource == 'None' %> $BackgroundColor<% else %> is-dark<% end_if %>">
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

    <div class="hero-body" style="position: relative">
        <div class="container has-text-centered" style="z-index: 1">
            <h1 class="title is-1">$setUppercase($MenuTitle)</h1>
            <% if $ClassName == "SilverStripe\Blog\Model\BlogPost" %>
                <% include SilverStripe\\Blog\\EntryMeta %>
            <% else %>
                <% if $SubTitle %>
                    <h2 class="subtitle">
                        $SubTitle
                    </h2>
                <% end_if %>
            <% end_if %>
        </div>
        <% if $BannerSource != 'None' %><div class="has-image"></div><% end_if %>
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
        background: linear-gradient(rgba(54, 54, 54, 0.60), rgba(54, 54, 54, 0.60)),
        url("<% if $BannerSource == 'Custom' %>$BannerImage.URL<% else_if $BannerSource == 'Parent' %>$Parent.BannerImage.URL<% else_if $BannerSource == 'Global' %>$SiteConfig.BannerImage.URL<% end_if %>");
        background-position: center center;
        background-repeat: no-repeat;
        /*background-attachment: fixed;*/
        background-size: cover;
        position:absolute;
        top:0px;
        right:0px;
        bottom:0px;
        left:0px;
        -webkit-filter: blur(3px);
        -moz-filter: blur(3px);
        -o-filter: blur(3px);
        -ms-filter: blur(3px);
        filter: blur(3px);
    }
</style>