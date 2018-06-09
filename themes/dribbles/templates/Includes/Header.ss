<section class="hero is-primary">
  <div class="hero-head">
    <div class="container">
			<a href="$BaseHref" rel="home">
      <h1 class="title">
        $SiteConfig.Title
      </h1>
			<% if $SiteConfig.Tagline %>
      <h2 class="subtitle">
        $SiteConfig.Tagline
      </h2>
			<% end_if %>
			<% if $SearchForm %>
				<span class="search-dropdown-icon">L</span>
				<div class="search-bar">
					$SearchForm
				</div>
			<% end_if %>
    </div>
		<nav class="navbar">
      <div class="container">
        <div class="navbar-brand">
          <span class="navbar-burger burger" data-target="navbarMenuHeroA">
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
							<a href="$Link" class="navbar-item $LinkingMode">
								$MenuTitle.XML
							</a>
						<% end_loop %>
          </div>
        </div>
      </div>
    </nav>
  </div>
</section>
