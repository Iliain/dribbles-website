<a href="$Link">
	<div class="post-summary has-text-centered post-block" style="color: whitesmoke; padding: 20px; background: linear-gradient(rgba(54, 54, 54, 0.60), rgba(54, 54, 54, 0.60)), url('$BannerImage.URL');">
		<h2 class="title is-4" style="color: whitesmoke">
				<% if $MenuTitle %>$MenuTitle
				<% else %>$Title<% end_if %>
		</h2>
		<% if $Summary %>
			<p class="subtitle" >$Summary</p>
		<% else %>
			<p class="subtitle is-6">$Excerpt</p>
		<% end_if %>
	</div>
</a>

