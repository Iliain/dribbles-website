<section class="hero is-dark">
  <div class="hero-head">
		<nav class="navbar">
      <div class="container">
        <div class="navbar-brand">
          <a class="navbar-item">
            <h3>$SiteConfig.Title</h3>
            <% if $SiteConfig.Tagline %>
            <h4 class="subtitle">
              $SiteConfig.Tagline
            </h4>
            <% end_if %>
          </a>
          <span id="navbar-burger" class="navbar-burger burger" data-target="navbarMenuHeroA">
						<% loop Menu(1) %>
            	<span></span>
            	<span></span>
            	<span></span>
						<% end_loop %>
          </span>
        </div>
        <div id="navbarMenuHeroA" class="navbar-menu">
          <div class="navbar-end">
						<% loop Menu(1) %>
							<a href="$Link" class="navbar-item <% if $isCurrent %>is-active<% end_if %>">
								$Title
							</a>
						<% end_loop %>
          </div>
        </div>
      </div>
    </nav>
  </div>
	<div class="hero-body">
		<div class="container">
			<a href="$BaseHref" rel="home"></a>
      <h1 class="title">
        $Title
      </h1>
			<% if $SearchForm %>
				<span class="search-dropdown-icon">L</span>
				<div class="search-bar">
					$SearchForm
				</div>
			<% end_if %>
    </div>
	</div>
  <div class="hero-foot">
    <nav class="tabs is-boxed is-fullwidth">
      <div class="container">
        <ul>
          <% if Menu(2) %>
            <% loop Menu(2) %>
              <li class="<% if $isCurrent %>is-active<% end_if %>"><a href="$Link">$Title</a></li>
            <% end_loop %>
          <% end_if %>
        </ul>
      </div>
    </nav>
  </div>
</section>
