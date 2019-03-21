<nav class="panel">
    <p class="panel-heading">
        Other Articles
    </p>

	<% loop $FeaturedArticles %>
		<a class="panel-block <% if LinkOrCurrent = current %>is-active<% end_if %>" href="$Link">
			<span class="panel-icon">
			  <i class="fas fa-file" aria-hidden="true"></i>
			</span>
			$Title
		</a>
	<% end_loop %>

</nav>