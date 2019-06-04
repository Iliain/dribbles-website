<div class="container">
	<% if $FeaturedImage %>
		<figure class="image">
			<img src="$FeaturedImage.URL">
		</figure>
	<% end_if %>
    <br>
	<div class="columns">
		<div class="column is-8">
			$Content
			$ElementalArea
		</div>
        <div class="column">
			<% include SilverStripe\\Blog\\BlogSideBar %>
			<p class="title is-5">Tags</p>
            <% if $Tags.exists %>
                <% loop $Tags %>
                    <a href="$Link" title="$Title"><div class="button is-info">$Title</div></a>
                <% end_loop %>
            <% end_if %>
        </div>
	</div>

	$Form
	<%--$CommentsForm--%>

</div>