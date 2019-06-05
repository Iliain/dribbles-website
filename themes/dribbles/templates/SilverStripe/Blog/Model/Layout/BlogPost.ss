<div class="container">
    <br>
	<div class="columns">
		<div class="column is-8">
			$Content
			$ElementalArea
		</div>
        <div class="column is-1"></div>
        <div class="column">
			<% include SilverStripe\\Blog\\BlogSideBar %>
            <% if $Tags.exists %>
                <p class="title is-5">Tags</p>
                <% loop $Tags %>
                    <a href="$Link" title="$Title"><div class="button is-info">$Title</div></a>
                <% end_loop %>
            <% end_if %>
        </div>
	</div>

	$Form
	<%--$CommentsForm--%>

</div>