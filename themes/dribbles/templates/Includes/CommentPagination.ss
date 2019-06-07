<% if $MoreThanOnePage %>
	<div class="comments-pagination has-text-centered">
		<p>
			<% if $PrevLink %>
				<a href="$PrevLink.ATT" class="button previous">&laquo; Previous</a>
			<% end_if %>

			<% if $Pages %><% loop $Pages %>
				<% if $CurrentBool %>
					<strong class="button is-info">$PageNum</strong>
				<% else %>
					<a href="$Link.ATT" class="button">$PageNum</a>
				<% end_if %>
			<% end_loop %><% end_if %>

			<% if $NextLink %>
				<a href="$NextLink.ATT" class="button next">Next &raquo;</a>
			<% end_if %>
		</p>
	</div>
<% end_if %>
