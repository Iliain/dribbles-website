<div class="container">
	<% if $FeaturedImage %>
		<figure class="image">
			<img src="$FeaturedImage.URL">
		</figure>
	<% end_if %>
	<br>
	<div class="columns">
		<div class="column"></div>
		<div class="column is-three-fifths">
            <h1 class="title is-1">$Title</h1>
			<% include SilverStripe\\Blog\\EntryMeta %>
		</div>
		<div class="column">
			<% if $Categories.exists %>
				<% loop $Categories %>
                    <a href="$Link" title="$Title"><div class="button is-info">$Title</div></a>
				<% end_loop %>
			<% end_if %>
		</div>
	</div>
	<br>
	<div class="columns">
        <div class="column">

        </div>
		<div class="column is-three-fifths">
			$Content
			$ElementalArea
		</div>
        <div class="column">
			<% include SilverStripe\\Blog\\BlogSideBar %>
        </div>
	</div>

	$Form

</div>