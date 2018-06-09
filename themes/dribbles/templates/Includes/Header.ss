<section class="hero is-primary">
  <div class="hero-body">
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
			<% include Navigation %>
    </div>
  </div>
</section>
