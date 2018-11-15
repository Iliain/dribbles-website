<div class="post-summary">
	<div class="columns">
		<div class="column">
            <h2 class="title is-4">
                <a href="$Link" title="<%t SilverStripe\\Blog\\Model\\Blog.ReadMoreAbout "Read more about '{title}'..." title=$Title %>">
					<% if $MenuTitle %>$MenuTitle
					<% else %>$Title<% end_if %>
                </a>
            </h2>

			<% if $Summary %>
                <p class="subtitle">$Summary</p>
			<% else %>
                <p class="subtitle is-6">$Excerpt</p>
			<% end_if %>

			<% include SilverStripe\\Blog\\EntryMeta %>
		</div>
		<div class="column">
            <figure class="image is-128x128">
                <img class="is-rounded" src="$FeaturedImage.URL">
            </figure>
		</div>
	</div>

</div>
<br>
