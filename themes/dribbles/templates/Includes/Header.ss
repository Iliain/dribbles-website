<section class="hero is-info">
  <div class="hero-head">
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
	</div>
  <div class="hero-foot">
    <nav class="tabs">
      <div class="container">
        <ul>
          <% if Menu(2) %>
            <% loop Menu(2) %>
              <li><a href="$Link" <% if $isCurrent %>class="is-active"<% end_if %>>$Title</a></li>
            <% end_loop %>
          <% end_if %>
        </ul>
      </div>
    </nav>
  </div>
</section>
