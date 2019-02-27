<% if $Pages %>
    <% loop $Pages %>
        <li<% if $isCurrent %> class="is-active"<% end_if %>><a href="$Link" <% if $isCurrent %> aria-current="page"<% end_if %>>$MenuTitle.XML</a></li>
    <% end_loop %>
<% end_if %>