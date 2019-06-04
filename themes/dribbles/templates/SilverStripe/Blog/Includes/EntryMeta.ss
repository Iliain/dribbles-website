<p class="subtitle is-6">
    <% if $Credits %>
        By
        <% loop $Credits %>
            <% if not $First && not $Last %>, <% end_if %>
            <% if not $First && $Last %> <%t SilverStripe\\Blog\\Model\\Blog.AND "and" %> <% end_if %>
            <% if $URLSegment && not $Up.ProfilesDisabled %>
                <a href="$URL">$Name.XML</a>
            <% else %>
                $Name.XML
            <% end_if %>
        <% end_loop %>
        |
    <% end_if %>
    $PublishDate.Format('MMM d y')
    |
    <% if $Categories.exists %>
        <% loop $Categories %>
            <a href="$Link" title="$Title">$Title</a><% if not $Last %>, <% end_if %>
        <% end_loop %>
    <% end_if %>
</p>