<p class="subtitle is-5">
    <%t SilverStripe\\Blog\\Model\\Blog.Posted "Posted" %>
    <a href="$MonthlyArchiveLink">$PublishDate.Format('EEE, MMM d')th $PublishDate.Format('y')</a><br>
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
    <% end_if %>
</p>
